---
title: Publish HTML presentation to Slidesfly
date: 2026-07-30 14:47:49 +00:00
tags:
  - rare
  - GitHub Actions
draft: false
repo: https://github.com/rare/slidesfly-integrations
marketplace: https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action provides an official Slidesfly Agent Skill that automates the publishing or updating of HTML presentations to Slidesfly. It solves the problem of integrating existing HTML decks with Slidesfly, allowing developers to easily publish their presentations online. The action supports various framework compatibility matrices and can be used in GitHub Actions workflows for automated publishing tasks.
---


Version updated for **https://github.com/rare/slidesfly-integrations** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly) to find the latest changes.

## Action Summary

This GitHub Action provides an official Slidesfly Agent Skill that automates the publishing or updating of HTML presentations to Slidesfly. It solves the problem of integrating existing HTML decks with Slidesfly, allowing developers to easily publish their presentations online. The action supports various framework compatibility matrices and can be used in GitHub Actions workflows for automated publishing tasks.

## What's Changed

Marketplace-ready release for the Slidesfly publish Action.

- Adds the root `action.yml` entry required by GitHub Marketplace.
- Reuses this public integrations repository; no additional repository is required.
- Keeps `actions/publish` available for existing workflows.
- Pins both Action entry points to the deployed Slidesfly CLI 0.1.2.
- Adds CI drift checks for the root and legacy Action manifests.
- Verifies the root Action against the existing owned production test deck.

Use the root Action with:

```yaml
- id: deck
  uses: rare/slidesfly-integrations@v0.2.0
  with:
    file: deck.html
    api-key: ${{ secrets.SLIDESFLY_API_KEY }}
    visibility: unlisted
```

Production smoke: https://github.com/rare/slidesfly-integrations/actions/runs/30512464640
