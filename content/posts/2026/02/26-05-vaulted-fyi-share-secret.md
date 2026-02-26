---
title: Vaulted Share Secret
date: 2026-02-26 05:43:49 +00:00
tags:
  - vaulted-fyi
  - GitHub Actions
draft: false
repo: https://github.com/vaulted-fyi/share-secret
marketplace: https://github.com/marketplace/actions/vaulted-share-secret
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/vaulted-fyi/share-secret** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaulted-share-secret) to find the latest changes.

## Action Summary

The Vaulted Share Secret GitHub Action enables secure sharing and retrieval of sensitive information within workflows by creating end-to-end encrypted, self-destructing secret links. It automates the encryption, sharing, and controlled access to secrets, ensuring zero-knowledge encryption where plaintext data never touches the server. Key capabilities include configurable expiration, limited views, passphrase protection, and secure masking of secrets in logs to enhance security and prevent leaks.

## Release notes

Initial release of the Vaulted Share Secret GitHub Action.

**Create** an E2E encrypted, self-destructing secret link:
```yaml
- uses: maximn/vaulted-share-secret@v1
  with:
    secret: ${{ secrets.API_KEY }}
```

**Get** (retrieve and decrypt) a secret:
```yaml
- uses: maximn/vaulted-share-secret/get@v1
  with:
    url: ${{ secrets.VAULTED_URL }}
```

Zero-knowledge encryption — your secret never touches the server in plaintext.
