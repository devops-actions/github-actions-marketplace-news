---
title: agentpreflight
date: 2026-05-06 15:05:51 +00:00
tags:
  - kaylacar
  - GitHub Actions
draft: false
repo: https://github.com/kaylacar/agentpreflight
marketplace: https://github.com/marketplace/actions/agentpreflight
version: v0.1.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kaylacar/agentpreflight** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentpreflight) to find the latest changes.

## Action Summary

**Summary:**  
`agentpreflight` is a pre-execution validation tool for AI agents that intercepts and evaluates tool calls before they are executed. It ensures security, correctness, and adherence to workflow rules by blocking unsafe operations (e.g., force-pushing to `main`, reading nonexistent files) and enforcing personal or project-specific guidelines like naming conventions and time estimation. With zero runtime dependencies, it provides composable, customizable rule sets for streamlined and disciplined agent behavior.

## What's Changed

agentpreflight is a pre-execution gate for AI tool calls: it validates the action an agent is about to run against live system state before the action executes.

v0.1.3 adds the GitHub Action wrapper, so CI can replay planned tool calls and fail a PR when any rule blocks.

Before an agent writes a file, runs a shell command, commits, pushes, or calls an external system, agentpreflight validates the planned tool call against the real state of the system at that moment.

If the action is unsafe, stale, or malformed, it blocks the call and returns a concrete correction.

Examples:
- A file write checks that the parent directory exists before dispatch.
- A `git commit` checks that staging actually contains changes.
- A read against a missing file fails before wasting a tool call.

How it is different:

Guardrails AI and NeMo Guardrails operate on model output or dialog behavior. agentpreflight operates on the tool call itself, before the action runs.

Microsoft's Agent Governance Toolkit wraps the agent runtime. agentpreflight is a small tool-call gate with zero runtime dependencies.

It also ships workflow rules, not just security checks.

agentpreflight ships with thirteen default rule sets: six security rule sets for filesystem, git, secrets, environment, network, and parallel execution, plus seven workflow rule sets for naming, scope, editorial discipline, session hygiene, time estimation, prewrite checks, and release safety.

Adapters cover Claude Code, Cursor, Codex, and OpenClaw.

