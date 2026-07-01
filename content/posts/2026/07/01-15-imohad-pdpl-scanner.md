---
title: PDPL Compliance Scan
date: 2026-07-01 15:00:45 +00:00
tags:
  - imohad
  - GitHub Actions
draft: false
repo: https://github.com/imohad/pdpl-scanner
marketplace: https://github.com/marketplace/actions/pdpl-compliance-scan
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/imohad/pdpl-scanner** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pdpl-compliance-scan) to find the latest changes.

## What's Changed

Builds on v1.0.0 with broader detection, fewer false positives, suppression, and a bilingual HTML report. 32 tests; CI green on Python 3.8/3.11/3.12.

### New detection
- **`PDPL-CB-02`** — personal data sent to a foreign third-party processor (analytics, email, CRM, AI, observability, payments: mixpanel, segment, sendgrid, twilio, openai, stripe, datadog, …). Entity-aware severity like `CB-01`.
- **`PDPL-SEC-02`** — database/transport TLS disabled (`sslmode=disable`, `ssl_mode="disable"`, `ssl=false`).
- **Assisted controls now run in the engine** as high-recall `LEAD`s: `DSR-02` (soft-delete erasure), `SEN-01` (sensitive data without visible encryption), and repo-wide `DSR-01` / `RET-01` / `LB-01`. Leads never fail the gate on their own.

### Accuracy
- `PDPL-SEC-03` placeholder/low-entropy triage: defaults like `changeme` / `your_password` downgrade to a medium `LEAD`; real-format secrets stay critical.

### Suppression
- Inline `# pdpl-ignore[CONTROL,…]`, a `.pdplignore` file (gitignore-style globs), and glob support in `--exclude`.

### Reporting & DX
- Standalone bilingual **HTML report** (`--html`); SARIF `partialFingerprints` for stable code-scanning dedup; `--show-pass` + `passed_controls` in JSON.
- `.pre-commit-hooks.yaml`, PyPI publish workflow (OIDC), README badges, and community files.

**Upgrade:** `uses: imohad/pdpl-scanner@v1` now resolves to v1.1.0.

Full notes: [CHANGELOG.md](https://github.com/imohad/pdpl-scanner/blob/main/CHANGELOG.md)
