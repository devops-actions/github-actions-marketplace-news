---
title: MIU PR Review
date: 2026-06-28 07:08:22 +00:00
tags:
  - vanducng
  - GitHub Actions
draft: false
repo: https://github.com/vanducng/miu-cr
marketplace: https://github.com/marketplace/actions/miu-pr-review
version: v0.57.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanducng/miu-cr** to version **v0.57.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miu-pr-review) to find the latest changes.

## What's Changed

## miu-cr v0.57.0

AI code review for local changes and GitHub pull requests. Use it as a CLI, CI gate, or GitHub Action with your own LLM key.

### Install

```sh
curl -fsSL https://cr.miu.sh/install.sh | sh -s -- v0.57.0
brew install vanducng/tap/miucr
go install github.com/vanducng/miu-cr/cmd/miucr@v0.57.0
```

GitHub Action:

```yaml
permissions:
  pull-requests: write

steps:
  - uses: actions/checkout@v6
  - uses: vanducng/miu-cr@v0.57.0
    with:
      api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

### Common commands

```sh
miucr login --provider openai
miucr review --staged
miucr review --from main --to HEAD --gate high
miucr review --pr owner/repo#123 --post
miucr upgrade
```

Docs: https://cr.miu.sh
