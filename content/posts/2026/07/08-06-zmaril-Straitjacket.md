---
title: Powderworks Straitjacket
date: 2026-07-08 06:17:56 +00:00
tags:
  - zmaril
  - GitHub Actions
draft: false
repo: https://github.com/zmaril/Straitjacket
marketplace: https://github.com/marketplace/actions/powderworks-straitjacket
version: v0.2.3
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/zmaril/Straitjacket** to version **v0.2.3**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/powderworks-straitjacket) to find the latest changes.

## What's Changed

### Fixed
- **`duplication` in Markdown** now honours `straitjacket-allow` markers too. A clone inside a doc's fenced code block carries a `:<lang>` tag on its source id (e.g. `docs.md:bash`), so the finding's path wasn't a real file — the suppression added in 0.2.2 couldn't open it and the marker was ignored. The `:<lang>` tag is now stripped, which also tidies the reported path.

**Install:** `curl -fsSL https://raw.githubusercontent.com/zmaril/straitjacket/main/install.sh | sh`

**Full changelog:** https://github.com/zmaril/straitjacket/compare/v0.2.2...v0.2.3

