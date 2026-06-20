---
title: Changelog Bot Runner Nyaomaru
date: 2026-06-20 22:09:58 +00:00
tags:
  - nyaomaru
  - GitHub Actions
draft: false
repo: https://github.com/nyaomaru/changelog-bot
marketplace: https://github.com/marketplace/actions/changelog-bot-runner-nyaomaru
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/nyaomaru/changelog-bot** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changelog-bot-runner-nyaomaru) to find the latest changes.

## What's Changed

## What's new 🚀

Opt-in WHY extraction adds concise reasoning beneath PR-linked changelog entries.

```md
- Add opt-in WHY extraction by @nyaomaru in [#138](...)
  - Why: Make release notes clearer by explaining why the change was needed.
```

WHY notes are generated only when the PR description contains sufficiently clear evidence. Unclear, low-confidence, automated, and external-repository PR entries are skipped.

### Sample implementation

CLI:

```sh
changelog-bot \
  --release-tag HEAD \
  --release-name 0.5.2 \
  --provider openai \
  --why \
  --why-confidence medium \
  --why-label Why
```

GitHub Action:

```yaml
- uses: nyaomaru/changelog-bot@v0
  with:
    release-tag: ${{ github.event.release.tag_name }}
    release-name: ${{ github.event.release.tag_name }}
    why: 'true'
    why-confidence: medium
    why-label: Why
  env:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
```

Configuration file:

```json
{
  "why": true,
  "whyConfidence": "medium",
  "whyLabel": "Why",
  "whyMaxPrs": 30,
  "whyMaxCharsPerPr": 800
}
```

WHY extraction is disabled by default. It supports OpenAI, Anthropic, and Gemini.

## What's Changed
* docs(changelog): 0.5.1 by @github-actions[bot] in https://github.com/nyaomaru/changelog-bot/pull/139
* feat: add opt-in WHY extraction by @nyaomaru in https://github.com/nyaomaru/changelog-bot/pull/138
* Release: 0.6.0 by @github-actions[bot] in https://github.com/nyaomaru/changelog-bot/pull/140


**Full Changelog**: https://github.com/nyaomaru/changelog-bot/compare/v0...v0.6.0
