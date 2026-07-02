---
title: UnityInFlow Spec Compliance
date: 2026-07-02 22:14:20 +00:00
tags:
  - UnityInFlow
  - GitHub Actions
draft: false
repo: https://github.com/UnityInFlow/spec-ci-plugin
marketplace: https://github.com/marketplace/actions/unityinflow-spec-compliance
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/UnityInFlow/spec-ci-plugin** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unityinflow-spec-compliance) to find the latest changes.

## What's Changed

First stable Marketplace release of the UnityInFlow Spec Compliance action.

## What's included
- Typed `status` and `report` action outputs (matching the runtime `core.setOutput` calls)
- `injection-scanner-version` default bumped to `v0.0.2` — the tag carrying the Linux musl binaries the action downloads at runtime
- Deterministic committed `dist/` (no sourcemaps) guarded by a `git diff --exit-code dist/` staleness gate in CI
- Public/fork CI runs secretless on GitHub-hosted runners; release automation stays on org self-hosted runners
- Moving `v1` tag maintained automatically on release publish

## Usage
```yaml
- uses: UnityInFlow/spec-ci-plugin@v1
```
