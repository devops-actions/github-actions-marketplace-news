---
title: drt sync
date: 2026-06-13 06:52:15 +00:00
tags:
  - drt-hub
  - GitHub Actions
draft: false
repo: https://github.com/drt-hub/drt-action
marketplace: https://github.com/marketplace/actions/drt-sync
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/drt-hub/drt-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drt-sync) to find the latest changes.

## What's Changed

First release of the **drt sync** Action.

Run [drt](https://github.com/drt-hub/drt) reverse-ETL syncs in CI/CD:

```yaml
- uses: drt-hub/drt-action@v1
  with:
    select: '*'
    extras: postgres
  env:
    PG_PASSWORD: ${{ secrets.PG_PASSWORD }}
```

- Composite action: `pip install drt-core` → `drt run`
- Inputs: select, drt-version, python-version, extras, working-directory, profiles-file, profile, dry-run, threads, args
- Outputs: status, succeeded, failed, duration-seconds, result-json (+ step summary)
- Hermetic DuckDB self-test (no secrets) + actionlint in CI

See the [README](https://github.com/drt-hub/drt-action#readme) for the secrets pattern and examples (run-after-dbt, PR preview).
