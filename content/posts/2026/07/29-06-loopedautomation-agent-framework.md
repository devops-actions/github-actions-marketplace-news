---
title: Run a Looped AF agent
date: 2026-07-29 06:53:44 +00:00
tags:
  - loopedautomation
  - GitHub Actions
draft: false
repo: https://github.com/loopedautomation/agent-framework
marketplace: https://github.com/marketplace/actions/run-a-looped-af-agent
version: v0.12.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Looped Agent Framework is an AI-driven agent framework that allows developers to build and deploy event-driven, contained agents in a Docker container. It provides tools for defining and running agents using YAML configuration files, supports various triggers (Discord, Slack, Telegram, webhooks, cron), and offers features like deny-by-default permissions, GitHub Action integration, and budgeting by default.
---


Version updated for **https://github.com/loopedautomation/agent-framework** to version **v0.12.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-a-looped-af-agent) to find the latest changes.

## Action Summary

Looped Agent Framework is an AI-driven agent framework that allows developers to build and deploy event-driven, contained agents in a Docker container. It provides tools for defining and running agents using YAML configuration files, supports various triggers (Discord, Slack, Telegram, webhooks, cron), and offers features like deny-by-default permissions, GitHub Action integration, and budgeting by default.

## What's Changed

## Highlights

- **Claude subscription auth** — the anthropic provider accepts `sk-ant-oat` OAuth tokens from `claude setup-token` (Bearer + oauth beta header), with a `CLAUDE_CODE_OAUTH_TOKEN` fallback. Draws from your Claude Pro/Max plan instead of metered billing; see the disclaimer in docs/anthropic.md.
- **Deploy from the terminal** — `af login`, `af deploy`, `af agents`, `af status` drive the Looped Agents hosted platform. v1 deploys GitHub-connected repos: `af deploy` matches your checkout by remote/branch/handle and ships the branch head.
- **release-bot example** — a release manager that delegates the heavy work to headless `claude -p` runs inside the container: the reference for the embedded-CLI pattern.
- **Config** — optional `name` display field; `requiredEnvRefs` exposes the full boot-time env list for deploy surfaces.


## What's Changed
* feat(core): optional name field — operators can set the agent's display name by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/163
* feat(core): optional name field for agent display name by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/164
* feat(providers): Claude subscription OAuth auth for the anthropic provider by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/165
* feat(cli): af login/deploy/agents/status — deploy to Looped Agents from the terminal by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/166
* release: v0.12.0 by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/167
* release: v0.12.0 to main by @RatulMaharaj in https://github.com/loopedautomation/agent-framework/pull/168


**Full Changelog**: https://github.com/loopedautomation/agent-framework/compare/v0...v0.12.0
