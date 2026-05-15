---
title: Salesforce Authentication
date: 2026-05-15 14:58:27 +00:00
tags:
  - sf-action
  - GitHub Actions
draft: false
repo: https://github.com/sf-action/sf-auth
marketplace: https://github.com/marketplace/actions/salesforce-authentication
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sf-action/sf-auth** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/salesforce-authentication) to find the latest changes.

## Action Summary

The **sf-auth-action** is a GitHub Action designed to automate the installation of the Salesforce CLI and authentication to Salesforce orgs in CI/CD pipelines. It supports secure authentication via JWT (recommended) or Salesforce Auth URL, eliminating the need for preinstalled CLI dependencies and ensuring sensitive credentials are handled safely. Key capabilities include built-in caching for faster workflows, compatibility with multiple runners, and optional dynamic retrieval of org metadata.

## What's Changed

# sf-auth-action

A GitHub composite action that installs the Salesforce CLI and authenticates to a Salesforce org. Supports two authentication methods:

- **JWT** (default, recommended) — uses a Connected App or External Client App and RSA private key. No refresh token is stored, making it the most secure option for CI/CD.
- **SFDX Auth URL** — uses a Salesforce auth URL containing a refresh token. Simpler to set up but requires careful secret management.

---

## Why use this action?

- Supports both JWT and auth URL authentication  
- No dependency on preinstalled Salesforce CLI  
- Built-in caching for faster workflows  
- Secure handling of credentials (no secrets written to logs or persisted)  
- Optional org metadata retrieval for dynamic workflows  

---

## Requirements

This action requires:

- A runner with Node.js available (standard on GitHub-hosted runners)  
- `jq` installed (used to parse JSON output from the Salesforce CLI)

`jq` is preinstalled on GitHub-hosted Ubuntu runners. If you are using a self-hosted runner, ensure `jq` is installed before running this action.

---

## Supported runners

- Ubuntu (recommended)  
- macOS  
- Windows (best-effort support)  

Ubuntu runners are fully supported and recommended for CI/CD pipelines.

---

## Method 1 — JWT (recommended)

### Prerequisites

#### 1. Generate an RSA key pair

```bash
openssl genrsa -out server.key 2048
openssl req -new -x509 -key server.key -out server.crt -days 365
```

- `server.key` — your private key. Keep this secret and never commit it.
- `server.crt` — the certificate you will upload to Salesforce.

#### 2. Create a Connected App or External Client App in Salesforce

Whether using a Connected App or an External Client App, configure it with:

1. Enable **OAuth Settings**.
2. Check **Enable Digital Signatures** and upload `server.crt`.
3. Add the OAuth scopes **Manage user data via APIs (api)** and **Perform requests at any time (refresh_token, offline_access)** (add others as needed).
4. Save the app and copy the **Consumer Key**.
5. Set **IP Relaxation** to *Relax IP restrictions*, or ensure your runner IPs are in the org's trusted IP ranges.

#### 3. Pre-authorize the user

- Open the app's management settings and find the **Permitted Users** policy.
- Select *Admin approved users are pre-authorized*.
- Assign the profile or permission set of the user you will authenticate with.

#### 4. Add secrets to your GitHub repository

Go to **Settings > Secrets and variables > Actions** and add:

| Secret name | Value |
|---|---|
| `SF_CONSUMER_KEY` | Consumer Key from your Connected App or External Client App |
| `SF_JWT_PRIVATE_KEY` | Full contents of `server.key` (PEM text, including header/footer lines) |
| `SF_USERNAME` | Salesforce username (e.g. `deploy@mycompany.com`) |
| `SF_INSTANCE_URL` | Your org URL — only needed for production or custom domains (see `instance-url` input) |

### Usage

Default authentication method is `jwt`. You only need to set `auth-method` when using `auth-url`.

Sandbox (uses `https://test.salesforce.com` by default):

```yaml
- id: sf-auth
  uses: sf-action/sf-auth@v1
  with:
    consumer-key: ${{ secrets.SF_CONSUMER_KEY }}
    jwt-private-key: ${{ secrets.SF_JWT_PRIVATE_KEY }}
    username: ${{ secrets.SF_USERNAME }}
```

Production or custom domain:

```yaml
- id: sf-auth
  uses: sf-action/sf-auth@v1
  with:
    consumer-key: ${{ secrets.SF_CONSUMER_KEY }}
    jwt-private-key: ${{ secrets.SF_JWT_PRIVATE_KEY }}
    username: ${{ secrets.SF_USERNAME }}
    instance-url: ${{ secrets.SF_INSTANCE_URL }}
```

---

## Method 2 — SFDX Auth URL

### Prerequisites

Generate the auth URL locally from an org you have already authenticated via web flow:

```bash
sf org display --target-org <your-org-alias> --verbose --json | jq -r '.result.sfdxAuthUrl'
```

