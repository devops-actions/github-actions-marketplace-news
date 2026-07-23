---
title: Postman Onboarding Workspace Bootstrap
date: 2026-07-23 15:14:09 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-bootstrap-action
marketplace: https://github.com/marketplace/actions/postman-onboarding-workspace-bootstrap
version: v2.10.8
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the provisioning of a Postman workspace by generating baseline, smoke, and contract collections based on an OpenAPI specification. It includes dynamic contract tests that validate request/response schemas, security checks, and multi-protocol support. The action provides executable contract tests and logs the Postman CLI in for spec linting.
---


Version updated for **https://github.com/postman-cs/postman-bootstrap-action** to version **v2.10.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-onboarding-workspace-bootstrap) to find the latest changes.

## Action Summary

This GitHub Action automates the provisioning of a Postman workspace by generating baseline, smoke, and contract collections based on an OpenAPI specification. It includes dynamic contract tests that validate request/response schemas, security checks, and multi-protocol support. The action provides executable contract tests and logs the Postman CLI in for spec linting.

## What's Changed

## What's Changed
* fix: converge concurrent generation ownership by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/110
* fix(release): publish verified bootstrap artifacts by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/111
* feat: parallelize bootstrap generation and harden SEA startup by @mmorales-post in https://github.com/postman-cs/postman-bootstrap-action/pull/100
* test: rebind fanout evidence after squash by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/113
* fix: wait for canonical fanout links by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/115
* perf(ci): accelerate Windows parity gate by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/114
* chore: prepare v2.10.8 by @jaredboynton in https://github.com/postman-cs/postman-bootstrap-action/pull/118


**Full Changelog**: https://github.com/postman-cs/postman-bootstrap-action/compare/v2...v2.10.8
