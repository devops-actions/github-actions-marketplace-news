---
title: spec.md check
date: 2026-08-02 06:16:11 +00:00
tags:
  - rosenjcb
  - GitHub Actions
draft: false
repo: https://github.com/rosenjcb/spec.md
marketplace: https://github.com/marketplace/actions/spec-md-check
version: v0.3.6
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **spec.md** is a framework that turns Markdown specifications into a shared source of truth between humans, coding agents, and CI. It ensures alignment by enforcing the structure and ensuring that every QA test case in a spec has a corresponding `[TC-N]` identifier, thus preventing drift between the system and its documentation.
---


Version updated for **https://github.com/rosenjcb/spec.md** to version **v0.3.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-md-check) to find the latest changes.

## Action Summary

**spec.md** is a framework that turns Markdown specifications into a shared source of truth between humans, coding agents, and CI. It ensures alignment by enforcing the structure and ensuring that every QA test case in a spec has a corresponding `[TC-N]` identifier, thus preventing drift between the system and its documentation.

## What's Changed

## @rosenjcb/spec-md v0.3.6

### Patch Changes

- Adopt ASD-STE100 Simplified Technical English as the house style for spec prose. The `spec-md new` scaffold now states the rules inline, and the skill, the docs, and the pizza-ts example are written to them.

### Install

```bash
npm install --save-dev @rosenjcb/spec-md@0.3.6
npx @rosenjcb/spec-md check
```

```yaml
- uses: rosenjcb/spec.md@v0.3.6
```

> **GitHub Action Marketplace:** automated releases do not check "Publish to Marketplace".
> On the first release, open the release in GitHub and enable marketplace publishing manually.
> See [RELEASING.md](https://github.com/rosenjcb/spec.md/blob/main/RELEASING.md).


## What's Changed
* Rewrite README for developer onboarding: commands, workflow, mermaid diagrams by @rosenjcb in https://github.com/rosenjcb/spec.md/pull/12
* Adopt ASD-STE100 Simplified Technical English as house style by @rosenjcb in https://github.com/rosenjcb/spec.md/pull/15


**Full Changelog**: https://github.com/rosenjcb/spec.md/compare/v0.3.5...v0.3.6