The URL has the format `force://clientId:clientSecret:refreshToken@instanceUrl`. Store it as a GitHub secret — it grants full access to the org.

> **Note:** JWT-authenticated orgs do not produce an `sfdxAuthUrl`. You need an org authenticated via web/OAuth flow (e.g. `sf org login web`) to generate one.

### Usage

```yaml
- id: sf-auth
  uses: sf-action/sf-auth@v1
  with:
    auth-method: auth-url
    sfdx-auth-url: ${{ secrets.SF_SFDX_AUTH_URL }}
```

---

## Installing plugins

Pass a comma-separated list of SF CLI plugins to install after authentication:

```yaml
- id: sf-auth
  uses: sf-action/sf-auth@v1
  with:
    consumer-key: ${{ secrets.SF_CONSUMER_KEY }}
    jwt-private-key: ${{ secrets.SF_JWT_PRIVATE_KEY }}
    username: ${{ secrets.SF_USERNAME }}
    plugins: 'sfdx-git-delta,@salesforce/sfdx-scanner'
```

Signed plugins install silently. Installation of unsigned plugins is automatically confirmed.

---

## Inputs

| Input | Required | Default | Description |
|---|---|---|---|
| `auth-method` | No | `jwt` | Authentication method — `jwt` or `auth-url` |
| `consumer-key` | JWT only | — | Consumer key (client ID) from your Connected App or External Client App |
| `jwt-private-key` | JWT only | — | RSA private key contents (PEM format) |
| `username` | JWT only | — | Salesforce username to authenticate as |
| `instance-url` | No | `https://test.salesforce.com` | Org URL — use `https://login.salesforce.com` for production, or a custom My Domain URL |
| `sfdx-auth-url` | auth-url only | — | Salesforce auth URL (`force://clientId:clientSecret:refreshToken@instanceUrl`) |
| `sf-cli-version` | No | `latest` | Salesforce CLI version to install (e.g. `2.50.6`) |
| `org-alias` | No | `myorg` | Alias to assign to the authenticated org |
| `get-org-info` | No | `false` | Set to `true` to retrieve org details (adds one SOQL query) |
| `plugins` | No | — | Comma-separated list of SF CLI plugins to install (e.g. `sfdx-git-delta,@salesforce/sfdx-scanner`) |
| `debug` | No | `false` | Set to `true` to print all command output — useful for troubleshooting authentication issues |

## Outputs

| Output | Description |
|---|---|
| `org-alias` | Alias assigned to the authenticated org |
| `org-id` | Salesforce org ID (requires `get-org-info: true`) |
| `type` | Org type: `Production`, `Sandbox`, or `Scratch` (requires `get-org-info: true`) |
| `my-domain-url` | Resolved My Domain URL (requires `get-org-info: true`) |
| `release-version` | Salesforce internal release number e.g. `260` (requires `get-org-info: true`) |

---

## Full example

```yaml
name: Deploy to Salesforce

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - id: sf-auth
        uses: sf-action/sf-auth@v1
        with:
          consumer-key: ${{ secrets.SF_CONSUMER_KEY }}
          jwt-private-key: ${{ secrets.SF_JWT_PRIVATE_KEY }}
          username: ${{ secrets.SF_USERNAME }}
          instance-url: ${{ secrets.SF_INSTANCE_URL }}
          sf-cli-version: 2.50.6        # omit to always use latest
          org-alias: my-deploy-org      # omit to use default 'myorg'
          get-org-info: 'true'

      - name: Print org info
        run: |
          echo "Org ID: ${{ steps.sf-auth.outputs.org-id }}"
          echo "Type: ${{ steps.sf-auth.outputs.type }}"
          echo "Release: ${{ steps.sf-auth.outputs.release-version }}"

      - name: Deploy metadata
        run: sf project deploy start --source-dir force-app --target-org ${{ steps.sf-auth.outputs.org-alias }}
```

---

## Security notes

- The private key is written to `$RUNNER_TEMP/server.key` with `chmod 600` and deleted after authentication, even if the step fails (`if: always()`).
- Both the private key and the auth URL are masked via `::add-mask::` so they are redacted from all log output.
- The `sfdx-auth-url` is passed via environment variable and piped via stdin — it never touches the filesystem.
- The `instance-url` is validated at runtime to start with `https://` to prevent accidental plaintext connections.
- Store all secrets in GitHub Actions secrets — never hard-code them in workflow files.

## CLI caching

The action caches the Salesforce CLI keyed by OS and version. When using `latest`, the cache refreshes weekly so you always get a recent release without a full reinstall on every run. Caching works on Linux, macOS, and Windows.

## Versioning

- Use `@v1` to get the latest stable version with backward-compatible updates  
- Use a specific version (e.g. `@v1.0.0`) for fully reproducible builds  

