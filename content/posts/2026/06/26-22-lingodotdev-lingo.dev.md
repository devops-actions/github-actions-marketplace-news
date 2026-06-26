---
title: Lingo.Dev AI Localization
date: 2026-06-26 22:32:42 +00:00
tags:
  - lingodotdev
  - GitHub Actions
draft: false
repo: https://github.com/lingodotdev/lingo.dev
marketplace: https://github.com/marketplace/actions/lingo-dev-ai-localization
version: lingo.dev0.137.6
dependentsNumber: "102"
actionType: Composite
---


Version updated for **https://github.com/lingodotdev/lingo.dev** to version **lingo.dev@0.137.6**.

- This action is used across all versions by **102** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lingo-dev-ai-localization) to find the latest changes.

## What's Changed

### Patch Changes

- [#2146](https://github.com/lingodotdev/lingo.dev/pull/2146) [`ea617c0`](https://github.com/lingodotdev/lingo.dev/commit/ea617c0df7125a6f136142bac9b8ae5adf3d57e2) Thanks [@moygospadin](https://github.com/moygospadin)! - fix(mdx): preserve fenced code blocks with 4+ backtick fences

  The MDX code-placeholder loader hard-coded a 3-backtick fence pattern, so a
  fence of 4 or more backticks had only 3 of its closing backticks matched and
  the rest orphaned — the close was emitted as ` ` ```+ a blank line + a
stray lone backtick, producing invalid MDX (e.g. a code block that swallowed
the following`</Accordion>`). Fences are now matched at their actual length,
  with the closing fence allowed to be equal to or longer than the opening
  (per CommonMark).
