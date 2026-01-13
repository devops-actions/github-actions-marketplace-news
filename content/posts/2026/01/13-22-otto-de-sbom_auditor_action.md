---
title: SBOM Auditor Action
date: 2026-01-13 22:05:18 +00:00
tags:
  - otto-de
  - GitHub Actions
draft: false
repo: https://github.com/otto-de/sbom_auditor_action
marketplace: https://github.com/marketplace/actions/sbom-auditor-action
version: v0.5.5
dependentsNumber: "?"
---


Version updated for **https://github.com/otto-de/sbom_auditor_action** to version **v0.5.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbom-auditor-action) to find the latest changes.

## Action Summary

The SBOM Auditor GitHub Action automates the auditing of a repository's Software Bill of Materials (SBOM) for license compliance. It enriches SBOM data with detailed license information, checks licenses against a defined policy, and generates a comprehensive audit report, optionally including AI-assisted summaries. This action streamlines license compliance processes, ensuring adherence to policies and reducing manual effort in managing dependencies and their licensing.

## Release notes

## 🔇 Weniger Log-Spam

Die folgenden Log-Meldungen wurden von INFO auf DEBUG geändert:

- `🔍 Using detailed license info from deps.dev`
- `🔍 Resolving license`
- `🎯 RESOLVED`
- `ENRICHED`

Diese Meldungen erscheinen jetzt nur noch bei aktiviertem Debug-Logging.

### Vorher
```
Enriching SBOM:  21%|██        | 107/515 [00:09<00:27]
INFO:root:🔍 Using detailed license info from deps.dev for org.testcontainers:testcontainers: ['MIT']
INFO:license_resolver:🔍 Resolving license: 'MIT'
INFO:root:🎯 RESOLVED: 'MIT' → 'MIT' (spdx_fuzzy)
INFO:root:ENRICHED: org.testcontainers:testcontainers -> MIT
```

### Nachher
```
Enriching SBOM:  21%|██        | 107/515 [00:09<00:27]
```

### Upgrade
```yaml
uses: otto-de/sbom_auditor_action@v0.5  # ✅ Automatisch aktualisiert
```
