---
title: vulngate
date: 2026-07-25 00:43:15 +00:00
tags:
  - cisoventures
  - GitHub Actions
draft: false
repo: https://github.com/cisoventures/vulngate
marketplace: https://github.com/marketplace/actions/vulngate
version: v1.5.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  vulngate is an agent-neutral security check tool that scans code repositories for vulnerabilities using SAST, secrets scanning, and dependency auditing. It provides a unified interface for running these checks and offers structured findings with plain English explanations and fix hints. The core of vulngate orchestrates deterministic scanners and normalizes their output, ensuring minimal overhead and cost while providing valuable security insights to developers.
---


Version updated for **https://github.com/cisoventures/vulngate** to version **v1.5.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vulngate) to find the latest changes.

## Action Summary

vulngate is an agent-neutral security check tool that scans code repositories for vulnerabilities using SAST, secrets scanning, and dependency auditing. It provides a unified interface for running these checks and offers structured findings with plain English explanations and fix hints. The core of vulngate orchestrates deterministic scanners and normalizes their output, ensuring minimal overhead and cost while providing valuable security insights to developers.

## What's Changed

Follow-up to v1.5.1. That release probed `/code-scanning/alerts` and treated **404** as "code scanning unavailable" — but a **public** repo that simply hasn't uploaded an analysis yet *also* returns 404 (`no analysis found`). Result: the very first SARIF upload would be skipped, permanently, on exactly the repos where code scanning works.

**Fix:** read repository metadata instead of probing for analyses. Upload when the repo is **public** (code scanning is free there) or when **Advanced Security is enabled** on a private repo.

Verified against all three real cases: private-without-Advanced-Security → skip cleanly; public → upload.

The v1.5.1 guarantee still holds: a scan that passes never produces a failing build.
