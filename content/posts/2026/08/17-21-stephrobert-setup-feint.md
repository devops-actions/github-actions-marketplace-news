---
title: Set up Feint
date: 2026-08-17 21:42:13 +00:00
tags:
  - stephrobert
  - GitHub Actions
draft: false
repo: https://github.com/stephrobert/setup-feint
marketplace: https://github.com/marketplace/actions/set-up-feint
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action provides a local emulator for Terraform, OpenTofu, or Scaleway, Outscale, and Exoscale CLIs using the Feint project. It automates the setup of an environment without needing cloud credentials or account management. The action downloads a pre-compiled binary, verifies its checksum, starts the emulator, and exports necessary provider configurations for seamless integration with Terraform commands. Users can specify the version and desired provider to run their infrastructure tests locally.
---


Version updated for **https://github.com/stephrobert/setup-feint** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-feint) to find the latest changes.

## Action Summary

This GitHub Action provides a local emulator for Terraform, OpenTofu, or Scaleway, Outscale, and Exoscale CLIs using the Feint project. It automates the setup of an environment without needing cloud credentials or account management. The action downloads a pre-compiled binary, verifies its checksum, starts the emulator, and exports necessary provider configurations for seamless integration with Terraform commands. Users can specify the version and desired provider to run their infrastructure tests locally.

## What's Changed

Run Terraform, OpenTofu or the official Scaleway, Outscale and Exoscale CLIs in GitHub Actions against a local emulator — **no cloud account, no credentials, nothing billed.**

```yaml
- uses: stephrobert/setup-feint@v1
  with:
    version: 0.9.0
    provider: scaleway

- run: terraform apply -auto-approve
```

That job has no secret, because there is no account to authenticate to. The provider that applies is the real one from the registry; [Feint](https://github.com/stephrobert/feint) emulates the API it talks to.

## What it does

1. Downloads the released binary for the runner's platform.
2. **Verifies its checksum before running it** — the bytes are checked against the release's `checksums.txt`, not trusted because they arrived over HTTPS.
3. Starts the emulator through `feint start`, which detaches and waits until it answers rather than sleeping and hoping.
4. With `provider:`, exports the environment that client needs, so the next step needs no configuration at all.

## What keeps it honest

The checksum verification is the part of this action that must never rot, so it is exercised rather than asserted: this repository's CI corrupts the downloaded binary while leaving `checksums.txt` intact, and requires the action **as shipped** to refuse it. If the check ever stops checking, that job goes red.

The body of the action lives in the [Feint repository](https://github.com/stephrobert/feint/blob/main/.github/actions/setup-feint/action.yml) and is mirrored here, so there is one source and one CI. A gate there reads what this repository serves at `v1` and fails when the two differ — the copy cannot drift in silence.

## What it does not do

The action starts the control plane. **Real machines** behind `--vm` need Incus on the host; what each mode proves is written row by row in [docs/confidence.md](https://github.com/stephrobert/feint/blob/main/docs/confidence.md).

Apache-2.0.
