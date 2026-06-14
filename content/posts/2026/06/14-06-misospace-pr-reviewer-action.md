---
title: Miso PR Review
date: 2026-06-14 06:40:33 +00:00
tags:
  - misospace
  - GitHub Actions
draft: false
repo: https://github.com/misospace/pr-reviewer-action
marketplace: https://github.com/marketplace/actions/miso-pr-review
version: v1.2.11
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/misospace/pr-reviewer-action** to version **v1.2.11**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miso-pr-review) to find the latest changes.

## What's Changed

## Hotfix — restores a loadable action manifest

**v1.2.10 was broken**: a duplicate `PLATFORM` key in three publish-step `env:` blocks made GitHub's Actions runner reject the manifest at load time (`'PLATFORM' is already defined`), so the action failed to run for every consumer on v1.2.10.

- Remove the three redundant `PLATFORM` env keys (#255).
- Add a regression guard (`test_action_yml_has_no_duplicate_env_keys`) so a duplicate `env:`/`with:` key fails the action's own CI instead of shipping — the `validate` job previously never inspected the manifest for duplicate keys.

No functional changes vs v1.2.10 otherwise. Anyone on v1.2.10 should upgrade to v1.2.11.
