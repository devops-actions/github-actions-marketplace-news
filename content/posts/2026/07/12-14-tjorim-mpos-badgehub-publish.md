---
title: Publish to BadgeHub
date: 2026-07-12 14:43:37 +00:00
tags:
  - tjorim
  - GitHub Actions
draft: false
repo: https://github.com/tjorim/mpos-badgehub-publish
marketplace: https://github.com/marketplace/actions/publish-to-badgehub
version: v1.0.11
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tjorim/mpos-badgehub-publish** to version **v1.0.11**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-to-badgehub) to find the latest changes.

## What's Changed

Cleanup, no behavior change. CPython's \`stderr\` is always line-buffered/unbuffered by default regardless of tty status — \`fail()\`'s messages (the ones that mattered while chasing \`v1.0.6\`-\`v1.0.9\`'s bugs) never actually needed explicit flushing. \`stdout\` is what block-buffers when piped to a CI log, and that's handled globally now via \`python3 -u\` in \`action.yml\`'s invocation, rather than \`flush=True\` hand-added to every individual print call (easy to forget on a new one).
