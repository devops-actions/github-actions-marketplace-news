---
title: Tangled Mirror
date: 2026-08-07 22:37:56 +00:00
tags:
  - sethcottle
  - GitHub Actions
draft: false
repo: https://github.com/sethcottle/tangled-mirror
marketplace: https://github.com/marketplace/actions/tangled-mirror
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Tangled Mirror GitHub Action keeps a Tangled repo in sync with one that lives on GitHub. It checks the knot's host key, sends only the refs it asks for, and won't delete anything unless told to. The action requires an SSH key registered with Tangled and a known hosts file containing the knot's host key.
---


Version updated for **https://github.com/sethcottle/tangled-mirror** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tangled-mirror) to find the latest changes.

## Action Summary

The Tangled Mirror GitHub Action keeps a Tangled repo in sync with one that lives on GitHub. It checks the knot's host key, sends only the refs it asks for, and won't delete anything unless told to. The action requires an SSH key registered with Tangled and a known hosts file containing the knot's host key.

## What's Changed

**Fixed**

- Boolean inputs are now validated instead of being compared against the literal
  string `true`. Previously any other value quietly meant false, so `yes`, `1`,
  `True`, and an empty string all disabled whatever they were passed to.

  Since `tags` defaults on, that could silently stop tags being mirrored. The
  empty case was the realistic one: on a `workflow_run` or `schedule` trigger
  there are no dispatch inputs, so `inputs.tags` expands to an empty string. If
  you have one workflow serving both a manual dispatch and an automatic trigger,
  every automatic run would have dropped your tags without saying anything.

  The error now names that cause and shows the fallback to use.

**Docs**

- Added a pattern for repositories whose release workflow moves a rolling tag.
  Mirroring on `push` races the tag update, so the knot keeps the previous value
  until something else gets pushed. Trigger on `workflow_run` after the release
  workflow finishes instead.
