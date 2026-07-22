---
title: Reelier replay
date: 2026-07-22 06:11:05 +00:00
tags:
  - seldonframe
  - GitHub Actions
draft: false
repo: https://github.com/seldonframe/reelier
marketplace: https://github.com/marketplace/actions/reelier-replay
version: v1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Reelier is an open-source tool designed to help agents record and reproduce their work deterministically, ensuring that every run produces identical results. It automates the process of creating a "skill" file from an agent's existing session, capturing all steps in a receipt that can be replayed without any LLM or tokens, and diffing it against previous versions to catch drift. This helps ensure that long-run operators can verify the reliability and reproducibility of their agent workflows without relying solely on manual verification.
---


Version updated for **https://github.com/seldonframe/reelier** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reelier-replay) to find the latest changes.

## Action Summary

Reelier is an open-source tool designed to help agents record and reproduce their work deterministically, ensuring that every run produces identical results. It automates the process of creating a "skill" file from an agent's existing session, capturing all steps in a receipt that can be replayed without any LLM or tokens, and diffing it against previous versions to catch drift. This helps ensure that long-run operators can verify the reliability and reproducibility of their agent workflows without relying solely on manual verification.

## What's Changed

First Marketplace release of the **Reelier replay** action: replay a recorded Reelier skill in CI — deterministic, 0 LLM tokens at Level 0, exit 1 on drift — and post the run receipt as a job summary.

```yaml
- uses: seldonframe/reelier@v1
  with:
    skill: skills/nightly-check.skill.md
```

The `v1` tag floats to the latest validated action. Full docs, the assertion grammar, and the published N=1000 benchmark: https://github.com/seldonframe/reelier
