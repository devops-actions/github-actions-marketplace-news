---
title: Spec Ops Action
date: 2025-12-08 05:19:55 +00:00
tags:
  - spec-ops-method
  - GitHub Actions
draft: false
repo: https://github.com/spec-ops-method/spec-ops-action
marketplace: https://github.com/marketplace/actions/spec-ops-action
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/spec-ops-method/spec-ops-action** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spec-ops-action) to find the latest changes.

## Release notes

# v1.0.1 - Initial Release

## First public release of Spec Ops Action
Automatically create GitHub issues when specification files are modified. Designed to support spec-first workflows where specifications drive implementation.

## Features

- Automatic Issue Creation — Detects changes to specification files and creates a GitHub issue for each modified file
- Flexible File Detection — Glob patterns for matching spec files with include/exclude support
- Rich Issue Content — Includes file diffs, commit links, PR links, and author information
- Customizable Templates — Use Handlebars templates to customize issue titles and bodies
- Configurable Metadata — Set labels, assignees, and milestones on created issues
- Dry-Run Mode — Test your configuration without creating actual issues

## Security

- Diff Sanitization — Optional HTML/Markdown escaping to prevent injection (enabled by default)
- Template Path Restrictions — Custom templates must be within the repository root
- Minimal Permissions — Requires only issues: write and contents: read

## Quick Start

```yaml
- uses: spec-ops-method/spec-ops-action@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```
## Documentation

See the README for full configuration options and examples.
