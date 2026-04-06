---
title: Runner Guard
date: 2026-04-06 06:20:49 +00:00
tags:
  - Vigilant-LLC
  - GitHub Actions
draft: false
repo: https://github.com/Vigilant-LLC/runner-guard
marketplace: https://github.com/marketplace/actions/runner-guard
version: v2.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Vigilant-LLC/runner-guard** to version **v2.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-guard) to find the latest changes.

## Action Summary

Runner Guard is a CI/CD security scanner for GitHub Actions that automates the detection and remediation of pipeline vulnerabilities, supply chain risks, and AI configuration attacks. It scans workflows, lock files, and repositories for issues like unpinned dependencies, injection exploits, and compromised packages, providing actionable reports and auto-fix capabilities. This tool streamlines security checks and enhances the integrity of software supply chains by enabling batch scanning, scoring, and continuous integration gating.

## What's Changed

## Phase 3: Dependency Checking for Known Compromised Packages

New command: \`runner-guard check-deps [path]\`

Scans your lock files against a database of 41 known compromised package versions from 12 confirmed supply chain attack campaigns.

### Supported Ecosystems
- **npm** - package-lock.json (v1/v2/v3)
- **PyPI** - requirements.txt
- **Go** - go.sum

### Compromised Package Database
- **2026**: UNC1069/Axios, TeamPCP (Trivy/LiteLLM/Telnyx)
- **2025**: npm debug/chalk mass compromise (20 packages, 2B+ weekly downloads)
- **2024**: Solana web3.js, Lottie Player
- **2022**: node-ipc, ctx/phpass, colors/faker
- **2021**: coa/rc, ua-parser-js, codecov
- **2018**: event-stream/flatmap-stream

### Usage

\`\`\`bash
# Check current directory
runner-guard check-deps .

# Check a specific project
runner-guard check-deps /path/to/project

# JSON output
runner-guard check-deps . --format json

# Fail on any severity
runner-guard check-deps . --fail-on low
\`\`\`

### Example Output

\`\`\`
Compromised Packages Detected

  [CRITICAL] axios@1.14.1
    Campaign:  UNC1069 (2026-03-30)
    Lock file: package-lock.json
    Cross-platform RAT deployed via compromised maintainer account.

  [CRITICAL] litellm@1.82.7
    Campaign:  TeamPCP (2026-03-19)
    Lock file: requirements.txt
    AI gateway compromised via maintainer account.

Total: 2 compromised package(s) found
\`\`\`

### Also in this release
- Footer domain updated to vigilantdefense.com
- Interactive menu option 3 now active
