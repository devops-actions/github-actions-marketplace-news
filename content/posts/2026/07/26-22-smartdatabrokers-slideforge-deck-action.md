---
title: SlideForge Deck
date: 2026-07-26 22:29:13 +00:00
tags:
  - smartdatabrokers
  - GitHub Actions
draft: false
repo: https://github.com/smartdatabrokers/slideforge-deck-action
marketplace: https://github.com/marketplace/actions/slideforge-deck
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The SlideForge Deck GitHub Action generates an editable PowerPoint from a JSON file, automating the process of creating professional presentations in CI. It solves the problem of generating consistent and verbatim PowerPoint decks directly from data, ensuring reliability and reproducibility across different environments and releases. The action supports various slide templates and customizable inputs, making it flexible for different project needs.
---


Version updated for **https://github.com/smartdatabrokers/slideforge-deck-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slideforge-deck) to find the latest changes.

## Action Summary

The SlideForge Deck GitHub Action generates an editable PowerPoint from a JSON file, automating the process of creating professional presentations in CI. It solves the problem of generating consistent and verbatim PowerPoint decks directly from data, ensuring reliability and reproducibility across different environments and releases. The action supports various slide templates and customizable inputs, making it flexible for different project needs.

## What's Changed

Render an editable PowerPoint (.pptx) from a JSON file of slide intents, in CI.

- Zero dependencies (Node 20 built-in `fetch`) — nothing to bundle or audit.
- Outputs: `job-id`, `pptx-path`, `status`, `fidelity`, `slides`, `cost`.
- Exit code follows SlideForge's honesty layer: no usable deck → the step fails and **nothing is billed**.
- Writes a job summary (status / fidelity / warnings / cost / job id).

```yaml
- uses: smartdatabrokers/slideforge-deck-action@v1
  with:
    api-key: ${{ secrets.SLIDEFORGE_API_KEY }}
    deck: examples/deck.json
    output: weekly-report.pptx
```

Free key — 60 free slides, no credit card: https://slideforge.dev/sign-up
