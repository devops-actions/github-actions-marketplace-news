---
title: Project Vault Action
date: 2026-07-24 06:20:36 +00:00
tags:
  - nestormata
  - GitHub Actions
draft: false
repo: https://github.com/nestormata/vault-action
marketplace: https://github.com/marketplace/actions/project-vault-action
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action retrieves secrets from Project Vault and exports them as masked environment variables in a workflow. It automates the retrieval of secrets scoped to specific projects using machine-user API keys, ensuring that each `secrets` input refers to the same project, and provides options for handling errors gracefully. The action does not implement its own HTTP client or token exchange logic.
---


Version updated for **https://github.com/nestormata/vault-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/project-vault-action) to find the latest changes.

## Action Summary

This GitHub Action retrieves secrets from Project Vault and exports them as masked environment variables in a workflow. It automates the retrieval of secrets scoped to specific projects using machine-user API keys, ensuring that each `secrets` input refers to the same project, and provides options for handling errors gracefully. The action does not implement its own HTTP client or token exchange logic.

## What's Changed

Retrieve secrets from [Project Vault](https://github.com/nestormata/project-vault) and export them as masked environment variables in your GitHub Actions workflow — no custom HTTP calls, no plaintext secrets in logs.

### Usage

```yaml
- uses: nestormata/vault-action@v1
  with:
    vault-url: https://vault.example.com
    api-key: ${{ secrets.VAULT_API_KEY }}
    secrets: |
      <PROJECT_ID>/<CREDENTIAL_NAME> as <ENV_VAR_NAME>
```

See the [README](https://github.com/nestormata/vault-action#readme) for full setup (machine-user + API key creation), multi-secret syntax, `continue-on-error` semantics, and SHA-pinning guidance.

### Highlights

- Machine-user API key auth, scoped to one project per step
- Automatic masking of every retrieved value
- 10-second network timeout per credential, so an unreachable vault fails fast instead of stalling your job
- `continue-on-error` input to soften only "vault unreachable" failures — application-level errors (bad key, missing credential, wrong scope) always fail the step
- Runs on Node 24
