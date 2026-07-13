---
title: LumaTrack Report Run
date: 2026-07-13 06:22:00 +00:00
tags:
  - LumaTrack
  - GitHub Actions
draft: false
repo: https://github.com/LumaTrack/report-run
marketplace: https://github.com/marketplace/actions/lumatrack-report-run
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/LumaTrack/report-run** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lumatrack-report-run) to find the latest changes.

## What's Changed

This action reports a workflow run to LumaTrack (https://lumatrack.io) so you can track what your CI/CD automation actually saves you. I built LumaTrack because every automation tool grades its own homework; this is the neutral ledger version, where failures count against you and every number can be traced back to the runs that produced it.

```
- name: Report run to LumaTrack
  if: always()
  uses: LumaTrack/report-run@v1
  with:
    base-url: ${{ vars.LUMATRACK_URL }}
    api-key: ${{ secrets.LUMATRACK_KEY }}
    automation: deploy-pipeline
    status: ${{ job.status }}
```

Use `if: always()` so failures get reported too. Failed runs cost money and save nothing, and pretending they didn't happen is how these numbers stop being believable.

A few implementation details:

- You can pass `${{ job.status }}` directly. `cancelled` and `skipped` get recorded as failures with the reason kept, since a run that didn't finish didn't do the work.
- Reporting is idempotent. The external id defaults to run id + attempt, so retrying a step won't double-count.
- By default the action won't fail your job if LumaTrack is unreachable. It warns and moves on. Set `fail-on-error: true` if you want it strict.
- There's also `units` (for batch jobs valued per item), `duration-seconds`, `failure-reason`, and a `metadata` JSON field.

Needs a LumaTrack workspace (free tier is fine) and an API key.
