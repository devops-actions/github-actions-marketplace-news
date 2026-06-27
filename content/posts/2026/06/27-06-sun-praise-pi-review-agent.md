---
title: Pi Review Agent
date: 2026-06-27 06:26:53 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## v1.1.0

Two changes since v1.0.2. Both ship in this release.

### ⚠️ Behavior change: default review language is now 中文

Reviews now output prose (summary, findings, suggestions) in **中文 by default**. To restore English output, set `language: en`:

```yaml
- uses: sun-praise/pi-review-agent@v1
  with:
    language: en   # or English, ja, 日本語, ko, fr, de, es, ru, ...
```

The verdict keywords (`CAN MERGE` / `CONDITIONAL MERGE` / `CANNOT MERGE`) always stay in English uppercase on the first line — they are parsed by machine and never translated. This is enforced in the prompt directive.

Short codes (`zh`, `en`, `ja`, `ko`, `fr`, `de`, `es`, `ru`, `cn`, `zh-cn`, `zh-tw`, `jp`) and full language names (`中文`, `English`, `日本語`, `Português`, ...) are both accepted. Unknown values pass through to the model as-is.

CLI: `--language zh` · env: `PI_REVIEW_LANGUAGE=zh`

### 🐛 Critical fix: coordinator was silently skipped in every action run (#3)

The coordinator synthesis step — the agent that merges and dedupes findings from all personas into a single verdict + summary — was **never actually running** in GitHub Actions. Every PR comment from v1.0.x came from the persona severity-vote fallback, not the coordinator.

**Root cause**: `Boolean(process.env.PI_REVIEW_SKIP_COORDINATOR)` treated the literal string `"false"` (GitHub Actions always stringifies env vars) as truthy, so the coordinator was permanently skipped whenever the action ran with the default input.

**Fix**: Parse the env var explicitly — only `"1"` or `"true"` (case-insensitive) skip the coordinator.

If you'd been wondering why review comments had no "Coordinator synthesis" block, this is why. After upgrading, comments will include the coordinator's merged/deduped findings.

### Upgrade notes

- The `@v1` moving tag now points to `v1.1.0`. No action needed if you pin `@v1`.
- If you pin `@v1.0.x`, bump to `@v1.1.0` (or `@v1`) to pick up both changes.
- To keep English reviews, add `language: en` to your workflow.

**Full changelog**: https://github.com/sun-praise/pi-review-agent/compare/v1.0.2...v1.1.0

