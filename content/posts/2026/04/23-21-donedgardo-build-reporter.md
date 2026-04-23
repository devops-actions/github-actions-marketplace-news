---
title: GitLaunch Build Reporter
date: 2026-04-23 21:43:52 +00:00
tags:
  - donedgardo
  - GitHub Actions
draft: false
repo: https://github.com/donedgardo/build-reporter
marketplace: https://github.com/marketplace/actions/gitlaunch-build-reporter
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/donedgardo/build-reporter** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitlaunch-build-reporter) to find the latest changes.

## Action Summary

GitLaunch Build Reporter is a GitHub Action designed to automate the reporting of build and deployment statuses to GitLaunch, a deployment management platform. It simplifies CI/CD workflows by tracking build completions and updating deployment progress, helping teams manage and visualize their deployment pipelines effectively. Key capabilities include reporting new builds, updating deployment statuses, and integrating seamlessly into existing GitHub workflows.

## What's Changed

## What's New

### Deploy mode (`action: deploy`)
Replace 4 separate action calls with a single step. The action automatically detects the job outcome and reports the final status.

**Before (v1):**
```yaml
# 4 separate steps needed: deploying, deployed, error, cancelled
- uses: donedgardo/build-reporter@v1
  with:
    action: update-status
    status: deploying
    ...
- uses: donedgardo/build-reporter@v1
  if: success()
  with:
    action: update-status
    status: deployed
    ...
# ... 2 more steps for error and cancelled
```

**After (v2):**
```yaml
# Single step - post-step auto-detects outcome
- uses: donedgardo/build-reporter@v2
  with:
    api-key: ${{ secrets.GITLAUNCH_API_KEY }}
    service-id: ${{ vars.GITLAUNCH_SERVICE_ID }}
    environment: ${{ inputs.environment }}
    build-id: ${{ inputs.buildId || github.sha }}
    action: deploy
```

### How it works
1. Main step reports `deploying` status and saves context
2. Post step runs automatically after the job completes
3. Post step reads `GITHUB_JOB_STATUS` and reports `deployed`, `error`, or `cancelled`

### Backwards compatible
`report-build` and `update-status` action modes work exactly as before.
