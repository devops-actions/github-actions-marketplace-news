---
title: proof-gate
date: 2026-07-10 15:14:55 +00:00
tags:
  - gregbond
  - GitHub Actions
draft: false
repo: https://github.com/gregbond/proof-gate
marketplace: https://github.com/marketplace/actions/proof-gate
version: v0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/gregbond/proof-gate** to version **v0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/proof-gate) to find the latest changes.

## What's Changed

First public release of proof-gate.

proof-gate makes `done` require a proof class and inspectable evidence. It distinguishes local, CI, deploy, runtime, DB, visual, and no-go claims, then reports the honesty depth of each verifier.

Install:

```bash
npx @relaxedg/proof-gate@latest --help
```

GitHub Action:

```yaml
- uses: gregbond/proof-gate@v0.1
  with:
    mode: pr
```

v0.1 is intentionally small. Some verifier classes check shape or existence, while deploy, runtime receipts, DB receipts, visual evidence, and no-go files can be inspected. Richer adapters should raise claims toward `inspected` or `reran`.

