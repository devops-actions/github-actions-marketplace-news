---
title: Sliplane deploy with GitHub deployment
date: 2026-06-12 22:59:57 +00:00
tags:
  - micmayerm
  - GitHub Actions
draft: false
repo: https://github.com/micmayerm/sliplane-deploy-action
marketplace: https://github.com/marketplace/actions/sliplane-deploy-with-github-deployment
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/micmayerm/sliplane-deploy-action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sliplane-deploy-with-github-deployment) to find the latest changes.

## What's Changed

Deploy to Sliplane and record a tracked GitHub deployment that reflects the **real rollout** status.

### Highlights
- Triggers the Sliplane deploy, then polls the service events feed for a *new* terminal event (`service_deploy_success` / `service_deploy_failed` / `service_build_failed` / `service_deploy_cancelled`) — so the GitHub deployment moves `in_progress → success / failure / error` based on the actual rollout, not just "triggered".
- Snapshots existing event IDs before triggering, avoiding the race where the old version still reports `live`.
- Plain Node scripts using the runner's Node + global `fetch` — **no third-party actions or npm dependencies**.

### Usage
```yaml
- uses: micmayerm/sliplane-deploy-action@v1
  with:
    project-id: ${{ secrets.SLIPLANE_PROJECT_ID }}
    service-id: ${{ secrets.SLIPLANE_SERVICE_ID }}
    api-token: ${{ secrets.SLIPLANE_API_TOKEN }}
    environment-url: https://example.com
```
Requires `permissions: deployments: write` on the job.
