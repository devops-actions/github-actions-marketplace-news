---
title: Pi Review Agent
date: 2026-06-26 14:48:38 +00:00
tags:
  - sun-praise
  - GitHub Actions
draft: false
repo: https://github.com/sun-praise/pi-review-agent
marketplace: https://github.com/marketplace/actions/pi-review-agent
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sun-praise/pi-review-agent** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-review-agent) to find the latest changes.

## What's Changed

## What changed

v1.0.2 fixes two packaging issues found while publishing to the GitHub Marketplace:

- **action.yml description** trimmed to ≤125 characters (Marketplace limit).
- **Release notes** for v1.0.0 and v1.0.1 had stray backslashes from shell escaping in the publish step; this release uses clean notes, and the prior two were edited in place.

No behavior change vs v1.0.1.

## action.yml description (new)

> Multi-persona AI code review with cross-runner session resume. Runs N reviewers in parallel + a coordinator; posts one PR comment. LiteLLM/DeepSeek.

(123 characters)

## Upgrade

No breaking changes. Point at `@v1.0.2`:

```yaml
- uses: sun-praise/pi-review-agent@v1.0.2
  with:
    team: "quality:1,security:1,performance:1"
    model: "deepseek-v4-flash"
    litellm-url: ${{ secrets.LITELLM_URL }}
    litellm-api-key: ${{ secrets.LITELLM_API_KEY }}
```

## Full feature set

See [v1.0.0 release notes](https://github.com/sun-praise/pi-review-agent/releases/tag/v1.0.0).

