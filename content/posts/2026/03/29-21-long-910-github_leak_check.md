---
title: GitHub Email Leak Check
date: 2026-03-29 21:51:01 +00:00
tags:
  - long-910
  - GitHub Actions
draft: false
repo: https://github.com/long-910/github_leak_check
marketplace: https://github.com/marketplace/actions/github-email-leak-check
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/long-910/github_leak_check** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-email-leak-check) to find the latest changes.

## Action Summary

The **github-leak-check** GitHub Action scans GitHub commits, file contents, and user profiles to detect non-`noreply` email addresses that may have been unintentionally exposed, and displays the results as a live status badge on your GitHub profile. It automates the process of identifying potential email leaks, helping users protect their privacy and avoid spam caused by exposed email addresses in past commits or public repositories. Key capabilities include daily automated scans, detection of leaks in commit history and files, and real-time status updates via a customizable badge.

## What's Changed

## GitHub Email Leak Check v0.1.0

Scan GitHub commits, file contents, and user profiles for non-`noreply` email addresses — and display the result as a live badge on your GitHub profile.

### Quick start (3 steps, no local setup)

1. **Fork** this repo
2. Add your PAT as `GH_PAT` secret (**Settings → Secrets → Actions**)
3. Enable **Actions** — scans run daily at 03:00 UTC automatically

Embed the live status card in your profile README:
\`\`\`markdown
![Email Leak Scan](https://raw.githubusercontent.com/USERNAME/github_leak_check/main/results/card.svg)
\`\`\`

Or use as a GitHub Action in any workflow:
\`\`\`yaml
- uses: long-910/github_leak_check@v1
  with:
    github-token: ${{ secrets.GH_PAT }}
\`\`\`

### What's included

- **Incremental scanning** — only new commits since the last run are checked (fast & cheap CI)
- **Accumulated commit leak tracking** — fingerprints persist across runs so old leaks are never silently lost
- **File & profile scan** — always checks current state on every run
- **`fix.py`** — interactive tool to replace emails, generate `.mailmap`, or rewrite history with `git filter-repo`
- **SVG status card** — embeddable in your GitHub profile README
- **Rate limit auto-cancel** — aborts CI instead of idling when rate limited
- **Multilingual docs** — README in English, 中文, 日本語
- **`workflow_dispatch` inputs** — run a full scan or reset fingerprints on demand from the Actions tab

### Security

- `results/leaks.json` is gitignored — real emails never committed
- `summary.json` stores only counts and email-free SHA-256 fingerprints
- `TARGET_EMAILS` secret value never written to committed files

See [CHANGELOG](https://github.com/long-910/github_leak_check/blob/main/CHANGELOG.md) for full details.
