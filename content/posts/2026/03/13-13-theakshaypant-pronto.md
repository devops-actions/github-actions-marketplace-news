---
title: PROnto - Label-Based Cherry-Pick Automation
date: 2026-03-13 13:33:02 +00:00
tags:
  - theakshaypant
  - GitHub Actions
draft: false
repo: https://github.com/theakshaypant/pronto
marketplace: https://github.com/marketplace/actions/pronto-label-based-cherry-pick-automation
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/theakshaypant/pronto** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pronto-label-based-cherry-pick-automation) to find the latest changes.

## Action Summary

PROnto is a GitHub Action that automates the cherry-picking of merged pull requests to specified release branches, eliminating the need for manual and error-prone cherry-picking. By simply adding a label or creating a tracking issue, it handles single or batch cherry-picking, pushes changes directly, or creates pull requests for conflict resolution. This streamlines workflows for developers managing fixes or updates across multiple branches.

## Release notes

# PROnto v0.1.0 

> Get your **PR onto** release branches, *pronto*.                                                                          
                                                                                                                            
We're excited to announce the first release of **PROnto**, a GitHub Action that automates cherry-picking merged PRs to release branches. Just add a label, and walk away.                                                                          

## What is PROnto?
PROnto eliminates the tedious manual work of cherry-picking bug fixes and features across multiple release branches. Merge your PR to `main`, add a `pronto/release-1.0` label, and PROnto handles the rest—automatically cherry-picking commits,
creating branches, handling conflicts, and even managing Git tags.

## Key Features
### Single PR Cherry-Picking
- **Label-driven automation**: Add `pronto/release-1.0` to cherry-pick to existing branches
- **Automatic branch creation**: Use `pronto/release-2.0..main` to create a new branch and cherry-pick in one step
- **Smart conflict handling**: Automatic conflict PRs with resolution instructions
- **Git tag support**: Optionally create tags with `pronto/release-1.0?tag=v1.0.1`
### Batch Operations via Issues
- **Multi-PR processing**: Create tracking issues listing multiple PRs (`#123, #456, #789`)
- **Status tracking**: Live status table showing cherry-pick progress for each PR × branch combination
- **Conflict management**: Automatic conflict PRs with tracking issue integration
- **Centralized coordination**: One issue to track all backports for a release
### Safety & Code Review
- **PR-first workflow**: Default `always_create_pr: true` enforces code review on cherry-picks
- **Direct push option**: Set `always_create_pr: false` for trusted automated backports
- **Deduplication**: Idempotent processing prevents duplicate cherry-picks
- **Permission validation**: Validates repository access before operations
### Git Tag Automation
- **Automatic tagging**: Creates annotated tags with metadata when pushing directly
- **PR tag instructions**: Provides exact commands in PR description when review is required
- **Flexible tagging**: Optional per-branch tag specification
## Installation
Add `.github/workflows/pronto.yml` to your repository:
```yaml
name: PROnto
on:
  pull_request:
    types: [labeled, closed]
  issues:
    types: [opened, edited, labeled, closed]
permissions:
  contents: write
  pull-requests: write
  issues: write
jobs:
  pronto:
    runs-on: ubuntu-latest
    if: |
      (github.event_name == 'pull_request' && github.event.pull_request.merged == true) ||
      github.event_name == 'issues'
    steps:
      - uses: theakshaypant/pronto@v0.1
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
```
Required Repository Setting: Enable "Allow GitHub Actions to create and approve pull requests" in `Settings → Actions → General → Workflow permissions`.
## Quick Start
Cherry-pick a single PR
1. Merge your PR to main
2. Add label pronto/release-1.0
3. PROnto cherry-picks automatically
Batch cherry-pick multiple PRs
1. Create an issue listing PRs: #123, #456, #789
2. Add labels: pronto/release-1.0, pronto/release-2.0
3. PROnto processes all combinations and updates the issue with status
## Docker Image
This release is published to GitHub Container Registry:
- ghcr.io/theakshaypant/pronto:0.1.0
- ghcr.io/theakshaypant/pronto:0.1
- ghcr.io/theakshaypant/pronto:0
- ghcr.io/theakshaypant/pronto:latest


**Full Changelog**: https://github.com/theakshaypant/pronto/commits/v0.1.0
