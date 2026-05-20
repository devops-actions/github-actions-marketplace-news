---
title: SkilLock CI
date: 2026-05-20 23:14:34 +00:00
tags:
  - skills-lock
  - GitHub Actions
draft: false
repo: https://github.com/skills-lock/skil-lock-action
marketplace: https://github.com/marketplace/actions/skillock-ci
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skills-lock/skil-lock-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillock-ci) to find the latest changes.

## Action Summary

The **skil-lock-action** is a GitHub Action designed to enforce and validate AI Skill behavior in continuous integration (CI) workflows. It automates the process of detecting and reporting capability changes (e.g., shell commands, network access, file operations) in AI Skills by comparing them against a defined policy in configuration files, and blocks unapproved changes when configured to do so. This ensures controlled and secure updates to AI-related functionality while maintaining transparency through PR comments.

## What's Changed

First public release. Composite GitHub Action wrapping the [skil-lock](https://github.com/skills-lock/skil-lock) CLI.

## What it does

On every pull request, this Action:

1. Downloads a pinned `skil-lock` release binary and verifies its SHA-256 against `checksums.txt`.
2. Runs `skil-lock ci` against the repo's committed `skills.lock` and `.skil-lock.yaml`.
3. Posts (or updates) a single PR comment showing every capability delta — new shell commands, new URLs, new file paths.
4. Fails the check when policy is `mode: block` and any delta is at severity ≥ medium.

## Quick start

```yaml
name: SkilLock
on: pull_request
permissions:
  contents: read
  pull-requests: write
jobs:
  skil-lock:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v6
      - uses: skills-lock/skil-lock-action@v0.1.0
        with:
          pin-binary: v0.1.0
```

## Inputs

| Input | Required | Default | Description |
|---|---|---|---|
| `pin-binary` | yes | — | `skil-lock` release tag (e.g. `v0.1.0`). No floating refs. |
| `comment` | no | `true` | Post or update a PR comment with the capability diff. |
| `path` | no | `.` | Repository root containing `.claude/skills/` or `.codex/skills/`. |

## Worked example

See [skills-lock/example-claude-code-skills](https://github.com/skills-lock/example-claude-code-skills) for a runnable demo, including an `example/drift` branch that shows what SkilLock catches when a skill grows risky behavior.

## Related

- [skills-lock/skil-lock](https://github.com/skills-lock/skil-lock) — the CLI and `skills.lock` file format
- [`skills.lock` v0.1 specification](https://github.com/skills-lock/skil-lock/blob/main/SPEC.md)

## License

[Apache 2.0](https://github.com/skills-lock/skil-lock-action/blob/main/LICENSE). Not affiliated with Skil power tools, Anthropic, or OpenAI.

