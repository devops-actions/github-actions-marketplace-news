---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-05-02 06:01:14 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.10.0
dependentsNumber: "17"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.10.0**.

- This action is used across all versions by **17** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and CI/CD PR gate designed to identify and address issues in Python, TypeScript, JavaScript, Java, Go, PHP, and Rust codebases. It automates tasks such as detecting dead code, security vulnerabilities, hardcoded secrets, code quality issues, and regressions in AI-generated code. By providing framework-aware insights and diff-based checks, Skylos enhances development workflows and ensures cleaner, more secure code before it is merged.

## What's Changed

## [4.10.0](https://github.com/duriantaco/skylos/compare/v4.9.0...v4.10.0) (2026-05-02)


### Features

* **analyzer:** add configurable vibe guardrails ([b789334](https://github.com/duriantaco/skylos/commit/b78933488deee7b3a40e6bb7c2fae44f93d76587))
* **analyzer:** add Python liveness evidence for dead-code detection ([#272](https://github.com/duriantaco/skylos/issues/272)) ([f5c53b3](https://github.com/duriantaco/skylos/commit/f5c53b372ef7aa848cd900a3410f9e15d5d92950))
* **cli:** add concise IDE-friendly output ([#279](https://github.com/duriantaco/skylos/issues/279)) ([07d22cc](https://github.com/duriantaco/skylos/commit/07d22cccc21eb57c6e8a655940934dda6a99e16d))


### Bug Fixes

* **analyzer:** cover rust and workspace edge cases ([721235b](https://github.com/duriantaco/skylos/commit/721235be475aae526a95ce35a2a82ebfe69ec083))
* **analyzer:** harden rust and monorepo resolution ([565fc8f](https://github.com/duriantaco/skylos/commit/565fc8f52626260680c02b7d751a485ba06ee23f))
* **analyzer:** restore configurable vibe guardrails ([#271](https://github.com/duriantaco/skylos/issues/271)) ([61aa187](https://github.com/duriantaco/skylos/commit/61aa187e6d3d2337e000f81e7e343ef9e0f99420))
* **ci:** harden enterprise workflow generation ([#268](https://github.com/duriantaco/skylos/issues/268)) ([8568bc0](https://github.com/duriantaco/skylos/commit/8568bc0a2d899656e86ebbd966040686aa404643))
* **cli, quality:** honor gate exits and ignore annotation strings ([#275](https://github.com/duriantaco/skylos/issues/275)) ([5a8d3f6](https://github.com/duriantaco/skylos/commit/5a8d3f6430b9bb93d419c8465b189071d12cff32))
* **cli:** honor strict scan exit codes ([#278](https://github.com/duriantaco/skylos/issues/278)) ([b98db50](https://github.com/duriantaco/skylos/commit/b98db508eafab2e9b4ce1549d21851f0476a5760))
* **sync:** block direct main pushes ([#269](https://github.com/duriantaco/skylos/issues/269)) ([9ed6fe6](https://github.com/duriantaco/skylos/commit/9ed6fe62ab74ce92cb16500085acc676d0363156))
