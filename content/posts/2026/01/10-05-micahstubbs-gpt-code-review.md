---
title: GPT 5.x PR Reviewer
date: 2026-01-10 05:31:12 +00:00
tags:
  - micahstubbs
  - GitHub Actions
draft: false
repo: https://github.com/micahstubbs/gpt-code-review
marketplace: https://github.com/marketplace/actions/gpt-5-x-pr-reviewer
version: v3.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/micahstubbs/gpt-code-review** to version **v3.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-5-x-pr-reviewer) to find the latest changes.

## Action Summary

The **GPT 5.x PR Reviewer** is a GitHub Action and app designed to automate code reviews for pull requests using advanced OpenAI models like GPT-5.2. It streamlines the review process by providing AI-generated feedback on code changes, saving development time and ensuring code quality. Key capabilities include automatic reviews for new and updated pull requests, on-demand reviews via comments, and flexible configuration options for different models and review parameters.

## Release notes

## What's New

### On-Demand Code Reviews via `/gpt-review` Command

You can now trigger a code review on-demand by commenting `/gpt-review` on any open Pull Request. This is useful for:

- Re-reviewing after making changes
- Reviewing PRs that were opened before the app was installed
- Getting a fresh review on an existing PR

The bot will add an 👀 reaction to acknowledge the command, then post a review.

### User-Friendly Error Messages

When OpenAI API errors occur (quota exceeded, rate limits, invalid API key), the bot now posts helpful comments explaining:

- What went wrong
- How to fix it
- Direct links to [OpenAI Billing](https://platform.openai.com/settings/organization/billing/overview)

### GitHub Actions Workflow Update

If using the GitHub Action, update your workflow to include the `issue_comment` trigger:

```yaml
on:
  pull_request:
    types: [opened, reopened, synchronize]
  issue_comment:
    types: [created]

jobs:
  review:
    if: |
      github.event_name == 'pull_request' ||
      (github.event_name == 'issue_comment' &&
       github.event.issue.pull_request &&
       contains(github.event.comment.body, '/gpt-review'))
    # ... rest of your workflow
```

## Changes

- Add `issue_comment.created` event handler for `/gpt-review` trigger
- Refactor review logic into reusable `performReview()` function
- Add error detection for OpenAI API issues (quota, rate limit, auth)
- Post user-friendly error comments with links to fix issues
- Update README with on-demand review documentation
- Add beads issue tracking integration

## Upgrading

### GitHub App Users
No action needed - the update is automatic.

### GitHub Actions Users
Update your workflow file to include the `issue_comment` trigger (see above).

Update your action reference:
```yaml
- uses: micahstubbs/gpt-code-review@v3.1.0
```

Or use the floating tag for automatic minor updates:
```yaml
- uses: micahstubbs/gpt-code-review@v3
```

---

**Full Changelog**: [CHANGELOG.md](https://github.com/micahstubbs/gpt-code-review/blob/main/CHANGELOG.md#310---2026-01-09)
