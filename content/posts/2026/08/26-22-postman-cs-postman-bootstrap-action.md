---
title: Postman Onboarding Workspace Bootstrap
date: 2026-08-26 22:45:56 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-bootstrap-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-workspace-bootstrap
version: v2.21.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the creation of a Postman workspace by importing an OpenAPI specification and generating predefined collections that include baseline, smoke, and contract tests. The action supports various protocols like gRPC, SOAP, GraphQL, AsyncAPI, and MCP, ensuring comprehensive test coverage grounded in RFCs. It also provides dynamic contract tests, error codes for enforcement layers, and is part of a larger suite for Postman API onboarding.
---


Version updated for **https://github.com/postman-cs/postman-bootstrap-action** to version **v2.21.2**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-workspace-bootstrap) to find the latest changes.

## Action Summary

This GitHub Action automates the creation of a Postman workspace by importing an OpenAPI specification and generating predefined collections that include baseline, smoke, and contract tests. The action supports various protocols like gRPC, SOAP, GraphQL, AsyncAPI, and MCP, ensuring comprehensive test coverage grounded in RFCs. It also provides dynamic contract tests, error codes for enforcement layers, and is part of a larger suite for Postman API onboarding.

## What's Changed

## What's Changed
* chore: normalize multifile receipt after v2.16.1 by @github-actions[bot] in https://github.com/postman-cs/postman-bootstrap-action/pull/179
* fix(gateway-assets): fail closed when org squad discovery is indeterminate by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/180
* feat(release): gate aliases on correlated E2E by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/181
* fix(release): wait for run-name hydration by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/182
* fix(release): notify the composite after Bootstrap publish by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/183
* feat: add generated asset sync control by @sean-riney in https://github.com/postman-cs/postman-bootstrap-action/pull/186
* fix(ci): split dist parity and add Dependabot writeback by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/188
* fix(ci): use checkout v7 tag for writeback by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/191
* fix(ci): trigger writeback on dependabot branches by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/192
* fix(ci): pin writeback actions to immutable SHAs by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/194
* fix(ci): address Codex writeback feedback by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/195
* fix(ci): use ESM execSync and update permission test by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/196
* chore: normalize multifile receipt after v2.18.3 by @github-actions[bot] in https://github.com/postman-cs/postman-bootstrap-action/pull/197
* docs: make gate commands independently verifiable by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/198
* chore: rebind multifile receipt to main by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/199
* ci: run dist parity after skipped normalizer by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/200
* feat: publish as @postman/onboarding-bootstrap with best-effort npm publish by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/208
* ci: install restricted dependencies without npm token by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/209
* chore: rebind multifile receipt to main by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/210
* fix(deps): move private @postman platform packages to devDependencies by @pavan-nelakuditi in https://github.com/postman-cs/postman-bootstrap-action/pull/211
* feat: support monorepo working directories by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/212
* feat: accelerate collection convergence by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/213
* fix: enforce exact collection convergence by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/214
* fix: consolidate contract validation into collection root script and optimize delta convergence by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/215
* fix(release): skip burnt tags with stale aliases by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/216
* test: keep contract root fixtures package-local by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/217


**Full Changelog**: https://github.com/postman-cs/postman-bootstrap-action/compare/v2.16.1...v2.21.2
