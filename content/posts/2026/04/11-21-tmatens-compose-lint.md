---
title: compose-lint
date: 2026-04-11 21:45:35 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

This GitHub Action, "compose-lint," serves as a security-focused linter for Docker Compose files, designed to identify and mitigate risky configurations before deployment. Grounded in OWASP and CIS security standards, it automates the detection of vulnerabilities such as exposed Docker sockets, privileged mode, unpinned images, and insecure port bindings. Its key capabilities include providing actionable recommendations and a fast, zero-configuration setup to improve container security.

## What's Changed

First public release of compose-lint — a security-focused linter for Docker Compose files, grounded in OWASP and CIS authoritative sources.

Install:

```bash
pip install compose-lint
```

Or use the GitHub Action:

```yaml
- uses: tmatens/compose-lint@v0.2.0
  with:
    fail-on: high
    sarif: true
```

## Added

- 10 security rules grounded in the OWASP Docker Security Cheat Sheet and the CIS Docker Benchmark:
  - **CL-0001** Docker socket mounted (CRITICAL)
  - **CL-0002** Privileged mode enabled (CRITICAL)
  - **CL-0003** Privilege escalation not blocked (MEDIUM)
  - **CL-0004** Image not pinned to version (MEDIUM)
  - **CL-0005** Ports bound to all interfaces (HIGH)
  - **CL-0006** No capability restrictions (MEDIUM)
  - **CL-0007** Filesystem not read-only (MEDIUM)
  - **CL-0008** Host network mode (HIGH)
  - **CL-0009** Security profile disabled (HIGH)
  - **CL-0010** Host namespace sharing (HIGH)
- CVSS-aligned severity model with a documented scoring matrix (`docs/severity.md`).
- Output formatters: `text` (colored, with fix guidance and references), `json` (for CI), and `sarif` (SARIF 2.1.0, for GitHub Code Scanning).
- GitHub Action with optional SARIF upload to the Code Scanning tab.
- Auto-discovery of `compose.yml` / `docker-compose.yml` (and their `.yaml` / `.override.*` variants) when no file arguments are given.
- Configuration via `.compose-lint.yml`: disable rules, override severity, record an exception `reason` that flows through to all output formats.
- Suppressed-finding reporting with `--skip-suppressed`.
- Documented exit code contract (0 = clean, 1 = findings at/above threshold, 2 = usage error) and `--fail-on` flag to set the threshold.
- Pre-commit hook support.
- Python 3.10–3.13 support.

## Security

- PyPI release uses Trusted Publishing (OIDC) with Sigstore build attestations. No long-lived API tokens.
- TestPyPI publish gates the real PyPI publish — a TestPyPI failure aborts before a version number is burned on the real index.
- Supply chain hardening: CodeQL (python + actions), OpenSSF Scorecard, Bandit, pip-audit, and Dependabot all run on every push and weekly.
- Workflows are pinned, scoped to least-privilege permissions, and use `persist-credentials: false` on checkout. The composite action passes user inputs through `env:` rather than direct `${{ }}` interpolation to prevent shell injection.

Full changelog: https://github.com/tmatens/compose-lint/blob/main/CHANGELOG.md
