---
title: sealed-build
date: 2026-07-24 19:23:20 +00:00
tags:
  - EngineerSamet
  - GitHub Actions
draft: false
repo: https://github.com/EngineerSamet/sealed-build
marketplace: https://github.com/marketplace/actions/sealed-build
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action builds a container image and produces an SBOM, refuses to push it if it fails a vulnerability threshold, and signs the result with keyless attestation using pinned commit hashes, ensuring security by maintaining immutable evidence. It addresses trust issues in the supply chain by preventing malicious pushes through mutable tags.
---


Version updated for **https://github.com/EngineerSamet/sealed-build** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sealed-build) to find the latest changes.

## Action Summary

This GitHub Action builds a container image and produces an SBOM, refuses to push it if it fails a vulnerability threshold, and signs the result with keyless attestation using pinned commit hashes, ensuring security by maintaining immutable evidence. It addresses trust issues in the supply chain by preventing malicious pushes through mutable tags.

## What's Changed

Shortens the `action.yml` description below the GitHub Marketplace limit of 125 characters. No behavioural change from v0.1.0.

Released as a new version rather than by re-pointing the `v0.1.0` tag. Moving a published tag is exactly the mutability this Action exists to argue against — on 19 March 2026 an attacker force-pushed malware over 76 of 77 release tags of `aquasecurity/trivy-action` — and the argument does not get an exemption for being inconvenient to its own author.

The floating `v0` tag does move, which is the documented Marketplace convention; pin to `v0.1.1` if you want the guarantee.
