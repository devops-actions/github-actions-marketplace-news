---
title: Release Gems
date: 2026-03-31 14:01:44 +00:00
tags:
  - release-gems
  - GitHub Actions
draft: false
repo: https://github.com/release-gems/action
marketplace: https://github.com/marketplace/actions/release-gems
version: v1.2.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/release-gems/action** to version **v1.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-gems) to find the latest changes.

## Action Summary

The **release-gems** GitHub Action automates the workflow for releasing Ruby gems by building them in secure sandboxes, attesting their provenance, and publishing them to RubyGems.org or other registries. It eliminates dependencies on tools like Bundler or Rake, reducing supply-chain risks, and integrates with GitHub releases to generate cryptographic attestations for supply chain security. This action streamlines gem release processes, minimizes permission scopes, and ensures package integrity through immutable releases and provenance verification.

## What's Changed

- Release 1.2.1 (4aaa790)
- Merge pull request #25 from release-gems/errors (e1a8539)
- propagate error causes in catch blocks (d63dd2c)
- show full error tree on action failure (7236021)
- Release 1.2.0 (363b071)
- Merge pull request #24 from release-gems/suggest-immutable-release (6a54d8f)
- publish: warn when immutable releases are disabled (867b127)
- Merge pull request #23 from release-gems/deps (b291469)
- deps: upgrade picomatch, brace-expansion (7cadf6c)
- Merge pull request #22 from release-gems/install-bubblewrap (6222042)
