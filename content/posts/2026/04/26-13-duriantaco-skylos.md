---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-04-26 13:39:15 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.6.0
dependentsNumber: "16"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.6.0**.

- This action is used across all versions by **16** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis and CI/CD tool designed to enhance code security, quality, and maintainability for Python, TypeScript, JavaScript, Java, and Go projects. It automates tasks such as dead code detection, security and secrets scanning, AI-assisted code reviews, and diff-aware regression checks, providing actionable feedback directly in pull requests. By integrating these capabilities into a local-first workflow and CI/CD pipelines, it helps developers identify issues like unused code, exploitable vulnerabilities, and AI-related security risks before they reach production.

## What's Changed

## [4.6.0](https://github.com/duriantaco/skylos/compare/v4.5.0...v4.6.0) (2026-04-26)


### Features

* **languages:** add js-jsx support and strengthen java-go security c… ([#237](https://github.com/duriantaco/skylos/issues/237)) ([c082fcf](https://github.com/duriantaco/skylos/commit/c082fcfe0ea3d72529fdc42e45dfed1436de3aa7))
* **languages:** add php foundation support ([#243](https://github.com/duriantaco/skylos/issues/243)) ([4a137cc](https://github.com/duriantaco/skylos/commit/4a137cc6838fb946f93ad50ba3e4d208d2995fa2))
* **languages:** deepen go java and js-ts security checks ([#238](https://github.com/duriantaco/skylos/issues/238)) ([fde84e3](https://github.com/duriantaco/skylos/commit/fde84e3941dd3f6f80fdba283086dff932fffa0e))
* **languages:** deepen js-ts reachability and entry discovery ([#240](https://github.com/duriantaco/skylos/issues/240)) ([6ea96a2](https://github.com/duriantaco/skylos/commit/6ea96a25a1ac39a429ef5a63108c8dd939db048a))
* **languages:** harden go archive symlink checks ([#241](https://github.com/duriantaco/skylos/issues/241)) ([4d37f14](https://github.com/duriantaco/skylos/commit/4d37f14b0b966310cc73ea97191be1a2c70a83e2))
* **languages:** harden java canonical path guard checks ([#242](https://github.com/duriantaco/skylos/issues/242)) ([d3958bf](https://github.com/duriantaco/skylos/commit/d3958bf3686220d9486718b61493ae0290556d63))
* **security:** add security contract regression detection ([#236](https://github.com/duriantaco/skylos/issues/236)) ([1b48e52](https://github.com/duriantaco/skylos/commit/1b48e525d75ae1c4a57f856e47b53ddc5fd73088))
* **upload:** add family-aware cloud uploads and debt reporting ([#239](https://github.com/duriantaco/skylos/issues/239)) ([55b75ea](https://github.com/duriantaco/skylos/commit/55b75eabc1a9207a5e465d11ce5057dc01df6887))
* **upload:** add monorepo routing and sonar import ([#244](https://github.com/duriantaco/skylos/issues/244)) ([dc473d7](https://github.com/duriantaco/skylos/commit/dc473d77858cc6535ef7639fc1dfe4b3dd5dcf72))


### Bug Fixes

* **dead-code:** improve frozen benchmark precision and recall ([#254](https://github.com/duriantaco/skylos/issues/254)) ([4fd170c](https://github.com/duriantaco/skylos/commit/4fd170cf629a2d4d3a2345202ea935e44d9486fd))
* **java:** make security flow analysis structured ([#253](https://github.com/duriantaco/skylos/issues/253)) ([5d3a946](https://github.com/duriantaco/skylos/commit/5d3a946808210972af55afb237599626ee098d52))
* **python:** fix critical logic gaps ([#245](https://github.com/duriantaco/skylos/issues/245)) ([96712b9](https://github.com/duriantaco/skylos/commit/96712b94f061b8edeb7f0abfa11bf4a1d58b3b76))
* **python:** improve security flow precision and recall ([#250](https://github.com/duriantaco/skylos/issues/250)) ([8af25d2](https://github.com/duriantaco/skylos/commit/8af25d216a30ab93c46e92e0dfe0bc073949e176))
* **quality:** detect duplicate branch logic ([#255](https://github.com/duriantaco/skylos/issues/255)) ([8e76e9d](https://github.com/duriantaco/skylos/commit/8e76e9dde0b791d4758d210ba7eaefa821402776))
* **security:** improve typescript ssrf and go command precision ([#251](https://github.com/duriantaco/skylos/issues/251)) ([1218c9d](https://github.com/duriantaco/skylos/commit/1218c9dad2186c72a73545ce7cac335f4f742b13))


### Documentation

* **readme:** refresh GHCR image release notes ([#232](https://github.com/duriantaco/skylos/issues/232)) ([bea165c](https://github.com/duriantaco/skylos/commit/bea165c5c661c0efbe3db5ab7e39203a9c909a4d))
* **readme:** streamline landing pages and benchmark scorecard ([#256](https://github.com/duriantaco/skylos/issues/256)) ([f2af8c2](https://github.com/duriantaco/skylos/commit/f2af8c20565bb542be8aa1845f59351dd72b36af))
