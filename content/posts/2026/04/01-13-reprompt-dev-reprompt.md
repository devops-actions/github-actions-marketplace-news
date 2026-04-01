---
title: reprompt lint
date: 2026-04-01 13:57:32 +00:00
tags:
  - reprompt-dev
  - GitHub Actions
draft: false
repo: https://github.com/reprompt-dev/reprompt
marketplace: https://github.com/marketplace/actions/reprompt-lint
version: v2.2.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/reprompt-dev/reprompt** to version **v2.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reprompt-lint) to find the latest changes.

## Action Summary

The `re:prompt` GitHub Action provides tools to analyze, score, and optimize AI prompts to improve their clarity, structure, and effectiveness without relying on large language models. It automates tasks such as diagnosing prompt quality, rewriting prompts for improved performance, compressing prompts to save tokens, and detecting inefficiencies in workflows or repeated prompts across sessions. Its key capabilities include research-backed scoring, configurable linting, and comprehensive prompt management for enhanced AI interactions.

## What's Changed

### MCP Server: 6 → 9 tools
- `check_prompt_quality` — full diagnostic (score + lint + rewrite)
- `build_prompt_from_parts` — construct prompts from components
- `explain_prompt_quality` — educational plain-English analysis

### File input
All prompt commands now accept `--file`:
```bash
reprompt check --file prompt.txt
reprompt score --file my-prompt.md --json
reprompt rewrite --file draft.txt --diff
```

Also supports stdin with `-`:
```bash
echo "fix the bug" | reprompt check -
```

**1,864 tests** · `pip install --upgrade reprompt-cli`
