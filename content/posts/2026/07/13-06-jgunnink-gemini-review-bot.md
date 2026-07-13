---
title: Gemini code review
date: 2026-07-13 06:23:38 +00:00
tags:
  - jgunnink
  - GitHub Actions
draft: false
repo: https://github.com/jgunnink/gemini-review-bot
marketplace: https://github.com/marketplace/actions/gemini-code-review
version: v1.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jgunnink/gemini-review-bot** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gemini-code-review) to find the latest changes.

## What's Changed

## What's changed

- **New `instructions` action input** — extra review guidance can now be passed directly in the workflow under `with:`, mirroring how `model` works. It overrides the `instructions` key in `.github/gemini-review.yml` when both are set. (#8, fixes #7)
- **No more hallucinated "this version doesn't exist" findings** — the prompt now forbids flagging version numbers, action tags, dependency versions, or model ids as nonexistent or outdated, since the model can't verify them against current release info. (#8, fixes #7)
- **Clearer configuration docs** — the README now spells out the workflow-inputs vs config-file split (and the near-identical filenames one directory apart), with an inputs table.

## Note for existing setups

If your workflow already had an `instructions:` key under `with:`, it was previously ignored with a warning — it now takes effect, and wins over the config file. That's almost certainly what you intended, but if you have different values in both places, the workflow input is the one that applies.
