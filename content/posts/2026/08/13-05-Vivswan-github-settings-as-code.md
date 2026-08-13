---
title: GitHub Settings as Code
date: 2026-08-13 05:36:25 +00:00
tags:
  - Vivswan
  - GitHub Actions
draft: false
repo: https://github.com/Vivswan/github-settings-as-code
marketplace: https://github.com/marketplace/actions/github-settings-as-code
version: v2.1.0
dependentsNumber: "15"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file using a fine-grained personal access token. It replaces the Probot Settings app and manages rulesets such as branch protection and push policies. The action provides visible, stateless workflow runs that report errors if apply fails. It also includes a JSON Schema for the configuration, which is generated from Zod schemas in `src/schema.ts`.
---


Version updated for **https://github.com/Vivswan/github-settings-as-code** to version **v2.1.0**.

- This action is used across all versions by **15** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-settings-as-code) to find the latest changes.

## Action Summary

This GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file using a fine-grained personal access token. It replaces the Probot Settings app and manages rulesets such as branch protection and push policies. The action provides visible, stateless workflow runs that report errors if apply fails. It also includes a JSON Schema for the configuration, which is generated from Zod schemas in `src/schema.ts`.

## What's Changed

## [2.1.0](https://github.com/Vivswan/github-settings-as-code/compare/v2.0.0...v2.1.0) (2026-08-12)


### Features

* attest build provenance and attach the sigstore bundle to releases ([d12eeb8](https://github.com/Vivswan/github-settings-as-code/commit/d12eeb8ab48fe92f49e4a0aea251060117cf7027))


### Bug Fixes

* apply review fixes to the docs and tooling sweep ([a849b19](https://github.com/Vivswan/github-settings-as-code/commit/a849b19c4b45daebd9901316363abb60c8f35045))
* apply review fixes to the harness audit batch ([01e9e3b](https://github.com/Vivswan/github-settings-as-code/commit/01e9e3b7d26dc36d3cf8db2cd328d2bd6e8c18cf))
* apply review fixes to the src-side audit batch ([ed29870](https://github.com/Vivswan/github-settings-as-code/commit/ed298706bd64261a67e464a9a01f3d696552777b))
* centralize the token-leak sweep in the runner ([84f5ae1](https://github.com/Vivswan/github-settings-as-code/commit/84f5ae1f737903d4c55bbbca2c1d9df919d41eaa))
* classify rate limits structurally on every path ([0c2eb3c](https://github.com/Vivswan/github-settings-as-code/commit/0c2eb3cf20fc001f3481ff0c6a5263a928397df4))
* correct mock identity minting and the pages resurrect bug ([5650244](https://github.com/Vivswan/github-settings-as-code/commit/56502448ece1bfd7a506f5d806a5fd1bf6d27024))
* cover every faultable section in the fuzz fault battery ([f683bb3](https://github.com/Vivswan/github-settings-as-code/commit/f683bb3a990f781cbcaadf60ace3f4f8c9e62751))
* derive owner-kind sensitivity from the section declaration ([5d2b67e](https://github.com/Vivswan/github-settings-as-code/commit/5d2b67ecbc8647c71a834fd928f33cd521dada7d))
* discover schema-corpus scenarios across all scenario roots ([4171f1b](https://github.com/Vivswan/github-settings-as-code/commit/4171f1bd773e3d9bd08b0ccd21d17ae2bc9a7325))
* harden the CI tooling ([2c1b360](https://github.com/Vivswan/github-settings-as-code/commit/2c1b3603ae8c79ca2e4e1a1b0087ed1850295421))
* keep spec-pinned gaps out of automatic graduation ([ae278c9](https://github.com/Vivswan/github-settings-as-code/commit/ae278c9f3770a8580727db917124a0cea32e164b))
* reject required-sections entries excluded by the sections allowlist ([13b59f5](https://github.com/Vivswan/github-settings-as-code/commit/13b59f53dd1e356311dbbc4f3934254153112bb9))
* size the harness kill cap for the directed fuzz battery ([8543af8](https://github.com/Vivswan/github-settings-as-code/commit/8543af85d8178f736598e6565839df1c57b8334c))
* strengthen the remaining per-section representations ([9567f3f](https://github.com/Vivswan/github-settings-as-code/commit/9567f3f8305edc8b4d050d2d00fb20b044df56eb))
