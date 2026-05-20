---
title: Writulos Auto-Docs
date: 2026-05-20 23:14:08 +00:00
tags:
  - writulos
  - GitHub Actions
draft: false
repo: https://github.com/writulos/writulos-action
marketplace: https://github.com/marketplace/actions/writulos-auto-docs
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/writulos/writulos-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/writulos-auto-docs) to find the latest changes.

## Action Summary

The **Writulos Auto-Docs GitHub Action** automates the generation of markdown documentation for code files that are modified in a repository. It identifies changed files on each push or pull request, uses the Writulos API to create structured documentation, and either commits the generated docs to a specified directory or posts a summary in pull request comments. This action streamlines the process of maintaining up-to-date documentation and ensures that code changes are consistently documented.

## What's Changed

Automatically generate markdown documentation for every changed code file.

**On push to main/master** → docs committed directly to your `docs/` folder by the Writulos bot  
**On pull requests** → a bot comment lists every newly documented file

## Quick start
```yaml
- uses: Triumphist230/Writulos-final@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    writulos_secret: ${{ secrets.WRITULOS_ACTION_SECRET }}  # optional
```

## What's included
- Composite action — no Docker, no build step
- Supports `.js` `.ts` `.tsx` `.jsx` `.py` `.java` `.go` `.rb`
- Configurable output directory (default: `docs/`)
- Optional shared secret to protect your endpoint
- PR bot comment with links to all generated docs

No Writulos API key needed — it's a hosted service.
