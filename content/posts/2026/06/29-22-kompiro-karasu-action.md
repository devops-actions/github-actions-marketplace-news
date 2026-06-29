---
title: karasu render
date: 2026-06-29 22:43:12 +00:00
tags:
  - kompiro
  - GitHub Actions
draft: false
repo: https://github.com/kompiro/karasu-action
marketplace: https://github.com/marketplace/actions/karasu-render
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kompiro/karasu-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/karasu-render) to find the latest changes.

## What's Changed

First release of **karasu-action** — a composite GitHub Action that renders
[karasu](https://github.com/kompiro/karasu) `.krs` architecture diagrams to SVG
in CI with a single `uses:` line.

```yaml
- uses: kompiro/karasu-action@v1
  with:
    input: docs/architecture.krs
    output: docs/architecture.svg
```

## Inputs
- `input` (required) — entry `.krs` file
- `output` (required) — SVG output path (parent dir is created automatically)
- `version` (optional, default `latest`) — `karasu` npm version
- `view` (optional) — `system` | `deploy` | `org`; omit for all views bundled

Requires `karasu@0.1.0` or later on npm. The self-test workflow renders a fixture
through the action on every push / PR.

Refs kompiro/karasu#302
