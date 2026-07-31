---
title: Deployment Guard
date: 2026-07-31 22:38:19 +00:00
tags:
  - PantevoSystems
  - GitHub Actions
draft: false
repo: https://github.com/PantevoSystems/deployment-guard-action
marketplace: https://github.com/marketplace/actions/deployment-guard
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Deployment Guard Action analyzes code changes automatically before each deployment and blocks risky deployments. It uses the KI-gestützter Risk Score to assess risk levels and provides customizable configurations to fail pipelines on blocked deployments or set thresholds for various security metrics. The action supports inputs like API keys, incident counts, and CVE counts, and outputs a risk score and verdict based on detected risks.
---


Version updated for **https://github.com/PantevoSystems/deployment-guard-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deployment-guard) to find the latest changes.

## Action Summary

The Deployment Guard Action analyzes code changes automatically before each deployment and blocks risky deployments. It uses the KI-gestützter Risk Score to assess risk levels and provides customizable configurations to fail pipelines on blocked deployments or set thresholds for various security metrics. The action supports inputs like API keys, incident counts, and CVE counts, and outputs a risk score and verdict based on detected risks.

## What's Changed

## Deployment Guard Action v1.2.0

Berechnet einen Risk Score (0–100) für jedes Deployment, bevor es in
Produktion geht. Analysiert Diff-Komplexität, Kubernetes-Änderungen,
Dependency-Updates und Fehlerhistorie.

### Verwendung

```yaml
- uses: PantevoSystems/deployment-guard-action@v1
  with:
    api-key: ${{ secrets.GUARD_API_KEY }}
```

### Änderungen in dieser Version

- API-Endpoint über `GUARD_API_URL` konfigurierbar
- Umstellung auf Pantevo Systems

### Voraussetzungen

API Key erforderlich — kostenloser Free Plan mit 30 Analysen/Monat
unter [pantevosystems.com/signup](https://www.pantevosystems.com/signup).
Keine Kreditkarte nötig.
