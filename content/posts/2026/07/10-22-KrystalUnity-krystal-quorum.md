---
title: Krystal Quorum Multi-AI Plan Review
date: 2026-07-10 22:52:10 +00:00
tags:
  - KrystalUnity
  - GitHub Actions
draft: false
repo: https://github.com/KrystalUnity/krystal-quorum
marketplace: https://github.com/marketplace/actions/krystal-quorum-multi-ai-plan-review
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KrystalUnity/krystal-quorum** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/krystal-quorum-multi-ai-plan-review) to find the latest changes.

## What's Changed

Krystal Quorum v0.7.0 adds an agent-native two-gate workflow: review the implementation plan before coding, then verify the resulting diff against the approved commitments.

## What's new

- Automatic two-gate policy packs for Claude Code, Codex, GitHub Copilot, Hermes, OpenClaw/Claw, and OpenCode.
- Bound plan approvals and verified implementation-diff review.
- Deterministic commitment extraction, evidence reconciliation, and persisted review receipts.
- A standalone `krystal-quorum diff` gate for local workflows and CI.
- Expanded CI coverage across Ubuntu and Windows on Python 3.11/3.12, plus macOS on Python 3.12.
- Internal SDD workspace artifacts are excluded from the public package and repository.

## Install

```bash
pip install --upgrade krystal-quorum
krystal-quorum demo
```

PyPI: https://pypi.org/project/krystal-quorum/0.7.0/
