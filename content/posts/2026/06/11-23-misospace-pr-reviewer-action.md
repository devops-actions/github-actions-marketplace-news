---
title: Miso PR Review
date: 2026-06-11 23:46:41 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.6
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.6**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

Feature-bearing 1.2.x release (1.3.0 remains reserved for the native tool-calling work tracked in #197). No new inputs; no breaking changes.

## Features

- **The published `_Analysis engine:_` line now tells the routing story** (#218): in `review_routing_mode: auto`, the line distinguishes a deliberate smart-route from a post-review escalation from an availability fallback — three situations that previously looked identical apart from the model name, despite meaning very different things for cost and endpoint health:
  - `review@… (openai) — fast route`
  - `MiniMax-M2.7@… (anthropic) — routed smart (risk match: auth_changes)`
  - `MiniMax-M2.7@… (anthropic) — escalated (fast_low_confidence)`
  - `cheap-coder@… (openai) — fallback (primary failed)`

  The `analysis_engine` action output carries the same annotated string. With routing off, output is byte-identical to v1.2.5.
