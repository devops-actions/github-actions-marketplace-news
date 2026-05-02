---
title: Continuous AI-BOM Scanner
date: 2026-05-02 13:40:39 +00:00
tags:
  - istrategeorge
  - GitHub Actions
draft: false
repo: https://github.com/istrategeorge/AIcap
marketplace: https://github.com/marketplace/actions/continuous-ai-bom-scanner
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/istrategeorge/AIcap** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/continuous-ai-bom-scanner) to find the latest changes.

## Action Summary

AIcap is a GitHub Action designed to automate compliance, governance, and cost optimization tasks for AI and ML projects. It scans codebases, dependencies, and infrastructure configurations to ensure compliance with the EU AI Act, identifies security vulnerabilities, tracks AI-related dependencies, and generates audit-ready documentation, including SBOMs in CycloneDX format. Additionally, it addresses AI FinOps by detecting inefficient GPU usage and optimizing cloud resource costs, streamlining workflows and enabling faster, compliant AI system deployment.

## What's Changed

## What's new in v1.1.0

This release ships the full production surface: Helm chart for Enterprise self-hosting, a public marketing/pricing landing page, Stripe billing self-serve, live CVE/GHSA enrichment from OSV.dev, and Annex IV § 1 auto-population from `.aicap.yml`.

### Highlights

- **Helm chart** (`deploy/helm/aicap/`) — `helm install aicap ./deploy/helm/aicap -f my-values.yaml` to run the backend in your own cluster. Dual-mode secrets (inline / `existingSecret`), liveness/readiness split, pre-upgrade migration Job option, security defaults (non-root, read-only filesystem, all caps dropped).
- **GTM surface** — Pricing section, FAQ, marketing footer, and SEO-shaped `<head>` (Open Graph, JSON-LD structured data) on the public landing page. Rewritten GitLab CI and Bitbucket Pipelines templates that pull the pre-built binary instead of building from source.
- **Stripe billing self-serve** — `POST /api/customer-portal` lets Pro users update payment methods, view invoices, and cancel without filing a support ticket.
- **Live CVE/GHSA enrichment** — `pkg/compliance/osv.go` cross-references every detected dependency against `api.osv.dev/v1/query`. Annex IV § 3(a) gains a "Live CVE/GHSA" column. Fails open: catalog-only findings still land if OSV is unreachable.
- **Annex IV § 1 auto-fill** — declare `system_name`, `intended_purpose`, `high_risk_category` etc. in `.aicap.yml`; the scanner populates § 1 automatically.
- **CI fixes** — security-scan steps no longer fail the pipeline on compliance findings (`continue-on-error: true`); Helm lint type error in `NOTES.txt` resolved.

### Maturity vs v1.0.0-alpha
| Phase | v1.0.0-alpha | v1.1.0 |
|---|---|---|
| Phase 1 (Stack) | 70% | 95% |
| Phase 2 (Scanning) | 40% | 92% |
| Phase 3 (Compliance) | 20% | 95% |
| Phase 4 (CI/CD) | 60% | 98% |
| Phase 5 (Sovereignty / Self-host) | 10% | 60% |
| Phase 6 (FinOps) | 15% | 75% |
| Phase 7 (Pricing / Billing) | 30% | 95% |
| Phase 8 (GTM) | 10% | 55% |
| **Overall** | **~32%** | **~83%** |

### GitHub Actions usage

```yaml
- uses: istrategeorge/AIcap@v1.1.0
  with:
    api-key: ${{ secrets.AICAP_API_KEY }}
```

See [CONTRIBUTING.md](https://github.com/istrategeorge/AIcap/blob/main/CONTRIBUTING.md) for local dev setup and contribution guidelines.
