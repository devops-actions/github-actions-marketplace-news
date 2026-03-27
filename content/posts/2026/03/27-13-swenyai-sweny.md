---
title: SWEny AI
date: 2026-03-27 13:56:20 +00:00
tags:
  - swenyai
  - GitHub Actions
draft: false
repo: https://github.com/swenyai/sweny
marketplace: https://github.com/marketplace/actions/sweny-ai
version: v4.0.1.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/swenyai/sweny** to version **v4.0.1.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sweny-ai) to find the latest changes.

## Action Summary

SWEny is a GitHub Action and workflow orchestration tool designed to automate AI-driven engineering tasks by executing workflows defined as Directed Acyclic Graphs (DAGs). It integrates with external services like GitHub, Sentry, Datadog, and Slack to monitor logs, analyze issues, create tickets, implement fixes, and open pull requests autonomously. Its key features include a deterministic DAG executor, built-in AI agent capabilities powered by Claude, and multiple entry points (GitHub Action, CLI, and a visual DAG editor) for streamlined development and monitoring.

## Release notes

## What's new

### Streaming & Live Progress (`@sweny-ai/core@0.1.1`)

- **`--stream` flag** — All commands (`triage`, `implement`, `workflow run`) now support `--stream` which outputs NDJSON `ExecutionEvent` objects to stdout. This is the foundation for Studio live visualization and automation consumers.
- **`node:progress` event** — New `ExecutionEvent` type that surfaces Claude's internal tool activity (tool names, elapsed times, summaries) through the observer pattern.
- **Live progress UX** — Triage command shows a multi-line activity block with spinner, elapsed time, and last 3 tool activities — updates in-place on TTY.
- **SDK streaming** — ClaudeClient handles `tool_progress` and `tool_use_summary` SDK events, piping them through `onProgress` callbacks to the executor and observer chain.

### Workflow Builder (`@sweny-ai/core`)

- `buildWorkflow` and `refineWorkflow` rewritten to use the Claude interface instead of raw API calls.

### Studio Enhancements (`@sweny-ai/studio`)

- AI chat panel replaces toolbox + prompt bar
- AI-assisted instruction generation
- Generate workflows from natural language prompts
- Toggleable skill pills in AI chat
- Enhanced instruction editor with AI actions
- Connection handles now visible and interactive
- New workflow button + Cmd+N shortcut

### Documentation

- Complete documentation rewrite: Getting Started, Workflows, GitHub Action, CLI, Studio, Skills, and Advanced sections
- New root README

### Version Bump

- Action version bumped from v3 → v4 to avoid confusion with legacy `@sweny-ai/engine` v3.x tags.
- Use `swenyai/sweny@v4` in your GitHub Actions workflows.

## Full changelog

https://github.com/swenyai/sweny/compare/v3...v4.0.1.1
