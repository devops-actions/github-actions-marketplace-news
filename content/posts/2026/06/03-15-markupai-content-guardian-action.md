---
title: Markup AI Content Guardian
date: 2026-06-03 15:41:55 +00:00
tags:
  - markupai
  - GitHub Actions
draft: false
repo: https://github.com/markupai/content-guardian-action
marketplace: https://github.com/marketplace/actions/markup-ai-content-guardian
version: v2.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/markupai/content-guardian-action** to version **v2.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/markup-ai-content-guardian) to find the latest changes.

## What's Changed

## ⚠️ v2 is a breaking release — migration guide

v2 talks to the Markup AI agentic API directly and runs the **style agent** per file. Most workflows migrate in two edits: **bump the version tag** and **replace the old style inputs** (`dialect`, `tone`, `style-guide`) with the single optional `style_guide`.

### Input changes at

| v1 input | v2 | What to do |
| --- | --- | --- |
| `markup_ai_api_key` | Unchanged | Keep as-is |
| `github_token` | Unchanged | Keep as-is |
| `dialect` *(required)* | **Removed** | Configure on your style guide at [console.markup.ai](https://console.markup.ai) |
| `tone` *(optional)* | **Removed** | Configure on your style guide at [console.markup.ai](https://console.markup.ai) |
| `style-guide` *(e.g. `ap`)* | **Replaced** by `style_guide` | Underscore name **and** new values — see below |
| `add_commit_status` | Unchanged | Keep as-is |
| `add_review_comments` | Unchanged | Keep as-is |
| `strict_mode` | Unchanged | Keep as-is |
| — | **New:** `paths` | Optional path whitelist |
| — | **New:** `dry_run` | Optional — run analysis but skip all GitHub writes |

Outputs (`event-type`, `files-analyzed`, `results`) keep their names; the `results` JSON shape changed (see note at bottom).

### 1. Bump the version

```diff
- uses: markupai/content-guardian-action@v1
+ uses: markupai/content-guardian-action@v2
```

### 2. Replace the style inputs

```yaml
with:
  markup_ai_api_key: ${{ secrets.MARKUP_AI_API_KEY }}
  github_token: ${{ secrets.GITHUB_TOKEN }}
  dialect: american_english
  tone: formal
  style-guide: ap
```

**After (v2):**
```yaml
with:
  markup_ai_api_key: ${{ secrets.MARKUP_AI_API_KEY }}
  github_token: ${{ secrets.GITHUB_TOKEN }}
  # dialect / tone / style guide rules now live on the style guide itself
  # at console.markup.ai. Omit style_guide to use the org default, or pin one:
  style_guide: "AP Style" # target ID or display name (case-insensitive); optional
```

> **⚠️ A find-and-replace of `style-guide` → `style_guide` is not enough.** The name changed from hyphen to underscore, **and** the accepted values changed: v1 took canonical names like `ap`/`chicago`; v2 takes a **style guide (target) ID or display name** from your org. Passing `ap` will fail unless you have a style guide named "ap".

`style_guide` is **optional** — set a default style guide in the console and omit it entirely. List valid values with:
```bash
curl -H "Authorization: Bearer $MARKUP_AI_API_KEY" \
  https://api.markup.ai/style-agent/targets | jq '.[] | {id, display_name, is_default}'
```

### 3. Expect risk-based scoring by default

- **Risk labels are always shown** — `🔴 High` / `🟡 Medium` / `🟢 Low` / `✅ No issues`, plus severity counts (`H:_ M:_ L:_`).
- **Numeric 0–100 scores appear only if your org has `style_agent_numeric_scoring` enabled.** No fabricated scores otherwise.
- If you gate branch protection on the **commit status**, its state is now derived from risk: `error` for High, `failure` for Medium, else `success`.

### Note for downstream consumers

`outputs.results` is still a JSON string but the per-file object shape changed. `scores` is `null` when numeric scoring is off, so guard for null before reading `scores.*`.
