---
title: Agent Vigil
date: 2026-08-29 01:41:57 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.22.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil is a tool that ensures the integrity and accuracy of code changes by verifying them against predefined rules. It checks if a proposed commit or pull request complies with expected behavior, including ensuring that all necessary tests are run and that no unintended changes have been made to other parts of the codebase. The action can be used to ensure that tasks are completed correctly before they are merged into a repository.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.22.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil is a tool that ensures the integrity and accuracy of code changes by verifying them against predefined rules. It checks if a proposed commit or pull request complies with expected behavior, including ensuring that all necessary tests are run and that no unintended changes have been made to other parts of the codebase. The action can be used to ensure that tasks are completed correctly before they are merged into a repository.

## What's Changed

Agent Vigil v0.22.0 makes the first useful result visible in one command.

- `vigil protect` now chooses an immutable reviewed Action commit when no SHA is supplied.
- The first run reports `PREPARED — not active yet` instead of showing expected pre-commit doctor failures as if setup were broken.
- A disposable differential rehearsal proves that a real regression test fails on old code and passes on proposed code, while a planted weak test that passes on both versions is blocked.
- `vigil check <public-pr-url>` uses the exact commit embedded in the release package; a conflicting `--tool-ref` is rejected.
- Public distribution records now keep GitHub and npm publication states separate.

Exact main validation: https://github.com/sulmusic2-star/agent-vigil/actions/runs/33213167172

The attached package is built from commit `5925e8bcbaf97f08c8c840252f486e96bf3f9775`. Its SHA-256 is recorded in the attached checksum file. This GitHub release does not by itself prove npm or Marketplace publication, outside adoption, payment, or revenue.

