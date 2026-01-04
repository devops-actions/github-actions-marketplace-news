---
title: PI Action
date: 2026-01-04 13:10:31 +00:00
tags:
  - cv
  - GitHub Actions
draft: false
repo: https://github.com/cv/pi-action
marketplace: https://github.com/marketplace/actions/pi-action
version: v1.4.0
dependentsNumber: "?"
---


Version updated for **https://github.com/cv/pi-action** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-action) to find the latest changes.

## Action Summary

The `pi-action` GitHub Action integrates with the `pi coding agent` to automate responses and tasks on issues and pull requests, triggered by customizable phrases (default: `@pi`). It supports security-focused usage by restricting access to trusted users, enables automation workflows with bot allowlists, and provides features like code reviews with PR diffs and enforcing commit conventions. This action simplifies collaboration and automates repetitive developer tasks directly within GitHub workflows.

## Release notes

## Features

- **Customizable prompt templates**: Use placeholder variables like `{{title}}`, `{{task}}`, `{{diff}}` to customize how GitHub context is presented to the agent
- **Real-time tool execution logging**: See live feedback as the agent runs bash commands, reads/writes files
- **New documentation**: Added `examples/prompt-templates.md` with ready-to-use templates for code review, triage, security review, and more

## Usage

```yaml
- uses: cv/pi-action@v1.4.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    prompt_template: |
      # Task for {{type_display}} #{{number}}
      **Title:** {{title}}
      **Task:** {{task}}
```

See [examples/prompt-templates.md](examples/prompt-templates.md) for more templates.
