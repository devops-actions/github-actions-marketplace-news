---
title: vuln.mlab.sh SBOM scan
date: 2026-07-24 19:10:42 +00:00
tags:
  - mlab-sh
  - GitHub Actions
draft: false
repo: https://github.com/mlab-sh/vuln-scan-action
marketplace: https://github.com/marketplace/actions/vuln-mlab-sh-sbom-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates the scanning of dependency lockfiles in a repository for known CVEs using vuln.mlab.sh. It automatically detects common lockfile types and checks each package against OSV and Sonatype OSS Index, providing detailed vulnerability reports in the job summary. The action can fail the build based on a specified severity threshold or report vulnerabilities without failing, with outputs for total vulnerabilities, vulnerable packages, and failure status.
---


Version updated for **https://github.com/mlab-sh/vuln-scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vuln-mlab-sh-sbom-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of dependency lockfiles in a repository for known CVEs using vuln.mlab.sh. It automatically detects common lockfile types and checks each package against OSV and Sonatype OSS Index, providing detailed vulnerability reports in the job summary. The action can fail the build based on a specified severity threshold or report vulnerabilities without failing, with outputs for total vulnerabilities, vulnerable packages, and failure status.

## What's Changed

First public release. 🎉

Scan your lockfiles for known CVEs in CI/CD, powered by [vuln.mlab.sh](https://vuln.mlab.sh).

### Features
- Auto-detects lockfiles: `Cargo.lock`, `package-lock.json`, `npm-shrinkwrap.json`, `composer.lock`, `Gemfile.lock`, `go.sum`, `requirements.txt`, `mise.lock`.
- Server-side parsing + scan against OSV & Sonatype OSS Index — no local install, no database.
- Severity threshold with `fail-on` (`any` · `critical` · `high` · `medium` · `low` · `none`).
- `soft-fail` mode to report without failing the build.
- Job summary table + inline annotations on vulnerable dependencies.
- Outputs: `total`, `vulnerable-packages`, `failed`.
- Optional API token (`token:`) for 25 scans/hour (vs 8/hour anonymous).

### Usage
```yaml
- uses: mlab-sh/vuln-scan-action@v1
  with:
    fail-on: high
    token: ${{ secrets.VULN_MLAB_TOKEN }}
```

See the [README](https://github.com/mlab-sh/vuln-scan-action) for all inputs.

