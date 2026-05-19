---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-05-19 15:24:38 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.16.1
dependentsNumber: "17"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.16.1**.

- This action is used across all versions by **17** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and CI/CD integration for multiple programming languages, including Python, JavaScript, and Go. It automates the detection of dead code, security vulnerabilities, secrets, code quality issues, and errors in AI-generated code, providing local-first analysis and PR-native feedback. Designed to complement tools like Bandit and CodeQL, Skylos streamlines development workflows with framework-aware scanning, diff-based checks, and customizable rule sets.

## What's Changed

## [4.16.1](https://github.com/duriantaco/skylos/compare/v4.16.0...v4.16.1) (2026-05-19)


### Bug Fixes

* **config:** validate whitelist settings ([#443](https://github.com/duriantaco/skylos/issues/443)) ([1734ec0](https://github.com/duriantaco/skylos/commit/1734ec09d0de3580f6cc9824e0f92eab43db4f8a))
* **danger:** track SQL and SSRF receiver aliases ([#446](https://github.com/duriantaco/skylos/issues/446)) ([99cf457](https://github.com/duriantaco/skylos/commit/99cf457aaf870a5235c240a638a185896555d49d))
* **excludes:** honor absolute scan-root paths ([#452](https://github.com/duriantaco/skylos/issues/452)) ([627d763](https://github.com/duriantaco/skylos/commit/627d76372295ef7f55d07627fcb1785800be4afc))
* **gate:** allow non-critical threshold tuning ([#449](https://github.com/duriantaco/skylos/issues/449)) ([6fe6fe9](https://github.com/duriantaco/skylos/commit/6fe6fe9401610c92de6921794608d4e663c85c24))
* **java:** tie canonical guards to path sinks ([#454](https://github.com/duriantaco/skylos/issues/454)) ([defb3ac](https://github.com/duriantaco/skylos/commit/defb3ac2bb95a8bd6f6801dbf8c765be56398095))
* **precommit:** block high severity quality findings ([#451](https://github.com/duriantaco/skylos/issues/451)) ([6306d61](https://github.com/duriantaco/skylos/commit/6306d618ddf12c6d29e62694863f3912950027bd))
* **pytest:** guard fixture report writes ([#453](https://github.com/duriantaco/skylos/issues/453)) ([19f5613](https://github.com/duriantaco/skylos/commit/19f56133179072a8c47483bc82ff5d008f904d50))
* **scanner:** bound language assignment scans ([#448](https://github.com/duriantaco/skylos/issues/448)) ([650e018](https://github.com/duriantaco/skylos/commit/650e0185186a18a8474bb56afb0e440cd926d5da))
* **typescript:** bound duplicate condition scan ([#450](https://github.com/duriantaco/skylos/issues/450)) ([cc97185](https://github.com/duriantaco/skylos/commit/cc97185176583e295752115134e1ac777f333057))
* **typescript:** constrain glob expansion ([#447](https://github.com/duriantaco/skylos/issues/447)) ([28fee5b](https://github.com/duriantaco/skylos/commit/28fee5bab30835ce33d757c005e1c613a9b5b985))
* **web:** normalize analyze excludes ([#445](https://github.com/duriantaco/skylos/issues/445)) ([6cc31bf](https://github.com/duriantaco/skylos/commit/6cc31bfea8a69dc18466fadf9dc97cf8d1ea896d))
