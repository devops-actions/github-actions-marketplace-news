---
title: Nowline Roadmap Builder
date: 2026-05-15 14:59:21 +00:00
tags:
  - lolay
  - GitHub Actions
draft: false
repo: https://github.com/lolay/nowline-action
marketplace: https://github.com/marketplace/actions/nowline-roadmap-builder
version: v0.2.5
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lolay/nowline-action** to version **v0.2.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nowline-roadmap-builder) to find the latest changes.

## Action Summary

The `@nowline/action` GitHub Action automates the rendering of Nowline roadmap diagrams during CI workflows. It supports two modes: rendering individual `.nowline` files into SVG/PNG (File mode) and converting Nowline code blocks in markdown files into rendered diagrams with automatically inserted image references (Markdown mode). This action solves the problem of displaying interactive diagrams in environments that do not support `<script>` tags, such as GitHub READMEs and other rich-text platforms, by generating static image outputs for seamless integration.

## What's Changed

First publication of `@nowline/action` to the GitHub Marketplace.

[Nowline](https://github.com/lolay/nowline) is a text-first DSL for product and engineering roadmaps. This action renders `.nowline` files (or fenced ```nowline blocks inside markdown) into SVG or PNG so the diagrams stay alongside the source — even on hosts that strip `<script>` tags (GitHub READMEs, issues, PRs, email, Slack, Confluence).

## Two modes

**File mode** — render a single file:

```yaml
- uses: lolay/nowline-action@v0
  with:
      mode: file
      input: docs/roadmap.nowline
      output: docs/roadmap.svg
```

**Markdown mode** — find every fenced `nowline` block in your markdown and render it next to the source:

```yaml
- uses: lolay/nowline-action@v0
  with:
      mode: markdown
      files: '**/*.md'
```

## Render-only by design

This action writes files and emits `changed-files`. Committing or opening a PR is your choice — chain it with [`stefanzweifel/git-auto-commit-action`](https://github.com/stefanzweifel/git-auto-commit-action) or [`peter-evans/create-pull-request`](https://github.com/peter-evans/create-pull-request).

## Documentation

- Full inputs, outputs, and examples: [README](https://github.com/lolay/nowline-action#readme)
- Source, issues, PRs: [`lolay/nowline` monorepo](https://github.com/lolay/nowline) (this repo is a write-only Marketplace mirror)

Pin `@v0` to track the latest v0.x patch automatically, or pin `@v0.2.5` for fully reproducible builds.
