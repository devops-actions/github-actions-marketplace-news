---
title: ButtonMash Chaos Monkey
date: 2026-05-30 06:32:51 +00:00
tags:
  - cj-vana
  - GitHub Actions
draft: false
repo: https://github.com/cj-vana/buttonmash
marketplace: https://github.com/marketplace/actions/buttonmash-chaos-monkey
version: v0.1.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cj-vana/buttonmash** to version **v0.1.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/buttonmash-chaos-monkey) to find the latest changes.

## Action Summary

This GitHub Action, **buttonmash**, is a chaos testing tool for web applications that automates comprehensive UI testing by simulating user interactions such as clicking, typing, scrolling, and submitting forms. It helps identify critical issues like crashes, uncaught errors, and broken elements by crawling through web pages, triggering interactions, and generating actionable failure reports. Designed for deterministic and safe usage in test or staging environments, it integrates seamlessly into CI pipelines to ensure application robustness.

## What's Changed

## buttonmash 🐒 — a CI chaos monkey for web apps

buttonmash presses every button, mashes random keystrokes, and tries to break your UI — then reports what it found. It's **deterministic** (seeded, so any failure replays), **bounded** (action/time/depth budgets), and **safe by default** (won't submit destructive flows unless you opt in).

> **Now on the GitHub Actions Marketplace** as **ButtonMash Chaos Monkey**. (The Marketplace display name differs from the repo because a GitHub user already owns the `buttonmash` name — the `uses:` path below is unchanged.)

### Use it as a GitHub Action

```yaml
- uses: actions/checkout@v5
- uses: cj-vana/buttonmash@v0.1.8
  with:
    target: http://localhost:3000
    args: --seed ci --max-actions 800
    fail-on: high
```

The composite action installs the browser, runs buttonmash against your already-served app, fails the build on findings at or above `fail-on`, and uploads a `buttonmash-report/` artifact. Inputs: `target`, `args`, `version`, `node-version`, `browser`, `fail-on`, `upload-report`.

### What's in 0.1.x

- **Crash recovery** — survives navigations, target closes, and transient drops without aborting the run.
- **Auth & scoping** — custom headers, HTTP basic-auth, and path-scope restriction; scripted login / re-auth on session loss.
- **Broader reach** — shadow-DOM and iframe traversal, ARIA combobox handling, autonomous create-flow completion to self-populate forms.
- **Persisted config** — load deterministic settings from `buttonmash.config.ts`.
- **Native CI integration** — auto-detects GitHub Actions and emits inline annotations plus a job-summary report.

> **0.1.8** is the Marketplace-debut release: identical engine to 0.1.7, with a unique Marketplace listing name. Runs on Chromium, Firefox, or WebKit via Playwright. MIT licensed.

**npm:** `npm i -D buttonmash` · **Full docs:** see the [README](https://github.com/cj-vana/buttonmash#readme).

