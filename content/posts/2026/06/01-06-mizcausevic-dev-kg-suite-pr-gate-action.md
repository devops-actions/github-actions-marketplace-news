---
title: Kinetic Gain Suite PR Gate
date: 2026-06-01 06:50:43 +00:00
tags:
  - mizcausevic-dev
  - GitHub Actions
draft: false
repo: https://github.com/mizcausevic-dev/kg-suite-pr-gate-action
marketplace: https://github.com/marketplace/actions/kinetic-gain-suite-pr-gate
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mizcausevic-dev/kg-suite-pr-gate-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kinetic-gain-suite-pr-gate) to find the latest changes.

## Action Summary

The `kg-suite-pr-gate-action` is a GitHub Action designed to automate the review of JSON document changes in pull requests for repositories using the Kinetic Gain Suite. It identifies protocol-specific changes across five Suite protocols, performs diffs using appropriate tools, and consolidates the results into a single PR comment, highlighting breaking changes. This action simplifies PR review workflows by replacing the need for multiple individual steps with a unified, efficient solution.

## What's Changed

**First semver-versioned release** of the Kinetic Gain Suite PR Gate.

**One PR-gate Action, all five [Kinetic Gain Suite](https://suite.kineticgain.com/) protocols.** Walks the repo for changed JSON documents, identifies each one's protocol via `kg-protocol-detect`, dispatches to the right per-protocol diff (AgentCard / MCP Tool Card / prompt-provenance / evidence-bundle / OTel GenAI rollup), and posts a single consolidated PR comment with breaking changes flagged per protocol.

Replaces the "wire up five separate `*-diff-action`s" pattern with one workflow step.

**Pin in your workflow:**

​```yaml
uses: mizcausevic-dev/kg-suite-pr-gate-action@v0.1.0    # exact version
uses: mizcausevic-dev/kg-suite-pr-gate-action@v0.1      # floating major
​```

[Full README](https://github.com/mizcausevic-dev/kg-suite-pr-gate-action#readme) · AGPL-3.0-or-later · [Report an issue](https://github.com/mizcausevic-dev/kg-suite-pr-gate-action/issues)
