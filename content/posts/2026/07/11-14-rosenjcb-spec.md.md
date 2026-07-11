---
title: spec.md check
date: 2026-07-11 14:13:27 +00:00
tags:
  - rosenjcb
  - GitHub Actions
draft: false
repo: https://github.com/rosenjcb/spec.md
marketplace: https://github.com/marketplace/actions/spec-md-check
version: v0.3.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rosenjcb/spec.md** to version **v0.3.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-md-check) to find the latest changes.

## What's Changed

## @rosenjcb/spec-md v0.3.4

### Patch Changes

- Fix Claude Code plugin command names: files are action-only (`update.md`, `check.md`, `coverage.md`, `new.md`) so invocations are `/spec-md:update`, `/spec-md:check`, `/spec-md:coverage`, `/spec-md:new`. Previous `spec:update.md` / `spec-update.md` stems double-prefixed under plugin `spec-md`. Docs and a regression test lock the mapping.

### Install

```bash
npm install --save-dev @rosenjcb/spec-md@0.3.4
npx @rosenjcb/spec-md check
```

```yaml
- uses: rosenjcb/spec.md@v0.3.4
```

> **GitHub Action Marketplace:** automated releases do not check "Publish to Marketplace".
> On the first release, open the release in GitHub and enable marketplace publishing manually.
> See [RELEASING.md](https://github.com/rosenjcb/spec.md/blob/main/RELEASING.md).


## What's Changed
* Fix Claude plugin invocations to `/spec-md:<action>` by @rosenjcb in https://github.com/rosenjcb/spec.md/pull/10


**Full Changelog**: https://github.com/rosenjcb/spec.md/compare/v0.3.3...v0.3.4
