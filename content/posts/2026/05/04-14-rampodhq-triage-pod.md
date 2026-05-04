---
title: TriagePod Issue Triage
date: 2026-05-04 14:45:06 +00:00
tags:
  - rampodhq
  - GitHub Actions
draft: false
repo: https://github.com/rampodhq/triage-pod
marketplace: https://github.com/marketplace/actions/triagepod-issue-triage
version: v0.1.2
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/rampodhq/triage-pod** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/triagepod-issue-triage) to find the latest changes.

## Action Summary

TriagePod is a GitHub Action designed to streamline issue triage by analyzing newly opened issues and providing configurable intake guidance. It automates tasks such as detecting duplicates, verifying required information, classifying issues, suggesting or applying labels, and recommending discussion routing. By integrating these capabilities, TriagePod helps maintainers efficiently manage issues, ensure completeness, and improve the organization of repository workflows.

## What's Changed

TriagePod is a GitHub-native issue triage assistant for repositories that want faster, cleaner, and more consistent issue intake.

## What this release includes

This initial Marketplace release ships TriagePod as a Docker-based GitHub Action built with Python 3.12 and `uv`.

Core capabilities in this version:

- Duplicate suggestion detection against open issues
- Missing-information checks using repository-local YAML configuration
- Rules-first classification for bug, feature, docs, support, and other
- Label suggestions with optional auto-apply support
- Discussions routing suggestions when enabled
- Dry-run mode for safe rollout and testing
- Professional triage comment rendering
- Optional AI extension points with deterministic fallback behavior

## Repository and packaging

This release includes:

- Root `action.yml` metadata for GitHub Actions and Marketplace
- Docker-based action packaging
- Marketplace branding metadata
- README installation and usage guidance
- Example `triagepod.yml` configurations for different repository styles

## Configuration

TriagePod is configured per repository using:

```yaml
.github/triagepod.yml
```

The action supports configuration for:

- feature flags
- required fields
- duplicate detection behavior
- discussion routing
- comments
- automation
- label mapping
- optional AI settings

## Recommended first rollout

For first-time adoption, use dry-run mode:

```yaml
- uses: rampodhq/traige-pod@v0.1.2
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    config_path: .github/triagepod.yml
    dry_run: "true"
```

This allows teams to validate classification, missing-info checks, and duplicate suggestions before enabling live issue mutations.

## Notes

- This release targets `issues.opened` events for V1
- Auto-labeling is available but should be enabled conservatively
- AI is optional and not required for core functionality
