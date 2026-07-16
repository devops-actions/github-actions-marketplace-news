---
title: OSuite Governed Action
date: 2026-07-16 14:55:33 +00:00
tags:
  - OndCo
  - GitHub Actions
draft: false
repo: https://github.com/OndCo/osuite-governed-action
marketplace: https://github.com/marketplace/actions/osuite-governed-action
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the governance of GitHub Actions by creating an OSuite action envelope that includes runtime context and applies policies before the workflow continues. It allows teams to track actions in OSuite, manage approvals, and ensure compliance with governance rules. The action emits outputs for decision, replay link, and proof URL, enhancing transparency and accountability in CI/CD workflows.
---


Version updated for **https://github.com/OndCo/osuite-governed-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/osuite-governed-action) to find the latest changes.

## Action Summary

This GitHub Action automates the governance of GitHub Actions by creating an OSuite action envelope that includes runtime context and applies policies before the workflow continues. It allows teams to track actions in OSuite, manage approvals, and ensure compliance with governance rules. The action emits outputs for decision, replay link, and proof URL, enhancing transparency and accountability in CI/CD workflows.

## What's Changed

Initial public release of OSuite Governed Action.

This release adds a GitHub Actions gate for teams that want high-impact workflow steps to pass through OSuite before execution.

Included in v0.1.0:
- Create OSuite governed action records from GitHub Actions workflows.
- Send repository, ref, commit, workflow, actor, run id, target, reversibility, and declared goal to OSuite.
- Support enforce mode and observe mode.
- Wait for OSuite approval when a workflow requires human review.
- Fail safely when OSuite blocks an action.
- Emit decision, action id, risk score, action hash, replay URL, and proof bundle URL.
- Add dry-run mode for safe CI validation.
- Include examples for production deployment gates and pull request review workflows.

Recommended use cases:
- Production deployments
- Release workflows
- Infrastructure changes
- Database migrations
- AI-assisted engineering workflows
- High-risk CI/CD automation requiring approval, replay, or evidence
