---
title: riskratchet
date: 2026-07-12 06:14:23 +00:00
tags:
  - KayhanB21
  - GitHub Actions
draft: false
repo: https://github.com/KayhanB21/riskratchet-action
marketplace: https://github.com/marketplace/actions/riskratchet
version: v1.0.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KayhanB21/riskratchet-action** to version **v1.0.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/riskratchet) to find the latest changes.

## What's Changed

Bumps the composite delegation to [`KayhanB21/riskratchet@v0.2.15`](https://github.com/KayhanB21/riskratchet/releases/tag/v0.2.15), which brings TypeScript slices 4–5 (cyclomatic complexity, barrel-aware public surface, and native JSON/SARIF output with token-stable identity groundwork). TypeScript remains informational-only and opt-in; the Python path is unchanged.

This wrapper stays a thin passthrough — `action.yml` in the main repo is the single source of truth for inputs and behavior.

## Usage

```yaml
on: [pull_request]

jobs:
  riskratchet:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
    steps:
      - uses: actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683  # v4.2.2
      - uses: KayhanB21/riskratchet-action@v1
        with:
          coverage: coverage.json
```

See the [main repository](https://github.com/KayhanB21/riskratchet#github-action) for the full inputs table.

---

`v1.0.3`–`v1.0.5` were tag-only delegation bumps (v0.2.12 → v0.2.14) with no formal release; this release resumes cutting Release notes. The floating `v1` tag now points here.
