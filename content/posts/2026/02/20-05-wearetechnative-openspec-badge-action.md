---
title: OpenSpec Badge
date: 2026-02-20 05:52:59 +00:00
tags:
  - wearetechnative
  - GitHub Actions
draft: false
repo: https://github.com/wearetechnative/openspec-badge-action
marketplace: https://github.com/marketplace/actions/openspec-badge
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wearetechnative/openspec-badge-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openspec-badge) to find the latest changes.

## Action Summary

The **openspec-badge-action** GitHub Action automates the generation of SVG badges displaying key metrics from [OpenSpec](https://openspec.dev) for a repository, including the number of specifications, requirements, open changes, and task completion status. This action provides a quick, visual summary of project health, helping teams track progress and manage structured changes effectively. It simplifies the process of integrating and maintaining dynamic project status indicators directly within a repository's README or documentation.

## Release notes

## Added
- Composite GitHub Action that generates SVG badges for OpenSpec metrics
- Four supported metrics: `number_of_specs`, `number_of_requirements`, `tasks_status`, `open_changes`
- Badge styles: `classic` (gradient) and `flat` (solid)
- OpenSpec pixel-art "OS" logo embedded in badges
- Automatic deployment to `gh-pages` branch with retry logic
- Color-coded badges based on project health
- CI workflow for dogfooding the action
