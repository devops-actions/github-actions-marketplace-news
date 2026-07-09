---
title: memi design CI
date: 2026-07-09 22:38:02 +00:00
tags:
  - sarveshsea
  - GitHub Actions
draft: false
repo: https://github.com/sarveshsea/memi
marketplace: https://github.com/marketplace/actions/memi-design-ci
version: v2.4.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sarveshsea/memi** to version **v2.4.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/memi-design-ci) to find the latest changes.

## What's Changed

## Highlights

- **GitHub Action Marketplace-ready:** `action.yml` description shortened to 122 characters (Marketplace ≤125 limit). Branding: `layout` / `purple`.
- **CLI pin:** Action default `version` installs published `@memi-design/cli@2.4.0` (npm `2.4.1` publish is blocked on registry auth — package metadata in-repo is already `2.4.1`).
- **Grok Build (Grok 4.5):** `memi agent install grok-build` writes native `.grok/config.toml` + `.grok/skills/` (plus `.agents/skills/` mirror).
- **Skills ecosystem:** agent-first packaging patterns adapted from [emilkowalski/skills](https://github.com/emilkowalski/skills) with explicit craft-skill dependency links (no content copy).

## Marketplace publish (manual UI step remaining)

`gh` cannot set Marketplace categories. Finish here:

1. Open https://github.com/sarveshsea/memi/releases/tag/v2.4.1
2. Edit release → check **Publish this Action to the GitHub Marketplace**
3. Primary: **Code quality** · Secondary: **Continuous integration**
4. Confirm validation green → Publish

Floating major tag `v2` already points at `v2.4.1`.

## Install

```bash
npm i -g @memi-design/cli@2.4.0
uses: sarveshsea/memi@v2.4.1
memi agent install grok-build --project .
```

Full notes: CHANGELOG.md
