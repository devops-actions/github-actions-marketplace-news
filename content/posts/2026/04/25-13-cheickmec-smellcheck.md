---
title: smellcheck
date: 2026-04-25 13:24:06 +00:00
tags:
  - cheickmec
  - GitHub Actions
draft: false
repo: https://github.com/cheickmec/smellcheck
marketplace: https://github.com/marketplace/actions/smellcheck
version: v0.3.10
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cheickmec/smellcheck** to version **v0.3.10**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smellcheck) to find the latest changes.

## Action Summary

**smellcheck** is a Python-based tool designed to detect code smells and provide refactoring guidance for improving code quality. It automates the identification of structural weaknesses in source code using 60 built-in AST checks and supports multiple output formats for integration with CI/CD pipelines, pre-commit hooks, and AI coding assistants. By addressing maintainability and readability issues, it helps developers streamline code reviews and improve long-term project sustainability.

## What's Changed

## [0.3.10](https://github.com/cheickmec/smellcheck/compare/v0.3.9...v0.3.10) (2026-03-25)


### Features

* add cross-file call-chain tracing for indirect blocking in async code ([57c8233](https://github.com/cheickmec/smellcheck/commit/57c8233be5163d693aa13d421062595102e07b60)), closes [#67](https://github.com/cheickmec/smellcheck/issues/67)
* add SC704, SC705, SC706 async detection rules ([aa3dd7b](https://github.com/cheickmec/smellcheck/commit/aa3dd7bd1728ff273762e75696f169cb8be52575))


### Bug Fixes

* clean SC705 message phrasing and deduplicate concurrency check roots ([a94b5f6](https://github.com/cheickmec/smellcheck/commit/a94b5f64cebd2b8afd79103236b2ce35319ccb06))
* fall back to sorted list when SCC walk doesn't visit all members ([32b73ed](https://github.com/cheickmec/smellcheck/commit/32b73edfa93bdfe780c1110b78cde41510559f78))
* qualify call-chain keys, fix nested scope traversal, remove same-file skip, add call-site line numbers ([d361d57](https://github.com/cheickmec/smellcheck/commit/d361d57dc6ab864a63d39f2852791a1d927b8125))
* reconstruct actual import order from graph instead of using SCC set order ([37814bb](https://github.com/cheickmec/smellcheck/commit/37814bb49730b42c3c0914ec2d22311334410309))
* verify closing edge in SCC cycle display and remove unused fixture ([5ab0bb8](https://github.com/cheickmec/smellcheck/commit/5ab0bb8fe0f7882ce4388aaf6d84dbcce8e9195a))


### Performance

* replace DFS with Tarjan SCC and cache parent map for _is_elif ([9069999](https://github.com/cheickmec/smellcheck/commit/9069999ccfce415a83fd43a857b29f01fa0a53c3))
