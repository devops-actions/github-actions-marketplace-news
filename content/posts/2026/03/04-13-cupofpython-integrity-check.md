---
title: Verify Base Image Signatures
date: 2026-03-04 13:33:18 +00:00
tags:
  - cupofpython
  - GitHub Actions
draft: false
repo: https://github.com/cupofpython/integrity-check
marketplace: https://github.com/marketplace/actions/verify-base-image-signatures
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cupofpython/integrity-check** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-base-image-signatures) to find the latest changes.

## Action Summary

The "Integrity Check" GitHub Action automates the validation of Dockerfile base image integrity by verifying the presence of cryptographic signatures from trusted signers, as defined in a policy file. It ensures the authenticity of base images used in build pipelines, enhancing security and compliance by detecting untrusted or unsigned images.

## Release notes

Verify that a base image in a Dockerfile was signed by a trusted signer by Cosign. Fail the job if the base images fail to comply with policy.
