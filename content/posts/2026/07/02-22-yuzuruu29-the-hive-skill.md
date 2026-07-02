---
title: Install The Hive Skill
date: 2026-07-02 22:12:41 +00:00
tags:
  - yuzuruu29
  - GitHub Actions
draft: false
repo: https://github.com/yuzuruu29/the-hive-skill
marketplace: https://github.com/marketplace/actions/install-the-hive-skill
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yuzuruu29/the-hive-skill** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-the-hive-skill) to find the latest changes.

## What's Changed

# The Hive Skill v0.1.0

Initial public release of **The Hive Skill**, an open-source autonomous multi-agent orchestration skill for agentic coders.

The Hive Skill turns one AI coding agent into a structured six-role council:

## Role Table

| Role | Responsibility |
|---|---|
| Queen | Coordinates the council, makes final decisions, and ensures the goal is met. |
| Scout | Explores the codebase and gathers necessary context. |
| Architect | Designs the solution and plans the changes. |
| Forger | Writes the code and implements the Architect's plan. |
| Sentinel | Validates the changes, runs tests, and ensures quality. |
| Scribe | Documents the process and writes the final report. |

## What is included

- `SKILL.md` core skill definition
- Six council role files
- Autonomous execution loop
- Token efficiency mode
- Compressed role output mode
- Default invocation behavior
- Anti-slop rules
- Validation rules
- Final and blocked report formats
- OpenCode / OpenCode Go adapter
- Claude Code adapter
- Codex adapter
- Generic `.agents` adapter
- Install scripts for Bash and PowerShell
- GitHub Action wrapper
- Security policy
- Apache-2.0 license

## Supported agentic coding workflows

The Hive Skill is designed for:

- OpenCode / OpenCode Go
- Claude Code
- Codex
- Generic `.agents` workflows
- `SKILL.md`-compatible agent runtimes

## Important note

Version `v0.1.0` provides **role-simulated orchestration** inside compatible agentic coding tools.

Real multi-model or real subagent execution depends on the runtime being used.

## Basic usage

Invoke the skill with a simple prompt:

```text
Use The Hive Skill to fix this.
