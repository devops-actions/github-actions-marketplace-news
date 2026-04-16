---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-04-16 14:14:51 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.4.0
dependentsNumber: "15"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.4.0**.

- This action is used across all versions by **15** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool and GitHub Action that identifies dead code, hardcoded secrets, exploitable flows, and AI-generated security vulnerabilities in Python, TypeScript, and Go. It automates code review and quality assurance by integrating into CI/CD workflows to gate pull requests with actionable feedback, minimizing security risks and technical debt. Skylos also offers advanced features like AI defense, in-editor findings, and support for AI-assisted development tools, making it particularly useful for teams working with AI-driven coding assistants.

## What's Changed

## [4.4.0](https://github.com/duriantaco/skylos/compare/v4.3.2...v4.4.0) (2026-04-16)


### Features

* **cli:** add suite command for the full local bundle ([#209](https://github.com/duriantaco/skylos/issues/209)) ([1989905](https://github.com/duriantaco/skylos/commit/198990555adbebc1bda52fecf306a639a31616cf))
* **py:** add repo-aware vibe reference detection ([#208](https://github.com/duriantaco/skylos/issues/208)) ([797b1ab](https://github.com/duriantaco/skylos/commit/797b1ab83f25cfe0f2a282eb2140b41c8e65d41f))
* **ts:** add AI defense beta for direct LLM integrations ([#207](https://github.com/duriantaco/skylos/issues/207)) ([dfb4fda](https://github.com/duriantaco/skylos/commit/dfb4fdab761a7fed233c92d96f29cae8fcb25aac))
* **ts:** report monorepo workspace inventory ([#202](https://github.com/duriantaco/skylos/issues/202)) ([610c53b](https://github.com/duriantaco/skylos/commit/610c53b427ad73a7d8e002393dc868cdb78bcd8a))


### Bug Fixes

* **ci:** publish releases from tags ([#196](https://github.com/duriantaco/skylos/issues/196)) ([be5e6ee](https://github.com/duriantaco/skylos/commit/be5e6eee92fe48b1b48410946fa3ddba6c9cf709))
* **ts:** keep monorepo package entrypoints reachable ([#205](https://github.com/duriantaco/skylos/issues/205)) ([f0cb594](https://github.com/duriantaco/skylos/commit/f0cb5944d9dee5a7334406f0789ce5b1ffe48dea))
* **ts:** resolve direct project references in monorepos ([#204](https://github.com/duriantaco/skylos/issues/204)) ([c2b4c69](https://github.com/duriantaco/skylos/commit/c2b4c6928c970ceb5de48c0352dc27f17e36c1e8))
* **ts:** use declared workspaces for monorepo resolution ([#203](https://github.com/duriantaco/skylos/issues/203)) ([5a28512](https://github.com/duriantaco/skylos/commit/5a2851288dd61f27fcf6181e3c8a6eeb55bdd2fb))
