---
title: Setup minikube for self-hosted GH runners
date: 2025-12-10 21:26:17 +00:00
tags:
  - fenio
  - GitHub Actions
draft: false
repo: https://github.com/fenio/setup-minikube
marketplace: https://github.com/marketplace/actions/setup-minikube-for-self-hosted-gh-runners
version: v5
dependentsNumber: "?"
---


Version updated for **https://github.com/fenio/setup-minikube** to version **v5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-minikube-for-self-hosted-gh-runners) to find the latest changes.

## Release notes

## What's Changed

- unification (7e97668)
- unification (4236708)
- switch to bash (ecc068a)
- switch to bash (8da6783)
- Fix Docker socket permissions for pre-installed Docker on runners (4c0164b)
- Fix Docker socket permissions to allow immediate access after installation (dfbc9fd)
- Make cleanup unconditional to handle leftover clusters from previous failed runs (9d4379e)
- Fix cleanup to explicitly remove ~/.minikube directory to ensure complete system state restoration (22a248b)
- Revert default driver to docker since driver=none requires cri-dockerd which adds unnecessary complexity (c8df723)
- Install Docker as prerequisite for driver=none to fix exec error on systems without Docker (3b9dc88)
- Update CI workflow to use driver=none instead of driver=docker (8e152db)
- Change default driver from docker to none for improved performance on self-hosted runners (33288fd)
- test on self-hosted (2eef49c)
- feat: add crictl installation to prerequisites (ccecb06)
- feat: install conntrack prerequisite for Minikube (015145f)
- fix: support 'stable' version by treating it as 'latest' (c2fb1f5)
- remove crap (d0232a9)
- Rebuild dist/ with updated dependencies (53fbc1f)
- Regenerate package-lock.json to match updated dependency versions (f048308)
- Update dependencies to latest versions and standardize cleanup messaging (6c77e94)
- Fix CI tests to check for custom minikube binary instead of system binary (617944a)
- Fix cleanup to use custom minikube installation path instead of system location (3974a77)
- include workflow (9574f4c)
- fixes (26105a4)
- change the name (cf170ae)

**Full Changelog**: https://github.com/fenio/setup-minikube/compare/v1.0.0...v5

