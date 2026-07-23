---
title: Repo Settings as Code
date: 2026-07-23 06:14:24 +00:00
tags:
  - Vivswan
  - GitHub Actions
draft: false
repo: https://github.com/Vivswan/repo-settings-as-code
marketplace: https://github.com/marketplace/actions/repo-settings-as-code
version: v1.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Repo Settings as Code GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file to GitHub repositories. It provides a loud, stateless replacement for the Probot Settings app, which also handles rulesets (branch, tag, and push). The action ensures that every apply is visible and fails with API error messages, ensuring no silent failures occur. It supports setting up fine-grained Personal Access Tokens (PATs) as repository secrets, using them to manage permissions and settings declaratively in YAML format.
---


Version updated for **https://github.com/Vivswan/repo-settings-as-code** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repo-settings-as-code) to find the latest changes.

## Action Summary

The Repo Settings as Code GitHub Action automates the application of declarative repository settings from a `.github/settings.yml` file to GitHub repositories. It provides a loud, stateless replacement for the Probot Settings app, which also handles rulesets (branch, tag, and push). The action ensures that every apply is visible and fails with API error messages, ensuring no silent failures occur. It supports setting up fine-grained Personal Access Tokens (PATs) as repository secrets, using them to manage permissions and settings declaratively in YAML format.

## What's Changed

## Repo Settings as Code: First release.

Apply declarative repository settings from `.github/settings.yml`: a stateless replacement for the Probot Settings app.

- Sections: repository fields, labels, rulesets, branch protection, environments, autolinks, Actions permissions, workflow state, Pages, code scanning default setup, collaborators, teams, and milestones.
- Every apply is a visible workflow run; failures are loud.
- `mode: check` reports drift and writes nothing.
- Apply reads first and writes only what differs: a converged repository gets zero writes, and a second apply is a no-op.
- Multi-repo mode manages a whole fleet from one admin repository.

Setup and the full section reference: [README](https://github.com/Vivswan/repo-settings-as-code#readme).

## 1.0.0 (2026-07-22)


### Features

* actionable errors, per-call debug tracing, and coverage docs ([fe9c9c5](https://github.com/Vivswan/repo-settings-as-code/commit/fe9c9c51b565f740a76324533e0eb3c34bd57a9f))
* add discovery filters for multi-repo "*" mode ([1d6531f](https://github.com/Vivswan/repo-settings-as-code/commit/1d6531f22b8d46a088b4e0f017eb1e67d080a1a2))
* adopt octokit, actions/core, and zod for transport, IO, and validation ([ff89bb6](https://github.com/Vivswan/repo-settings-as-code/commit/ff89bb6d3500b6917c3adc0a4a6f4118d397ab39))
* api-version input, self-updating pre-commit, bundle-freshness test ([a836718](https://github.com/Vivswan/repo-settings-as-code/commit/a83671815b3bce667f0784ff5befe950fd0c552d))
* apply own settings with the action at HEAD ([4dac8fc](https://github.com/Vivswan/repo-settings-as-code/commit/4dac8fc756ec7bffb439896a92febbf6028a263a))
* declarative section permissions and endpoint dictionaries ([de24164](https://github.com/Vivswan/repo-settings-as-code/commit/de2416411d32eda6f38c145890a8d8091ea3a5a2))
* five new settings surfaces, audit fixes, and structural refactors ([30e2dd2](https://github.com/Vivswan/repo-settings-as-code/commit/30e2dd2e932776302d563536282a5e7f969aa62b))
* forward-compatible key routing in the actions section ([1818569](https://github.com/Vivswan/repo-settings-as-code/commit/1818569cad66a37d174090dada741e058ee13307))
* full passthrough in every section plus coverage inventory ([34f108a](https://github.com/Vivswan/repo-settings-as-code/commit/34f108a30e5f925e783e17279be8abeadbb42c4d))
* initial settings-as-code action ([6e4857f](https://github.com/Vivswan/repo-settings-as-code/commit/6e4857f78bf37304a3e115b42f6c4b99a2018cf7))
* multi-repo mode with central files, remote settings, and a defaults layer ([04b379e](https://github.com/Vivswan/repo-settings-as-code/commit/04b379e10e236e753eed740d27c3f809b526d2ed))
* node24 runtime and husky pre-commit hook ([ba04830](https://github.com/Vivswan/repo-settings-as-code/commit/ba04830806226425d9e8b3375ff2651a26d78e73))
* preflight barrier makes strict applies all-or-nothing ([a92173f](https://github.com/Vivswan/repo-settings-as-code/commit/a92173fe5ada43a5bbc3602ae332a9d30b1a4e6e))
* publish generated settings.yml JSON Schema ([b706fa9](https://github.com/Vivswan/repo-settings-as-code/commit/b706fa9287569b0d9c7be7e4a073e28d4e0e3419))


### Bug Fixes

* enforce read-only preflight probes and guard check-mode purity ([009def9](https://github.com/Vivswan/repo-settings-as-code/commit/009def97ad53a5ab84416cc4416a930a21c67ba9))
* environments PUT status and write-throttle scaling, found by the new e2e fuzz harness ([b032024](https://github.com/Vivswan/repo-settings-as-code/commit/b03202487bb0e0149b34304464cfe2ca08ea615a))
* escape backslashes before pipes in the summary table ([6684569](https://github.com/Vivswan/repo-settings-as-code/commit/668456951edcad3701955467d082a56f7f7928e0))
* format the e2e mock files that landed mid-refinement ([8911068](https://github.com/Vivswan/repo-settings-as-code/commit/89110689a6b2476c663fb3f0ea8a9a292139fe0f))
* make the unrecognized actions-key note mode-aware and name the enabled value ([1d3bc0a](https://github.com/Vivswan/repo-settings-as-code/commit/1d3bc0a4c78dd76854e7eb119438dd6a86e7c2c0))
* pin bun via .bun-version so CI rebuilds the bundle byte-identically ([4e7f2bc](https://github.com/Vivswan/repo-settings-as-code/commit/4e7f2bcf59d5d477e1bb6727ba5c3bf33dcadbdf))
* print the final result on stdout ([76b258d](https://github.com/Vivswan/repo-settings-as-code/commit/76b258d05785ea3d5fbed0ca62329811ae4a5557))
* rate-limit discovery advice, shared constants, docs pinned to code ([cf8f291](https://github.com/Vivswan/repo-settings-as-code/commit/cf8f291ca25222b28c8d6db1e28b14e387153714))
* reject duplicate ruleset and branch declarations before any API call ([441ed49](https://github.com/Vivswan/repo-settings-as-code/commit/441ed4956f95272517bdf058286c78e5a2acdb50))
* shape-check the fields section handlers dereference ([c9a8585](https://github.com/Vivswan/repo-settings-as-code/commit/c9a8585d16d8a18b790e71bef1704067d25fb991))
* teams org grading, nightly issue auto-assignment, and fuzz artifact hygiene ([f0378f0](https://github.com/Vivswan/repo-settings-as-code/commit/f0378f0c0e641978bf387c60bedf6471f4af652b))
* unique marketplace name and shorter description ([9508134](https://github.com/Vivswan/repo-settings-as-code/commit/9508134821b3197a81476bc4033ebebd413bc239))

**Full Changelog**: https://github.com/Vivswan/repo-settings-as-code/commits/v1.0.0
