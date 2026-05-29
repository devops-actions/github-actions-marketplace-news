---
title: Val QA scan
date: 2026-05-29 14:47:27 +00:00
tags:
  - Wakizara
  - GitHub Actions
draft: false
repo: https://github.com/Wakizara/val-action
marketplace: https://github.com/marketplace/actions/val-qa-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Wakizara/val-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/val-qa-scan) to find the latest changes.

## Action Summary

The "Val QA Scan" GitHub Action automates quality assurance testing for web applications by running Val, a browser-based QA agent, on pull request preview URLs. It identifies issues such as broken links, layout problems, accessibility violations, and other common defects, generating a detailed report as a PR comment. This action streamlines QA processes by providing multi-device testing, error detection, and actionable insights directly within the development workflow.

## What's Changed

> **Stop asking your friends to test your app.**
>
> Val is the QA agent you talk to in Cursor, Claude Code, or Codex. Ask your AI to check your build, Val opens a real browser, walks every flow, finds the bugs, your AI fixes them. Ship to green without bothering anyone.

## What this Action does

Runs Val against your preview deployment URL on every pull request and posts the findings as a single PR comment, updated in place across re-runs (no spam).

Val drives a real Chromium browser via Playwright and catches:

- Broken links and 4xx/5xx responses
- Uncaught JS errors and console errors
- Broken/missing images
- Horizontal layout overflow on mobile
- Clipped text in fixed containers
- Cumulative Layout Shift (janky load)
- A11y essentials: missing alt, unnamed buttons, unlabeled inputs, missing `<html lang>`
- Multi-device: bugs that appear only on mobile or only on desktop

## Quick start

```yaml
- uses: Wakizara/val-action@v1
  with:
    url: ${{ steps.deploy.outputs.url }}
    license-key: ${{ secrets.VAL_LICENSE_KEY }}
    devices: 'desktop,iPhone 14'
    fail-on: 'high'
```

## Use Val outside of CI too

This Action is one of three doors into the same Val engine. All three share the same license key, the same checks, and the same `val_review` one-shot tool:

- **In your IDE as an MCP server** (Cursor, Claude Code, Codex, Windsurf) — your AI agent calls Val directly when you ask it to check your build
- **In your terminal as a CLI** — `npm install -g @nyx-intelligence/val-mcp` then `VAL_LICENSE_KEY=vk_... val-mcp scan https://my-app.com`
- **In your GitHub Actions** — this repo

## Requires a Val subscription

Val is a paid product, $4.99 / month, cancel anytime. Subscribe at [val.nyx-intelligence.com](https://val.nyx-intelligence.com), store the key as a repo secret, pass it via `license-key`.

The Action wrapper in this repo is MIT-licensed. The underlying engine ([`@nyx-intelligence/val-mcp`](https://www.npmjs.com/package/@nyx-intelligence/val-mcp)) is subscription-gated.

See the [README](https://github.com/Wakizara/val-action#readme) for full input docs.

