---
title: Diffly PR triage
date: 2026-08-21 21:51:10 +00:00
tags:
  - VIVAAN-DHAWAN
  - GitHub Actions
draft: false
repo: https://github.com/VIVAAN-DHAWAN/diffly-cli
marketplace: https://github.com/marketplace/actions/diffly-pr-triage
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The diffly GitHub Action helps developers review large, AI-generated pull requests by providing a comprehensive one-page report with a verdict, risk flags, checks, and a blast-radius map. It automates the task of identifying changes in files, symbols, dependencies, and tests, making it easier to quickly assess the impact of a PR before further review is needed.
---


Version updated for **https://github.com/VIVAAN-DHAWAN/diffly-cli** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diffly-pr-triage) to find the latest changes.

## Action Summary

The diffly GitHub Action helps developers review large, AI-generated pull requests by providing a comprehensive one-page report with a verdict, risk flags, checks, and a blast-radius map. It automates the task of identifying changes in files, symbols, dependencies, and tests, making it easier to quickly assess the impact of a PR before further review is needed.

## What's Changed

## Highlights

### New: `diffly local` — offline triage for any folder
Analyze git changes on your own disk with zero network access — works for **private, archived, or removed** repositories:

```bash
diffly local                      # uncommitted working-tree changes
diffly local ~/code/private-repo  # any checkout on disk
diffly local --base main          # compare your branch against main
```

Same deterministic pipeline as PR triage: changed-file inventory, Tree-sitter symbol detection, blast-radius map, and risk rules. Untracked files are included; CI-check rules are skipped as not applicable.

### UX overhaul
- **Centered terminal composition** across the wizard, setup walkthrough, interactive review, doctor, and version screens
- Wizard prompts for a **Repository URL** with explicit format hints (`owner/repo` or paste any GitHub / pull-request URL)
- **Loading spinners** with progress messaging during fetch and explanation phases
- Pasting a full pull-request URL skips the number prompt entirely

### Fixed: explanations were invisible
The interactive view never rendered the generated explanation even when produced. It is now a toggleable section in the interactive screen, with clear setup guidance when no LLM key is configured.

### Engine fixes
- `CHECKS_PENDING` evidence lists real check names instead of the literal state string
- `\\ No newline at end of file` markers no longer skew changed-line attribution
- Action comment publishing uses typed `GitHubApiError` instead of string-matching error text
- JSON output is pure again — banners suppressed under `--json`
- Bare `diffly` no longer hangs in non-TTY environments; Windows imports fixed via lazy termios loading

### License & community files
- LICENSE expanded from bare MIT to a documented four-part license (same MIT grant + definitions, contribution terms, verdict disclaimers, extended warranty/liability, general terms)
- Added CONTRIBUTING.md, SECURITY.md, CHANGELOG.md

**Full changelog:** https://github.com/VIVAAN-DHAWAN/diffly-cli/blob/main/CHANGELOG.md
