---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-05-24 07:09:08 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.19.0
dependentsNumber: "17"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.19.0**.

- This action is used across all versions by **17** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and CI/CD pull request gate designed for multiple programming languages, including Python, JavaScript, Java, and more. Its primary purpose is to automate the detection of dead code, security vulnerabilities, secrets, code quality issues, and errors in AI-generated code, enabling developers to maintain cleaner, more secure, and higher-quality codebases. By integrating with CI/CD pipelines, Skylos provides actionable, PR-native feedback and complements existing tools like Vulture and CodeQL, streamlining the development and code review process.

## What's Changed

## [4.19.0](https://github.com/duriantaco/skylos/compare/v4.18.0...v4.19.0) (2026-05-24)


### Features

* **csharp:** add C# analyzer support ([#485](https://github.com/duriantaco/skylos/issues/485)) ([1422f41](https://github.com/duriantaco/skylos/commit/1422f41eece7ece968b4ba198d376cb7fd58ae6e))
* **docs:** add agent skills for Skylos ([#481](https://github.com/duriantaco/skylos/issues/481)) ([aeb4c5a](https://github.com/duriantaco/skylos/commit/aeb4c5af6467c85d4115267e27f5110ae85bfdc2))
* **docs:** add Skylos security agent skill ([#483](https://github.com/duriantaco/skylos/issues/483)) ([97edb33](https://github.com/duriantaco/skylos/commit/97edb33075fc3c48aa442282ca9b699e42ef709c))


### Bug Fixes

* **debt:** harden debt persistence file handling ([#484](https://github.com/duriantaco/skylos/issues/484)) ([d34a3d7](https://github.com/duriantaco/skylos/commit/d34a3d77e841a0789fe649db947cdbaf9069e1a8))
* **gate:** avoid terminal probe output during concise gate checks ([#489](https://github.com/duriantaco/skylos/issues/489)) ([9c718f9](https://github.com/duriantaco/skylos/commit/9c718f91184762ff48523d057b92f6dff7448310))
* **static:** preserve security findings in parallel scans ([#487](https://github.com/duriantaco/skylos/issues/487)) ([f12a66f](https://github.com/duriantaco/skylos/commit/f12a66f7ace916b2ee42aab96a7d2258b9b07d8a))
