---
title: GHAGGA Code Review
date: 2026-06-20 22:15:26 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v3.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/JNZader/ghagga** to version **v3.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## What's Changed

First publish of `ghagga-forge`. forge-agnostic abstraction decoupling ghagga from any single git host.

**CLI**
- `ghagga review --pr <n>` → post review summary to a GitHub PR (GITHUB_TOKEN/GH_TOKEN)
- `ghagga review --mr <n>` → post to a GitLab MR (GITLAB_TOKEN/GL_TOKEN), incl. self-hosted

**packages/forge** (new): ForgeAdapter port + GitHub/GitLab adapters + credential providers (TTL cache, in-job 401 recovery).
**Server**: review worker + webhook routed through the adapter (behavior-identical); SARIF stdout hygiene; full comment pagination.

Note: `--mr` (GitLab) is validated by unit/contract tests; live-instance E2E is the manual gate (gitlab-e2e.manual.test.ts).

Full notes: package CHANGELOGs.
