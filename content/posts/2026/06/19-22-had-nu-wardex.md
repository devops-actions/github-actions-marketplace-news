---
title: Wardex Release Gate
date: 2026-06-19 22:28:32 +00:00
tags:
  - had-nu
  - GitHub Actions
draft: false
repo: https://github.com/had-nu/wardex
marketplace: https://github.com/marketplace/actions/wardex-release-gate
version: v2.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/had-nu/wardex** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wardex-release-gate) to find the latest changes.

## What's Changed

## v2.1.0 (2026-06-19)

### Features
- **Hardened Docker image**: multi-stage, `gcr.io/distroless/static:nonroot`, CGO=0, trimpath, no shell
- **GitHub Action** (`wardex-release-gate`): Docker-based, consumed via `had-nu/wardex@v2.1.0`
- **HTML report**: inline SVG charts (bar, radar, gauge), dark mode, zero JS deps
- **Native SBOM generator** (`cmd/gen-sbom`): CycloneDX 1.5, zero external deps, purl + license metadata
- **Cosign keyless signing**: goreleaser + docker_signs via GitHub OIDC
- **Release workflow**: automated goreleaser on tag push + SBOM upload
- **GitHub Pages site** at https://had-nu.github.io/wardex/ — landing page, CRA Article 14 deep-dive, OG image, SEO H1, sitemap, robots.txt
- **Google Search Console** verification (meta tag + file)

### Compliance Catalogs
- **NIST CSF 2.0** (new — 31 controls across GV/ID/PR/DE/RS/RC)
- **NIS2 expanded** (6 -> 25 controls): encryption, HR, access, logging, vuln disclosure, incident reporting, pentest, change management, assets, network, third-party, compliance, architecture
- **DORA expanded** (5 -> 26 controls): Art5-30 including risk identification, assessment, backup, crisis comms, third-party, TLPT, post-incident, financial impact

### Documentation
- **WARDEX_PLAYBOOK.md** rewritten for v2.0 (11 sections, Framework Use Cases, EPSS, trust store)
- **Audited 10 docs**: fixed v1.7/1.8 flags/versions across github-actions-integration.md, EXIT_CODES.md, READMEs, TECHNICAL_VIEW.md, BUSINESS_VIEW.md, INPUT_GUIDE.md
- Removed duplicate SPEC files from root; canonical copies in doc/internal/

### Fixes & Internal
- golangci-lint v2: enabled -> enable
- misspell disabled (US/UK spellings intentional)
- CI coverage threshold 69% (current 69.7%)
- Dependabot hardened: max 2 PRs, direct deps only, target dev
- Default branch: dev -> main
- action.yml description shortened for Marketplace (< 125 chars)
