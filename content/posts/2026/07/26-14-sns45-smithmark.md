---
title: smithmark Verify
date: 2026-07-26 14:37:18 +00:00
tags:
  - sns45
  - GitHub Actions
draft: false
repo: https://github.com/sns45/smithmark
marketplace: https://github.com/marketplace/actions/smithmark-verify
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  smithmark is an attestation framework that generates, signs, publishes, and verifies attestations for agent artifacts, specifically MCP servers and skills. It solves the problem of ensuring provenance and capability declarations for these tools by producing signed, schema validated manifests and verifying their signatures and digests using Sigstore and Rekor.
---


Version updated for **https://github.com/sns45/smithmark** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smithmark-verify) to find the latest changes.

## Action Summary

smithmark is an attestation framework that generates, signs, publishes, and verifies attestations for agent artifacts, specifically MCP servers and skills. It solves the problem of ensuring provenance and capability declarations for these tools by producing signed, schema validated manifests and verifying their signatures and digests using Sigstore and Rekor.

## What's Changed

Action metadata moved to the repository root so smithmark can be published to the GitHub Actions Marketplace.

Usage changes from `sns45/smithmark/action@<tag>` to `sns45/smithmark@<tag>`. No CLI behavior changes; keyless Sigstore signing and verification are unchanged from v0.2.0. Documentation corrected throughout: the pre-release and keyless-deferral wording no longer applied.
