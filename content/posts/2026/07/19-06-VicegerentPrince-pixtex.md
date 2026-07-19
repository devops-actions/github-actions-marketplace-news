---
title: Pixtex — Render n8n Workflow
date: 2026-07-19 06:26:39 +00:00
tags:
  - VicegerentPrince
  - GitHub Actions
draft: false
repo: https://github.com/VicegerentPrince/pixtex
marketplace: https://github.com/marketplace/actions/pixtex-render-n8n-workflow
version: v0.1.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the conversion and hosting of n8n workflow JSON into interactive diagrams using Pixtex, a web-based diagramming tool. It allows developers to render local images, host them as permanent URLs with stable IDs, update existing diagrams in CI workflows, and embed them directly in documentation or other platforms. The action simplifies the process by rendering the workflow at build time and automatically updating it in place whenever changes are pushed to the repository.
---


Version updated for **https://github.com/VicegerentPrince/pixtex** to version **v0.1.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pixtex-render-n8n-workflow) to find the latest changes.

## Action Summary

This GitHub Action automates the conversion and hosting of n8n workflow JSON into interactive diagrams using Pixtex, a web-based diagramming tool. It allows developers to render local images, host them as permanent URLs with stable IDs, update existing diagrams in CI workflows, and embed them directly in documentation or other platforms. The action simplifies the process by rendering the workflow at build time and automatically updating it in place whenever changes are pushed to the repository.

## What's Changed

First release from the standalone repo.

**CLI** — `npx pixtex` renders n8n workflow JSON into share-ready diagrams: local files (`render`) or hosted images with a permanent URL that updates in place (`push --id`). Published to npm with provenance.

**GitHub Action** — keep the workflow diagram in your README always current:

```yaml
- uses: VicegerentPrince/pixtex@v1
  with:
    workflow: workflows/order-sync.json
    api-key: ${{ secrets.PIXTEX_API_KEY }}
    image-id: ${{ vars.PIXTEX_IMAGE_ID }}
```

Docs: https://pixtex.dev/developers
