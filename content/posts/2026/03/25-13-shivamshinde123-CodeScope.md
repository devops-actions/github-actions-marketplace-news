---
title: CodeScope PR Visualizer
date: 2026-03-25 13:43:02 +00:00
tags:
  - shivamshinde123
  - GitHub Actions
draft: false
repo: https://github.com/shivamshinde123/CodeScope
marketplace: https://github.com/marketplace/actions/codescope-pr-visualizer
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/shivamshinde123/CodeScope** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codescope-pr-visualizer) to find the latest changes.

## Action Summary

CodeScope is a GitHub Action that automates the generation of visual Mermaid diagrams for pull requests, providing a clear and concise representation of code changes. It analyzes PR diffs, evaluates file relationships and impacts using the Anthropic Claude API, and posts a color-coded flowchart as a PR comment. This action streamlines code review processes by giving reviewers an at-a-glance understanding of the scope and structure of changes, saving time and enhancing collaboration.

## Release notes

# CodeScope v1.0.0

Automatically generate visual Mermaid diagrams for pull requests to help reviewers understand the scope of changes at a glance.

## Features

- **Diff Parsing** — Fetches PR diffs via GitHub API and parses with `unidiff` to extract file metadata
- **Claude-Powered Analysis** — Sends structured change data to Claude, which generates color-coded Mermaid flowchart diagrams
- **Auto PR Comments** — Posts the diagram as a comment on the PR; updates existing comment on re-runs (no duplicates)
- **Graceful Degradation** — Falls back to text-only summary if Claude API is unavailable
- **Color-Coded Nodes** — Green (added), orange (modified), red (deleted), blue (renamed)
- **Directory Grouping** — Files grouped by directory using Mermaid subgraphs
- **Large PR Support** — Handles PRs with up to 500 files; truncates gracefully beyond that

## Quick Start

1. Add `ANTHROPIC_API_KEY` as a repository secret
2. Create `.github/workflows/codescope.yml`:

```yaml
name: CodeScope PR Visualizer

on:
  pull_request:
    types: [opened, synchronize, reopened]

permissions:
  contents: read
  pull-requests: write

jobs:
  visualize:
    runs-on: ubuntu-latest
    steps:
      - uses: shivamshinde123/CodeScope@v1.0.0
        with:
          anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

## Example

![CodeScope diagram](https://github.com/shivamshinde123/CodeScope/blob/master/assets/codescope-diagram-example.png?raw=true)
