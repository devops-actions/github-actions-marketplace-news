---
title: reprompt lint
date: 2026-03-26 06:13:23 +00:00
tags:
  - reprompt-dev
  - GitHub Actions
draft: false
repo: https://github.com/reprompt-dev/reprompt
marketplace: https://github.com/marketplace/actions/reprompt-lint
version: v1.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/reprompt-dev/reprompt** to version **v1.5.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reprompt-lint) to find the latest changes.

## Action Summary

The `re:prompt` GitHub Action is designed to help users analyze, optimize, and manage AI-generated prompts and conversations effectively. It automates tasks such as scoring prompts based on research-backed dimensions, compressing prompts to save tokens, distilling key moments from conversations, and providing insights into personal usage patterns compared to best practices. Its capabilities include prompt quality scoring, data privacy tracking, in-depth analytics, and reusable templates, enabling users to enhance the clarity, efficiency, and structure of their AI interactions.

## Release notes

## What's new

**Instant dashboard** — just type `reprompt` to see your prompt health at a glance: total prompts, sessions, average score, top categories, and recent activity. New users see guided onboarding; returning users get instant intelligence.

**Session type detection** — `distill` now auto-classifies conversations (debugging, feature-dev, exploration, refactoring, config, learning) and adapts importance scoring per type. A debugging session weights error recovery higher; a feature-dev session weights semantic shifts.

**Signal quality fixes** — reduced false positives in position, length, and error_recovery scoring for more accurate conversation distillation.

**Command consolidation (23 → 20)** — `library`, `recommend`, and `trends` are deprecated. Their functionality lives in `report --smart` and `style --trends`.

## Upgrade

```bash
pip install --upgrade reprompt-cli
```

## Stats

- 1,397 tests, 95% coverage
- 8 adapters (Claude Code, Cursor, Aider, Gemini CLI, Cline, OpenClaw, ChatGPT, Claude.ai)
- 20 commands, 30+ research-backed features
- Zero-config, zero-network, <1ms per prompt

## Full changelog

See [CHANGELOG.md](https://github.com/reprompt-dev/reprompt/blob/main/CHANGELOG.md#150---2026-03-25)
