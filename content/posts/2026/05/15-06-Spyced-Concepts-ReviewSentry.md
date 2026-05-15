---
title: ReviewSentry
date: 2026-05-15 06:31:29 +00:00
tags:
  - Spyced-Concepts
  - GitHub Actions
draft: false
repo: https://github.com/Spyced-Concepts/ReviewSentry
marketplace: https://github.com/marketplace/actions/reviewsentry
version: v0.3.2-beta
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Spyced-Concepts/ReviewSentry** to version **v0.3.2-beta**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reviewsentry) to find the latest changes.

## Action Summary

**ReviewSentry** is a GitHub Action designed to automate security-focused code reviews on pull requests. It prioritizes detecting sensitive data disclosures, such as credentials or personal identifiers, before other issues are flagged, helping developers maintain secure codebases. The action supports multiple AI providers (e.g., GitHub Models, OpenAI, Anthropic) and allows custom scan rules, offering flexibility and accessibility without requiring additional dashboards or subscriptions.

## What's Changed

### [0.3.2-beta] — 2026-05-14

#### Security
Removed the @v0 floating tag to eliminate the supply-chain risk class. Floating tags are mutable — the maintainer (or anyone gaining write access) can rewrite where they point, and consumers' next run silently executes the new code with their secrets. SHA pinning is now the only supported pattern. See SECURITY.md.

#### Changed
All documentation now recommends SHA pinning with a version comment (Dependabot-readable). Tag pinning, including version tags, is no longer documented as a supported pattern.
Repository renamed from ai-pr-review to ReviewSentry to match the marketplace listing and the action's name: field. GitHub Actions does NOT redirect uses: references for renamed action repositories (deliberate security policy) — every consumer must update their uses: line to the new slug.
Documentation, issue/discussion templates, and code docstrings updated to use the current name ReviewSentry throughout. Historical CHANGELOG entries and UAT records preserved unchanged.
