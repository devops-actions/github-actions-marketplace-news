---
title: Kura Pages
date: 2026-07-09 07:01:14 +00:00
tags:
  - kurajs
  - GitHub Actions
draft: false
repo: https://github.com/kurajs/pages
marketplace: https://github.com/marketplace/actions/kura-pages
version: v1.0.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kurajs/pages** to version **v1.0.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kura-pages) to find the latest changes.

## What's Changed

Retire the sed link pre-fix: native resolution (kura >=0.0.27, docs >=0.0.50) covers every class it handled plus everything it structurally could not (anchors, ../../ escapes, subfolder docs, pruned targets, code-span link text, non-.md files), with exact-sha blob URLs and a never-guess git-tracked oracle. Verified live on rustbgpd: 132/132 docs covered, 146 oracle targets, zero dead relative links site-wide.
