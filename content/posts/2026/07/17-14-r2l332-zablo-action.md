---
title: Zablo — zero-knowledge secrets
date: 2026-07-17 14:53:55 +00:00
tags:
  - r2l332
  - GitHub Actions
draft: false
repo: https://github.com/r2l332/zablo-action
marketplace: https://github.com/marketplace/actions/zablo-zero-knowledge-secrets
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action fetches zero-knowledge secrets from a Zablo server and injects them into your GitHub Actions workflow using an OIDC token, without storing any sensitive information in public repositories. It supports both static API keys and OIDC federation methods to access the secrets securely. The action is designed for use with workflows that require deployment or configuration tasks that involve sensitive data like database URLs, Stripe keys, and Redis passwords.
---


Version updated for **https://github.com/r2l332/zablo-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zablo-zero-knowledge-secrets) to find the latest changes.

## Action Summary

This GitHub Action fetches zero-knowledge secrets from a Zablo server and injects them into your GitHub Actions workflow using an OIDC token, without storing any sensitive information in public repositories. It supports both static API keys and OIDC federation methods to access the secrets securely. The action is designed for use with workflows that require deployment or configuration tasks that involve sensitive data like database URLs, Stripe keys, and Redis passwords.

## What's Changed

First public release of the **Zablo GitHub Action** — inject zero-knowledge secrets into any workflow without storing a long-lived API key in `Settings → Secrets`.

## ✨ What you get

- **OIDC federation by default** — the runner mints a GitHub ID token, Zablo exchanges it for a short-lived `vks_…` session. No long-lived credentials in GitHub Secrets. Only the client-side passphrase needs to be stored.
- **Static API key fallback** for environments without OIDC.
- **Install-only mode** — omit `secrets:` to just install the CLI and drive it yourself.
- **Automatic log masking** — every fetched value is passed to `::add-mask::` line-by-line, so multi-line values like PEM keys stay redacted in the log.
- **Multi-line-safe env export** — random EOF markers written to `$GITHUB_ENV` so certificates, JSON blobs, and any value with newlines round-trips cleanly.
- **Composite action** — pure bash + `pipx`. No Docker pull, no Node runtime. Cold start is roughly a second.
- **Pinnable CLI version** — default is `latest`; pin with `version: 0.4.0` for reproducible builds.

## 🚀 Quickstart

    permissions:
      id-token: write
      contents: read

    jobs:
      deploy:
        runs-on: ubuntu-latest
        steps:
          - uses: actions/checkout@v4
          - uses: r2l332/zablo-action@v1
            with:
              api-url: https://zablo.example.com
              passphrase: ${{ secrets.ZABLO_PASSPHRASE }}
              secrets: |
                DATABASE_URL=prod/db/url
                STRIPE_KEY=prod/stripe/live
                REDIS_PASSWORD=prod/redis/pw
          - run: ./deploy.sh

The four secrets are now available as `$DATABASE_URL` etc. — decrypted on the runner, masked in the log, gone when the job ends.

## 📦 Inputs

| Name | Required | Default | Description |
|------|----------|---------|-------------|
| `api-url` | ✅ | — | Zablo server URL |
| `passphrase` | ✅ if `secrets` set | — | Client-side encryption passphrase (from `secrets.ZABLO_PASSPHRASE`) |
| `secrets` | | — | Multiline `NAME=path` list |
| `api-key` | | — | Static `vk_…` key (if unset, action uses OIDC) |
| `audience` | | `zablo.io` | OIDC audience |
| `version` | | `latest` | zablo-cli version to install |

## 🧪 What was tested

- Install-only + version-pin flows verified via [`.github/workflows/test.yml`](.github/workflows/test.yml) on Ubuntu latest
- End-to-end fetch + `$GITHUB_ENV` injection verified against a local Zablo server
- Line-by-line masking verified against a multi-line PEM value

## 🔒 Security

- Passphrase never sent to the Zablo server (AES-256-GCM key derived locally on the runner, Argon2id KDF).
- Session token is short-lived (~1 hour by default) — replay window is bounded.
- Pin to a SHA in production: `uses: r2l332/zablo-action@abc1234`

## 📚 Docs

- CLI reference: https://pypi.org/project/zablo-cli/
- Zablo platform + `USAGE.md`: https://github.com/r2l332/zablo
- Full example workflow: [`examples/deploy.yml`](examples/deploy.yml)

## Requires

- A running Zablo server (OSS, self-hosted; deploy with the included Bicep / azd — see `docs/DEPLOY.md`)
- Python 3 on the runner (present on all `ubuntu-*` and `macos-*` GitHub-hosted runners by default)
