---
title: InvisiRisk PSE Security Proxy
date: 2026-06-08 15:34:17 +00:00
tags:
  - invisirisk
  - GitHub Actions
draft: false
repo: https://github.com/invisirisk/pse-action
marketplace: https://github.com/marketplace/actions/invisirisk-pse-security-proxy
version: v1.0.40
dependentsNumber: "53"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/invisirisk/pse-action** to version **v1.0.40**.

- This action is used across all versions by **53** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invisirisk-pse-security-proxy) to find the latest changes.

## What's Changed

## Summary

  This release rewrites `pse-action` from a composite shell action into a Node 20 action that delegates setup and cleanup to the collector bootstrap flow.

  ## What changed

  - replaces the composite action entrypoint with a Node-based `main` and `post` action
  - moves setup into `src/index.js`, which:
    - builds normalized runtime env
    - resolves `IR_URL` and `IR_TOKEN`
    - calls the bootstrap endpoint with `mode` and `runner=github`
    - annotates bootstrap auth failures clearly
  - moves cleanup into `src/post.js`, which:
    - always runs as the action post step
    - executes `pse-data-collector cleanup`
    - fails the workflow when cleanup reports blocking policy violations or `/end` finalization failure
  - deprecates the old `cleanup` input and removes the legacy shell orchestration scripts
  - simplifies inputs around the current collector contract:
    - `mode` now maps to `native` or `sidecar`
    - adds `pse_image_tag` for sidecar image tag selection
    - keeps dependency collection and workdir inputs
  - adds Node-based tests and a GitHub build workflow for CI coverage
  - updates README to document post-step failure behavior and sidecar image tag usage

  ## Why

  This brings the GitHub Action in line with the current thin-wrapper model: the action should bootstrap the collector, persist state, and let collector
  cleanup own end-of-job finalization and policy gating.

  ## Validation

  - adds unit tests for setup/bootstrap and post cleanup behavior
  - adds a GitHub workflow to run `npm ci`, `npm test`, and `npm run build`

