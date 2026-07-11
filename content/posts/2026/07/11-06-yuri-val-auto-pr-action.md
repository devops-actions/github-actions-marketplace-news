---
title: Auto PR dev to main/master
date: 2026-07-11 06:06:35 +00:00
tags:
  - yuri-val
  - GitHub Actions
draft: false
repo: https://github.com/yuri-val/auto-pr-action
marketplace: https://github.com/marketplace/actions/auto-pr-dev-to-main-master
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yuri-val/auto-pr-action** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-pr-dev-to-main-master) to find the latest changes.

## What's Changed

Changes in this Release:
- feat: default to gpt-5.6-luna and tune prompt for GPT-5.6

- Switch the default model from gpt-5.4-mini to gpt-5.6-luna
- Rewrite the system prompt per the GPT-5.6 prompting guide: lean
  instructions, real newlines (previously literal \n sequences), clear
  output contract (summary + emoji sections, no title/preamble)
- Set reasoning_effort "low" and raise max_completion_tokens to 4096 so
  reasoning tokens don't starve the visible answer on large releases
- Expose pr_number as a composite action output via outputs.value
  (previously declared but never propagated)

Co-Authored-By: Claude Fable 5 <noreply@anthropic.com>

- fix: bound the model payload so large releases don't 400

A big release (the dev→master diff after a 256-commit feature branch merge)
produced a ~2.3MB diff. Capped at 1MB it was still ~300k+ tokens of dense
code+Cyrillic, overflowing the model's context window → OpenAI returned
HTTP 400 (context_length_exceeded), which the action reported only as the
opaque "OpenAI API request failed".

Changes:
- Build a compact, high-signal payload: commit log + per-file diffstat first,
  then the unified diff. The log/stat (~50KB here) always survive truncation.
- Lower the cap to a context-safe default (max_diff_bytes input, 200000) and
  truncate UTF-8-safely (head -c | iconv -f UTF-8 -t UTF-8 -c) so a multibyte
  char split mid-sequence can't yield invalid UTF-8 (another 400 cause).
- Drop the explicit temperature: 0.7 — the gpt-5 family only accepts the
  default, so a non-default value is itself a 400 risk; the default is fine
  for description generation.
- Capture the HTTP status + API error body (no more --fail-with-body swallow)
  so failures like context_length_exceeded are visible in the logs.

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>

