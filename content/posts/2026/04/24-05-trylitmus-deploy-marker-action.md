---
title: Litmus Deploy Marker
date: 2026-04-24 05:55:49 +00:00
tags:
  - trylitmus
  - GitHub Actions
draft: false
repo: https://github.com/trylitmus/deploy-marker-action
marketplace: https://github.com/marketplace/actions/litmus-deploy-marker
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/trylitmus/deploy-marker-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/litmus-deploy-marker) to find the latest changes.

## Action Summary

The **Litmus Deploy Marker Action** automates the process of posting deploy markers to the Litmus dashboard after a successful deployment. These markers visually align release events with behavioral-rate charts, helping teams identify correlations between deployments and changes in user behavior metrics such as abandon, edit, or regeneration rates. This action simplifies monitoring and debugging by providing clear, contextual insights into how deployments impact application performance.

## What's Changed

Initial release.

Composite GitHub Action that posts a deploy marker to Litmus after a successful deploy. The dashboard renders markers as vertical dashed lines on behavioral-rate charts so a shift in abandon, edit, or regen rate lines up with the exact release that caused it.

## Usage

```yaml
- uses: trylitmus/deploy-marker-action@v1
  continue-on-error: true
  env:
    LITMUS_AUTH_TOKEN: ${{ secrets.LITMUS_AUTH_TOKEN }}
    LITMUS_SERVICE: my-service
  with:
    environment: ${{ github.ref_name }}
```

See the [README](https://github.com/trylitmus/deploy-marker-action#readme) for all env vars and inputs.

## Setup

1. In the Litmus dashboard, create a secret key (`ltm_sk_*`) with `deploys:write` scope.
2. Add it as the `LITMUS_AUTH_TOKEN` secret on your repo.
3. Drop the action into your deploy workflow after a successful deploy.

