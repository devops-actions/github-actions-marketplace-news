---
title: DayBrief
date: 2026-03-15 13:31:45 +00:00
tags:
  - yoanbernabeu
  - GitHub Actions
draft: false
repo: https://github.com/yoanbernabeu/daybrief
marketplace: https://github.com/marketplace/actions/daybrief
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yoanbernabeu/daybrief** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/daybrief) to find the latest changes.

## Action Summary

DayBrief is a GitHub Action that automates the creation and delivery of AI-generated newsletters by aggregating content from RSS feeds, YouTube channels, and podcasts. It uses Gemini AI to summarize and synthesize new content, then delivers the cohesive newsletter via email without requiring server infrastructure. This tool simplifies content monitoring and newsletter production while providing features like an editable web dashboard and a sharable archive.

## Release notes

## DayBrief v0.1.0

First public release of DayBrief — an open-source CLI tool and GitHub Action that aggregates content from RSS feeds, YouTube channels, and podcasts, summarizes each source with Google Gemini AI, and delivers an automated HTML newsletter by email.

### Features

- **Multi-source aggregation**: RSS feeds, YouTube channels, podcasts
- **AI-powered analysis**: Two-pass Gemini integration (summarize each source, then synthesize a newsletter)
- **Automated delivery**: HTML email via SMTP
- **Incremental updates**: Only processes new content since last execution
- **GitHub Action**: Available as a reusable action for easy CI/CD integration
- **CLI commands**: `run` (full pipeline), `preview` (browser preview), `sources` (health check)

### Installation

Download the binary:
```bash
curl -sL https://github.com/yoanbernabeu/daybrief/releases/download/v0.1.0/daybrief-linux-amd64 -o daybrief
chmod +x daybrief
```

Or use as a GitHub Action:
```yaml
- uses: yoanbernabeu/daybrief@v0.1.0
  with:
    config: config.yaml
  env:
    GEMINI_API_KEY: ${{ secrets.GEMINI_API_KEY }}
    # ... other env vars
```

See [README](https://github.com/yoanbernabeu/daybrief#readme) for full documentation.
