---
title: PatchWitness Gate
date: 2026-08-13 14:12:37 +00:00
tags:
  - pangxueyuan2-creator
  - GitHub Actions
draft: false
repo: https://github.com/pangxueyuan2-creator/patchwitness
marketplace: https://github.com/marketplace/actions/patchwitness-gate
version: v0.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  PatchWitness is an independent evidence and policy gate for AI-generated code changes. It automates the verification of agent-authored patches by generating a verifiable Change Passport that checks scope, verifier integrity, test execution, secrets, dependency impact, and portable evidence. The action does not replace traditional AI reviewers but serves as a local-first, agent-neutral trust gate for ensuring high-quality code changes.
---


Version updated for **https://github.com/pangxueyuan2-creator/patchwitness** to version **v0.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchwitness-gate) to find the latest changes.

## Action Summary

PatchWitness is an independent evidence and policy gate for AI-generated code changes. It automates the verification of agent-authored patches by generating a verifiable Change Passport that checks scope, verifier integrity, test execution, secrets, dependency impact, and portable evidence. The action does not replace traditional AI reviewers but serves as a local-first, agent-neutral trust gate for ensuring high-quality code changes.

## What's Changed

## PatchWitness v0.2.1

This patch release fixes the v0.2.0 clean-room failure when a committed pull-request diff is applied in a disposable worktree. The release removes the invalid positional `-` argument from the `git apply` invocation and adds regression coverage for committed base-to-HEAD gating, Change Passport generation, and offline verification.

The GitHub Actions guide now requires repository-specific dependency setup and uses PatchWitness's real `.[dev]` path for its own example. No new runtime dependencies, integrations, or CLI features are included.

Validation completed before release: full tests with coverage gate, Ruff, mypy, Demo, package build and Twine validation, clean install, committed-PR clean-room gate, minimal and recommended profiles, plus strict protected-workflow blocking with PW003 and offline evidence verification.

PyPI publication is intentionally not part of this release.

