---
title: Premature Contribution Firewall dry-run
date: 2026-07-11 22:15:42 +00:00
tags:
  - VrtxOmega
  - GitHub Actions
draft: false
repo: https://github.com/VrtxOmega/premature-contribution-firewall
marketplace: https://github.com/marketplace/actions/premature-contribution-firewall-dry-run
version: v0.1.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/VrtxOmega/premature-contribution-firewall** to version **v0.1.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/premature-contribution-firewall-dry-run) to find the latest changes.

## What's Changed

PCF v0.1.3 adds impact-first serious candidate scouting and hardens the authority boundaries that keep automation advisory.

## Highlights

- Added broad, read-only serious candidate scouting with explicit collection-integrity and open-PR-overlap gates.
- Expanded the adversarial residue corpus from 15 to 29 cases covering Unicode/control-text evasion, overlap ownership, repository-context vacuum, lane-gate omission, repro laundering, malformed MCP frames, and malformed batch inputs.
- Made repository context, lane persistence, repro evidence, and MCP framing fail closed when evidence is missing or malformed.
- Published through GitHub OIDC trusted publishing with npm provenance; no reusable npm token was required.

## Verification

- Tests: 242/242
- Deterministic benchmark: 77/77
- Adversarial red test: 29/29
- Maintainer demo: PASS, replay stable, 0 regressions
- MCP smoke: PASS
- npm package dry run: PASS, 75 files
- Clean registry install: PASS for `pcf` and `pcf-mcp`
- Installed MCP surface: 25 tools, serious scout present, GitHub writes disabled

Main verification: https://github.com/VrtxOmega/premature-contribution-firewall/actions/runs/29156257898

Trusted publish: https://github.com/VrtxOmega/premature-contribution-firewall/actions/runs/29156361509

npm: https://www.npmjs.com/package/premature-contribution-firewall/v/0.1.3

## Try It

```bash
npx -y -p premature-contribution-firewall@0.1.3 pcf --help
npx -y -p premature-contribution-firewall@0.1.3 pcf-mcp
```

PCF remains advisory. Heuristic results do not prove correctness, mergeability, authorship, or maintainer endorsement, and the MCP server exposes no public GitHub write tools.

