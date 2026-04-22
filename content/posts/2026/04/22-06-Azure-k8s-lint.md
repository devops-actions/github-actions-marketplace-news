---
title: Lint k8s manifest files
date: 2026-04-22 06:24:53 +00:00
tags:
  - Azure
  - GitHub Actions
draft: false
repo: https://github.com/Azure/k8s-lint
marketplace: https://github.com/marketplace/actions/lint-k8s-manifest-files
version: v4.0.0
dependentsNumber: "1,066"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/Azure/k8s-lint** to version **v4.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **1,066** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lint-k8s-manifest-files) to find the latest changes.

## Action Summary

The Kubernetes lint GitHub Action is designed to validate and lint Kubernetes manifest files, ensuring they conform to specifications or are pre-checked for server-side compatibility using dry-run validation. It automates the process of identifying errors or inconsistencies in Kubernetes configurations, helping developers maintain deployment accuracy and compliance. Key capabilities include schema validation through `kubeconform` and server-side validation for Kubernetes versions 1.12 and above.

## What's Changed

### Changed

- #189 [Update Node.js runtime from node20 to node24](https://github.com/Azure/k8s-lint/pull/189)
- #198 [build: migrate action to ESM with esbuild and Vitest](https://github.com/Azure/k8s-lint/pull/198)
- **Dependabot - GitHub Actions workflow updates:** bumps to `github/codeql-action`, `actions/setup-node`, and other workflow actions in #145, #147, #148, #150, #152, #156, #158, #160, #167, #169, #171, #173, #175, #177, #179, #181, #183, #185, #187, #188, #193, #197
- **Dependabot - npm dependency updates:** `@types/node` (#144, #146, #159, #166, #174), `undici` / `@actions/http-client` (#184, #191), `jest` (#149), `handlebars` (#196), `picomatch` (#195), `minimatch` (#186), `js-yaml` (#163), `glob` (#165), and grouped npm `actions` updates in #151, #155, #157, #164, #168, #170, #172, #176, #178
