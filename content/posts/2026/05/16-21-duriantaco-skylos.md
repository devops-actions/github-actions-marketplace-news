---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-05-16 21:27:39 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.15.1
dependentsNumber: "17"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.15.1**.

- This action is used across all versions by **17** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool designed to detect dead code, security vulnerabilities, secrets, code quality issues, and errors in AI-generated code across multiple programming languages, including Python, JavaScript, and Rust. By integrating with CI/CD pipelines and offering local-first analysis, it automates code scanning, provides pull request feedback, and supports framework-aware checks to streamline code maintenance and improve software quality. Its key capabilities include dead code detection, regression checks, and customizable rules for enhanced workflow integration.

## What's Changed

## [4.15.1](https://github.com/duriantaco/skylos/compare/v4.15.0...v4.15.1) (2026-05-16)


### Bug Fixes

* **audit:** contain audit file discovery ([#379](https://github.com/duriantaco/skylos/issues/379)) ([a95c246](https://github.com/duriantaco/skylos/commit/a95c246f90895cef31156f492ec3f30579d5f144))
* **cache:** harden grep cache writes ([#377](https://github.com/duriantaco/skylos/issues/377)) ([22afc24](https://github.com/duriantaco/skylos/commit/22afc24452ee5a1aa0f0cbda2fd72a508f41f796))
* **cli:** gate coverage test execution ([#382](https://github.com/duriantaco/skylos/issues/382)) ([3a2077c](https://github.com/duriantaco/skylos/commit/3a2077cd611773dbffa39a79de5a5e16174edd6d))
* **cli:** harden trace subprocess imports ([#376](https://github.com/duriantaco/skylos/issues/376)) ([47224d4](https://github.com/duriantaco/skylos/commit/47224d4aa8cec2294930ce5ab062eab36e1db39e))
* **go:** enforce scan-root containment ([#373](https://github.com/duriantaco/skylos/issues/373)) ([a88ddc3](https://github.com/duriantaco/skylos/commit/a88ddc31a4a7d3f87472ff7d633ad171ec27a92f))
* **llm:** avoid importing scanned repo code ([#369](https://github.com/duriantaco/skylos/issues/369)) ([b4e62f5](https://github.com/duriantaco/skylos/commit/b4e62f51319f569c71001fc4747c8f0bc848c62e))
* **llm:** contain cleanup file access ([#374](https://github.com/duriantaco/skylos/issues/374)) ([2821158](https://github.com/duriantaco/skylos/commit/2821158689ba0d35793537a107d8003274fabde7))
* **llm:** contain source file discovery ([#375](https://github.com/duriantaco/skylos/issues/375)) ([ea7140e](https://github.com/duriantaco/skylos/commit/ea7140e47e894cb9acb1f0a59340557750f160c8))
* **mcp:** harden remediation test execution ([#372](https://github.com/duriantaco/skylos/issues/372)) ([69eafe5](https://github.com/duriantaco/skylos/commit/69eafe586f1ffeaf430a493ce2c6d039a52e3aa7))
* **mcp:** require client auth for network transport ([#370](https://github.com/duriantaco/skylos/issues/370)) ([322a532](https://github.com/duriantaco/skylos/commit/322a53254b716e881ae10dc0e81bc337c55aed98))
* **pipeline:** contain LLM file inputs ([#381](https://github.com/duriantaco/skylos/issues/381)) ([19a5941](https://github.com/duriantaco/skylos/commit/19a5941417bc55b96bde7cdced0b4d175e475c2c))
* **release:** gate PyPI publish provenance ([#367](https://github.com/duriantaco/skylos/issues/367)) ([23f943b](https://github.com/duriantaco/skylos/commit/23f943bb05c36b5a1ddd9a37dfc48ed56c8a3e60))
* **release:** scope PyPI token to upload ([#371](https://github.com/duriantaco/skylos/issues/371)) ([2a4a5e7](https://github.com/duriantaco/skylos/commit/2a4a5e720984f803aca764c3c5af33b5576222a8))
* **secrets:** contain config file scans ([#378](https://github.com/duriantaco/skylos/issues/378)) ([5cbba67](https://github.com/duriantaco/skylos/commit/5cbba67c0ae11e743044fbdf55cfefa2194c801b))
* **sync:** keep pre-push hook static ([#380](https://github.com/duriantaco/skylos/issues/380)) ([f293c6a](https://github.com/duriantaco/skylos/commit/f293c6a7ee96cdd3ef731b3f2fea567ffbdf8ed1))
