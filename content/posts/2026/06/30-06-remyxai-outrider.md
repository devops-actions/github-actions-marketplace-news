---
title: Remyx Outrider
date: 2026-06-30 06:41:56 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.6.27
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.6.27**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Changes since v1.6.26

### Startup auth-env validation

A misconfigured \`ANTHROPIC_API_KEY\` or \`ANTHROPIC_AUTH_TOKEN\` secret used to surface as an opaque HTTP 401 after a full run of clone + spec-bundle work — sometimes minutes of wasted time and tokens before the operator saw what went wrong. The new startup check runs before any agent call and surfaces the most common misconfigs immediately:

- **Missing auth var for the configured backend** — hard fail with a clear ERROR.
- **Literal \`-\` value** — the classic \`gh secret set --body -\` stdin-disconnect ambiguity. Hard fail, ERROR includes the fix-it command (\`gh secret set ... < /tmp/key\`).
- **Suspiciously short value** (length < 8) — hard fail; any plausible API key is longer.
- **Leading/trailing whitespace** — warn and use the stripped value.
- **Both \`ANTHROPIC_API_KEY\` and \`ANTHROPIC_AUTH_TOKEN\` set non-empty under a non-default backend** — warn (Claude Code prefers \`x-api-key\` which non-Anthropic backends typically reject).

### Privacy invariant

The diagnostic line carries only \`length=N sha8=XXXXXXXX\` — the secret value itself is never echoed into the GitHub Actions log, even on hard-fail paths. Safe to run on public repos without leaking misconfigured-but-real keys.
