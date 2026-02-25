---
title: ZTA Policy Attestor
date: 2026-02-25 13:26:33 +00:00
tags:
  - SabinGhost19
  - GitHub Actions
draft: false
repo: https://github.com/SabinGhost19/policyAttestor-action
marketplace: https://github.com/marketplace/actions/zta-policy-attestor
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SabinGhost19/policyAttestor-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zta-policy-attestor) to find the latest changes.

## Action Summary

The **ZTA Policy Attestor** GitHub Action automates the process of binding a security policy to a Docker image to enhance Zero-Trust supply chain security. It converts a YAML security policy into a strict JSON payload, generates an in-toto attestation using Sigstore Cosign (keyless/OIDC), and attaches it to the image in the OCI registry. Additionally, it ensures GitOps manifest integrity by computing and embedding a hash of infrastructure specifications, enabling strict runtime security enforcement.

## Release notes

# [1.2.0](https://github.com/SabinGhost19/policyAttestor-action/compare/v1.1.0...v1.2.0) (2026-02-25)


### Features

* canonical hash with new image digest ([62a82c2](https://github.com/SabinGhost19/policyAttestor-action/commit/62a82c291c70715ca59029df0c45528deba36239))




