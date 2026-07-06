---
title: cvesse CVE gate
date: 2026-07-06 22:59:08 +00:00
tags:
  - srknzl
  - GitHub Actions
draft: false
repo: https://github.com/srknzl/cvesse-action
marketplace: https://github.com/marketplace/actions/cvesse-cve-gate
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/srknzl/cvesse-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cvesse-cve-gate) to find the latest changes.

## What's Changed

First release of **cvesse CVE gate** — a zero-dependency GitHub Action that takes the CVE IDs your scanner already produces (Trivy, Grype, osv-scanner, Dependabot), enriches them against [cvesse](https://cvesse.com), and **fails CI** on CISA KEV, severity, or EPSS thresholds.

Why not just use the scanner's own severity? cvesse's `calculated_severity` promotes anything in **CISA KEV** or with **EPSS > 0.36** to CRITICAL — so this catches *"your scanner said HIGH but it's being actively exploited."*

## Features
- **Any scanner** — regex-extracts `CVE-YYYY-NNNN` from any SARIF/JSON/text output; point `input` at one or more files.
- **Dependabot mode** — `dependabot: true` reads your open Dependabot alerts directly. Fails loudly (never silently passes) if the token can't read them, and reports GHSA-only alerts it can't check.
- **Independent gates** — `fail-on-kev`, `fail-on-severity`, `fail-on-epss`, `fail-on-unknown`; set any to `""`/`false` to disable.
- **PR feedback** — writes a results table to the job summary and, with `comment: true`, a sticky PR comment.
- **Zero dependencies** — single `index.js` on Node 20. Nothing to audit but the code you can read.

