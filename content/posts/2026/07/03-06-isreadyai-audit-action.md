---
title: isreadyai — AI readiness audit
date: 2026-07-03 06:42:43 +00:00
tags:
  - isreadyai
  - GitHub Actions
draft: false
repo: https://github.com/isreadyai/audit-action
marketplace: https://github.com/marketplace/actions/isreadyai-ai-readiness-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/isreadyai/audit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/isreadyai-ai-readiness-audit) to find the latest changes.

## What's Changed

## Initial release 🎉
Audit how AI crawlers (GPTBot, ClaudeBot, PerplexityBot) read your site - straight from your CI.

### Highlights
- **Deep-crawl audit** of any URL, parsed exactly the way Al crawlers see it (no JS execution)
- **0-100 score + grade**, with the full per-page report written to the GitHub job summary
- **CI gate**: the step fails when the score drops below your `threshold`
- **Branch preview support**: boot your environment with `command`, scan it locally before it ships
- Optional **authenticated CI report + repo badge** on isready.ai with a Pro/Team `api-key` (OIDC-verified)
- Zero setup: pre-bundled, dependency-free - no install step at runtime

### Usage
```yaml
- name: AI readiness audit
   uses: isreadyai/audit-action@v1
   with:
     url: ${{ env.DEPLOY_URL }}
     threshold: 80
```
 
See the [README](https://github.com/isreadyai/audit-action#readme) for all inputs, outputs, permissions and security notes. Learn more at [isready.ai](https://isready.ai).
