---
title: No Autopilot
date: 2026-02-20 13:22:42 +00:00
tags:
  - eljojo
  - GitHub Actions
draft: false
repo: https://github.com/eljojo/no-autopilot
marketplace: https://github.com/marketplace/actions/no-autopilot
version: v1.0.1
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/eljojo/no-autopilot** to version **v1.0.1**.
- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/no-autopilot) to find the latest changes.

## Action Summary

The **no-autopilot** GitHub Action enforces human ownership and accountability in pull requests by detecting AI-generated content and ensuring contributors actively engage with their changes. It automates checks for AI attributions, unfilled PR template sections, unchecked checklist items, and boilerplate text, while providing warnings or blocking submissions as needed. This action promotes thoughtful contributions and guides first-time contributors, streamlining collaboration while discouraging reliance on autopilot workflows.

## Release notes

## no-autopilot v1.0.1 - first release

PR guardrails that encourage human ownership of AI-assisted contributions. Use AI all you want — just don't submit on autopilot.

### What it does

- Detects AI co-author lines in commits and AI-generated footers in PR descriptions
- Checks for unfilled PR template sections and unchecked checklist items
- Includes an honesty trap that catches people who check every box without reading
- Welcomes first-time contributors with a pointer to your contributing guidelines

### The system

This action works best as part of four files that reinforce each other:

| File | Role |
|------|------|
| `CONTRIBUTING.md` | Sets expectations for humans |
| `AGENTS.md` | Tells AI tools to pause and inform the user |
| PR template | Turns expectations into checkboxes |
| This action | Enforces it all at CI time |

### Quick start

```yaml
- uses: eljojo/no-autopilot@v1
```

See the README for the full setup and configuration options

