---
title: AgenRACI validate
date: 2026-06-15 16:07:51 +00:00
tags:
  - jing-ny
  - GitHub Actions
draft: false
repo: https://github.com/jing-ny/agenraci
marketplace: https://github.com/marketplace/actions/agenraci-validate
version: v0.1.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jing-ny/agenraci** to version **v0.1.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agenraci-validate) to find the latest changes.

## What's Changed


The first release with **machine-readable validate output**, so a charter check
can feed CI tooling and dashboards instead of only a human report. Same honest
scope: AgenRACI still *writes and checks* a charter — it does not intercept
actions at runtime.

## What changed

- **`agenraci validate --format json`** — one machine-readable object per charter
  (`{charter, project, ok, error, rules}`, each rule carrying `passed` and any
  `findings`), so a CI step or dashboard can parse per-rule results without
  scraping coloured text. Multiple charters emit one JSON object per line (JSON
  Lines). (#32, #53)
- **`agenraci validate --format sarif`** — a single SARIF 2.1.0 document
  aggregating findings across every charter, ready to upload so failures appear
  as GitHub code-scanning alerts. Findings are file-level (the checker references
  a target name, not a source line). (#53)
- **"charter checked" badge** — a `charter.yml` workflow that runs AgenRACI's own
  Action against `governance/charter.yaml`, plus a copy-paste badge snippet for
  adopters. The project now wears its own badge. (#47, #53)
- **`--explain` in JSON output** — passing `--explain` with `--format json` now
  adds an `explanation` field (the same plain-language fix as the human report)
  to each finding. The default JSON shape is unchanged when `--explain` is not
  passed. (#54, #56)

The default `human` and `--format github` output are unchanged, and exit codes
are the same: non-zero if any charter fails.

## Thanks

- **@barry166** for the `--explain` JSON support (#56) — their first contribution
  to AgenRACI. Thank you!

```bash
pip install --upgrade agenraci
```

Full diff: <https://github.com/jing-ny/agenraci/compare/v0.1.2...v0.1.3>. MIT-licensed.

