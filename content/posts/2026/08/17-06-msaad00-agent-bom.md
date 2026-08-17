---
title: agent-bom Scan
date: 2026-08-17 06:02:05 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.101.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The action automates the process of scanning and normalizing evidence from various sources, including repositories, developer endpoints, images, Kubernetes clusters, cloud platforms, data platforms, MCP servers, and runtime activities. It generates findings, SARIF files, SBOMs, HTML reports, and graph exports without requiring an account, facilitating centralization when needed, and providing context for prioritized investigation and action through follow-up paths, impacts, owners, fixes, and verifications.
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.101.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

The action automates the process of scanning and normalizing evidence from various sources, including repositories, developer endpoints, images, Kubernetes clusters, cloud platforms, data platforms, MCP servers, and runtime activities. It generates findings, SARIF files, SBOMs, HTML reports, and graph exports without requiring an account, facilitating centralization when needed, and providing context for prioritized investigation and action through follow-up paths, impacts, owners, fixes, and verifications.

## What's Changed

## What's Changed
* chore(docker-mcp): pin the submission to v0.100.0 by @github-actions[bot] in https://github.com/msaad00/agent-bom/pull/4784
* ci(smithery): a gate that cannot pass is as dishonest as one that cannot fail by @msaad00 in https://github.com/msaad00/agent-bom/pull/4786
* ci(demo): a release that does not deploy the demo must not report success by @msaad00 in https://github.com/msaad00/agent-bom/pull/4787
* fix(release): publish the image every surface already tells users to pull by @msaad00 in https://github.com/msaad00/agent-bom/pull/4788
* Tighten Overview header, label Findings nav badges, densify Remediation by @msaad00 in https://github.com/msaad00/agent-bom/pull/4789
* Compliance drill-through + demo hygiene (no leakage, readable) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4791
* Populate and surface finding-level owner and SLA due date by @msaad00 in https://github.com/msaad00/agent-bom/pull/4792
* Graph node drawer: tabbed + width-adjustable by @msaad00 in https://github.com/msaad00/agent-bom/pull/4793
* Retire the 2D-canvas graph hairball; large estates render via Sigma, readably by @msaad00 in https://github.com/msaad00/agent-bom/pull/4794
* CLI parity: campaigns, compliance eval, and attack/exposure paths by @msaad00 in https://github.com/msaad00/agent-bom/pull/4795
* Unify Investigation lens routes into one graph surface (mesh/context → /graph?lens=) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4796
* chore(deps-dev): bump @testing-library/jest-dom from 7.0.0 to 7.0.1 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/4797
* chore(deps): forward dashboard pip floor bumps (plotly, pandas) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4800
* Compliance: explain why a control is Not evaluated + next-step CTA by @msaad00 in https://github.com/msaad00/agent-bom/pull/4803
* #4790 parity round 2: framework/control filter + ticketing/export CLI + triage MCP by @msaad00 in https://github.com/msaad00/agent-bom/pull/4802
* CWPP: ship Azure/GCP side-scan executors + wire the CLI (live smokes deferred) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4804
* Skills scan: REST API + dashboard page (closes the last #4790 parity gap) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4805
* CWPP Wave 2 (#4158): expose the shipped side-scan executors over API + MCP + UI by @msaad00 in https://github.com/msaad00/agent-bom/pull/4806
* Prune superseded release-evidence snapshots (v0.86–v0.88) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4807
* fix(evidence): make counts, scope, and public product truth consistent by @msaad00 in https://github.com/msaad00/agent-bom/pull/4808
* feat(workflow): close the finding-to-verification loop by @msaad00 in https://github.com/msaad00/agent-bom/pull/4809
* feat(ui): guide the blast-radius journey by persona by @msaad00 in https://github.com/msaad00/agent-bom/pull/4810
* chore(deps): refresh Python and UI lint tooling by @msaad00 in https://github.com/msaad00/agent-bom/pull/4813
* Make docker-mcp pin test robust to CI dubious-ownership (post-#4813) by @msaad00 in https://github.com/msaad00/agent-bom/pull/4816
* feat(adoption): measure conversion and lock release proof by @msaad00 in https://github.com/msaad00/agent-bom/pull/4814
* fix(ci): give Python coverage lane bounded headroom by @msaad00 in https://github.com/msaad00/agent-bom/pull/4817
* fix(release): enforce exact MCP deployment inventory by @msaad00 in https://github.com/msaad00/agent-bom/pull/4819
* fix(ci): isolate graph story concurrency contracts by @msaad00 in https://github.com/msaad00/agent-bom/pull/4821
* fix(release): consolidate policy CWPP and UI hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/4822
* fix(scale): make Postgres evidence reproducible by @msaad00 in https://github.com/msaad00/agent-bom/pull/4823
* feat(storage): expose portable Postgres contract by @msaad00 in https://github.com/msaad00/agent-bom/pull/4824
* feat(deploy): verify managed Postgres readiness by @msaad00 in https://github.com/msaad00/agent-bom/pull/4825
* feat(interop): harden portable evidence tables by @msaad00 in https://github.com/msaad00/agent-bom/pull/4826
* fix(release): require exact-main green CI proof by @msaad00 in https://github.com/msaad00/agent-bom/pull/4827
* chore(release): prepare 0.101.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/4828


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.100.0...v0.101.0
