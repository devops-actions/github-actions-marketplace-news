---
title: Agent Spec Guard
date: 2026-08-29 14:05:22 +00:00
tags:
  - pmcostadev
  - GitHub Actions
draft: false
repo: https://github.com/pmcostadev/spec-forge-action
marketplace: https://github.com/marketplace/actions/agent-spec-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action checks that key development context files exist, are more than a placeholder, and fit within the targeted context window. It fails builds when specs do not meet these criteria, ensuring that coding agents have comprehensive context for their tasks. The action supports customizing spec files, paths, and other settings to suit different development workflows.
---


Version updated for **https://github.com/pmcostadev/spec-forge-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-spec-guard) to find the latest changes.

## Action Summary

This GitHub Action checks that key development context files exist, are more than a placeholder, and fit within the targeted context window. It fails builds when specs do not meet these criteria, ensuring that coding agents have comprehensive context for their tasks. The action supports customizing spec files, paths, and other settings to suit different development workflows.

## What's Changed

First release.

Checks that your AI-agent spec files exist, are more than a stub, and fit
inside the context window you are targeting.

- Verifies PRD.md, ARCHITECTURE.md and DESIGN.md by default, or any file list you pass
- Flags specs below a word-count threshold as stubs
- Estimates the combined token count and warns when you go over budget
- Writes a report to the job summary, and optionally comments on the pull request
- Fails the build on a missing or hollow spec, or set fail-on-missing to false to report only

Composite action, no Node build step.

