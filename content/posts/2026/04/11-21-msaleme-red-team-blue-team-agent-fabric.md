---
title: Agent Security Harness
date: 2026-04-11 21:46:00 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## Action Summary

Agent Security Harness is a GitHub Action designed to conduct automated security testing of AI agent protocols, operational governance, and decision-making mechanisms. It provides 440 executable security tests across multiple layers, including wire-protocol integrity, session state validation, and decision governance, to identify vulnerabilities such as spoofing, capability escalation, and unsafe agent behaviors. This tool enables organizations to proactively simulate adversarial scenarios, ensuring compliance with security policies and robustness against advanced threats.

## What's Changed

## What's Changed
* Add AUROC reporting per harness module by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/161
* Add kill-switch compliance tests IR-009 to IR-012 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/162
* Add EU AI Act Article 50 watermark adversarial tests by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/163
* Add EU AI Act and ISO 42001 compliance crosswalk output by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/164
* Add FRIA evidence collection and compliance report generation by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/165
* Fix Cursor Bugbot review findings across v4.1/v4.2 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/166
* Fix negation word coverage in WM-002 and IR-010 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/167
* Add simulate mode to MCP, A2A, and Identity harnesses (F7) by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/168


**Full Changelog**: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v3.10.1...v4.1.0## v4.1.0 — Compliance Evidence

440 tests, 31 modules. Transforms the harness from a security testing tool into a compliance evidence platform.

### New Features

| Feature | Details |
|---------|---------|
| **AUROC metrics** | Per-module detection effectiveness scoring via trapezoidal ROC |
| **EU AI Act crosswalk** | 16 controls mapped across Articles 9, 10, 13, 14, 15, 17, 27, 50, 72 |
| **ISO 42001 crosswalk** | 15 controls mapped across Clauses 5-10 + Annex A |
| **Kill-switch tests** | IR-009 to IR-012: termination latency, post-kill prevention, bypass resistance, graceful degradation (CA SB 942, EU AI Act Art 14) |
| **FRIA evidence** | 6-category Fundamental Rights Impact Assessment output (EU AI Act Article 27) |
| **Watermark tests** | WM-001 to WM-005: presence, forgery resistance, stripping resistance, extraction resistance, multi-language (EU AI Act Article 50) |
| **Compliance report** | One-command auditor-ready HTML: `python scripts/compliance_report.py --report results.json --output report.html --framework all --fria` |
| **Simulate mode expansion** | MCP (14), A2A (13), Identity (12) harnesses now support `--simulate` |

### Quick start

```bash
pip install agent-security-harness==4.1.0

# Run tests
agent-security test mcp --url http://your-agent --simulate

# Generate compliance report
python scripts/compliance_report.py --report results.json --output compliance.html --framework all --fria
```

### Stats

- 440 unique test IDs across 31 modules
- 19/19 pytest passing
- 31 framework controls mapped (EU AI Act + ISO 42001)
- Independent audit R33: 7 findings, all resolved
- Simulate coverage: 52% of harnesses (12/23)

### Breaking changes

None. Fully backwards compatible with v3.10.x.

---

Full changelog: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v3.10.1...v4.1.0

## What's Changed
* Add AUROC reporting per harness module by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/161
* Add kill-switch compliance tests IR-009 to IR-012 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/162
* Add EU AI Act Article 50 watermark adversarial tests by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/163
* Add EU AI Act and ISO 42001 compliance crosswalk output by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/164
* Add FRIA evidence collection and compliance report generation by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/165
* Fix Cursor Bugbot review findings across v4.1/v4.2 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/166
* Fix negation word coverage in WM-002 and IR-010 by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/167
* Add simulate mode to MCP, A2A, and Identity harnesses (F7) by @msaleme in https://github.com/msaleme/red-team-blue-team-agent-fabric/pull/168


**Full Changelog**: https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v3.10.1...v4.1.0
