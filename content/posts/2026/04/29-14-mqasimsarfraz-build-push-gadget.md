---
title: Build and Push Gadget
date: 2026-04-29 14:41:35 +00:00
tags:
  - mqasimsarfraz
  - GitHub Actions
draft: false
repo: https://github.com/mqasimsarfraz/build-push-gadget
marketplace: https://github.com/marketplace/actions/build-and-push-gadget
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mqasimsarfraz/build-push-gadget** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-and-push-gadget) to find the latest changes.

## Action Summary

The **build-push-gadget** GitHub Action automates the process of building and optionally pushing OCI images for custom Inspektor Gadget tools. It simplifies gadget image creation by leveraging the `ig` CLI and supports advanced workflows, such as signing images with Cosign for security and verification. This action addresses tasks related to gadget image lifecycle management, streamlining development and deployment processes for Inspektor Gadget-based tools.

## What's Changed

- fix: use legacy .sig format for cosign signing (caaba04)
- fix: sign image directly by tag like upstream IG (d6c7045)
- Fix: use sudo -E for push and --verify-image=false for signing (77e17f2)
- Pin cosign-installer to v4.1.1 (bcb860d)
- Add cosign signing to test workflow (9bb3622)
- Add optional cosign signing after push (22db4a8)
- Use setup-ig@v0, checkout@v6, docker/login-action@v4 (d390a15)
- Update README examples to use v0 tag (133b4c6)
- Fix: copy Docker credentials to root for ig image push (6b5fe05)
- Add hello-world example gadget and test workflow (d76668b)
