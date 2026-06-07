---
title: Bumper - Terraform Plan Safety Gate
date: 2026-06-07 14:58:19 +00:00
tags:
  - gnana997
  - GitHub Actions
draft: false
repo: https://github.com/gnana997/bumper
marketplace: https://github.com/marketplace/actions/bumper-terraform-plan-safety-gate
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/gnana997/bumper** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bumper-terraform-plan-safety-gate) to find the latest changes.

## What's Changed

## Changelog
* 5cbc7ccbb8e9042a57f89dc8a1f4818c3226915f: feat: add end-to-end testing scripts and documentation for guardrail hooks (@gnana997)

## Verify this release
```sh
cosign verify-blob \
  --certificate checksums.txt.pem \
  --signature checksums.txt.sig \
  --certificate-identity-regexp 'https://github.com/gnana997/bumper/.*' \
  --certificate-oidc-issuer 'https://token.actions.githubusercontent.com' \
  checksums.txt
sha256sum -c checksums.txt --ignore-missing
```


