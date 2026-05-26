---
title: cloud-audit - AWS Security Scanner
date: 2026-05-26 06:26:56 +00:00
tags:
  - gebalamariusz
  - GitHub Actions
draft: false
repo: https://github.com/gebalamariusz/cloud-audit
marketplace: https://github.com/marketplace/actions/cloud-audit-aws-security-scanner
version: v2.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gebalamariusz/cloud-audit** to version **v2.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cloud-audit-aws-security-scanner) to find the latest changes.

## Action Summary

The **`cloud-audit` GitHub Action** is an open-source CLI tool designed to identify AWS attack paths, IAM privilege escalation risks, and prioritize remediation efforts by focusing on root causes rather than isolated issues. It automates the detection of security vulnerabilities, simulates potential fixes before implementation, and provides actionable insights to enhance cloud security. Key features include identifying attack chains, visualizing risk exposure using a "Blast Radius" tool, and integrating with a live visualizer for interactive analysis and reporting.

## What's Changed


### Added

- **Blast Radius CLI** - new `cloud-audit blast-radius --resource <id>` command
  that walks outward from a single AWS resource and shows what an attacker
  could reach if THAT resource were compromised. Pure in-memory analysis
  against a saved scan - zero AWS API calls at blast-radius time.

  Seed resource types supported:
  - EC2 instance (short id `i-XXX`)
  - IAM Role / IAM User (full ARN)
  - Lambda function (full ARN)
  - S3 bucket (full ARN)
  - Secrets Manager secret (full ARN)

  Expansion rules:
  - Compute -> attached IAM role (via attack chain `viz_steps` from AC-01,
    AC-02, AC-05 etc.) -> reachable identities and data
  - Identity -> admin impact node when `escalation_paths` indicate admin
  - Identity -> AssumeRole chain targets from `iam_trust_graph`
  - Identity (admin) -> S3 buckets / Secrets Manager secrets present in
    findings as candidate exfiltration targets

  Output formats (`--format`):
  - `tree` (default) - Rich tree in CLI with color-coded node types
  - `json` - BlastRadiusGraph v1.0 schema, the wire-format contract with
    cloud-audit-demo's 3D visualization (camelCase fields preserved on purpose)
  - `mermaid` - Mermaid `graph TD` diagram with per-type styling
  - `markdown` - compact summary for PRs or reports

  Bounds:
  - `--max-depth N` (default 5) caps BFS hops
  - `--max-nodes N` (default 50) caps total nodes in the graph

  Pure CLI, no Neo4j, no Docker, no SaaS account. Built on top of the
  existing `iam_trust_graph` (524 lines, AssumeRole BFS), `iam_analyzer`
  (706 lines, 60 escalation methods catalog), `correlate` (1574 lines,
  31 attack-chain rules with `VizStep`s), and `cost_model` so the
  same fixes you see in `scan` show up under the same finding ids in the
  blast-radius output. Documented in `docs/features/blast-radius.md`.

- **`exposure` command** - new `cloud-audit exposure` rolls up findings by
  blast-impact heuristic (which identities/data would compound on the next
  hop). Complements `blast-radius` (single-seed) with an account-wide view.

### Changed

- **`ScanReport.security_graph`** - new optional field (`dict[str, object] | None`).
  Populated by the scanner for blast-radius / exposure consumers. Backwards-
  compatible: existing parsers that don't know the field will keep working
  thanks to `default=None`.

### Fixed

Nine issues addressed by the pre-release security audit (`SECURITY-AUDIT-2026-05-15.md`):

- **SEC-001** - Mermaid output now HTML-entity escapes user-controlled node
  labels (`<`, `>`, `&`, `"`, `\`, plus brackets, braces, pipes). Without this,
  a crafted scan label `</text>` would break out of the Mermaid SVG context
  when the diagram is rendered in a GitHub README.
- **SEC-002** - `_make_id` collision protection: when a sanitised candidate id
  exceeds 120 chars, a SHA-256(prefix + value) suffix is appended so two
  long-but-different inputs cannot collide post-truncation (CWE-345 / CWE-1023).
- **SEC-003** - AssumeRole cycle (A->B->A) no longer re-emits the seed role
  as a lateral target node. ARN-level dedup (`visited_arns`) catches the
  cross-prefix duplicate that graph-id dedup alone misses.
- **SEC-004** - `_find_execution_role_for_lambda` now refuses to return a
  role belonging to a different function (CWE-697 narrow-match): scan with
  chain for `fnA` and query for `fnB` returns `None`, not `fnA`'s role.
- **SEC-005** - `--max-depth` and `--max-nodes` are clamped to safe bounds
  (1..25 and 1..10_000) instead of accepting unbounded user input (DoS).
- **SEC-006** - `--format tree` + `--output FILE` returns an error instead of
  silently writing ANSI escape sequences to disk (CWE-684).
- **SEC-007** - Exception handler in the CLI wraps `OSError` with a friendly
  message instead of leaking a full Python traceback to stderr.
- **SEC-008** - Rich console rendering of node lines escapes Rich markup
  (`[red]...[/]`) found inside scan labels so a crafted scan can't recolor
  the terminal output.
- **SEC-009** - Scanner persists `escalation_paths` to the saved scan so
  blast-radius can read them without re-running the IAM analyzer.

Plus pre-release follow-ups from the second security pass:

- **F-S2-01** - HTML report templates (`report.html.j2`, `compliance_html.py`)
  now strip non-`http(s)` URL schemes from `finding.cost_estimate.source_url`
  and `finding.remediation.doc_url`. Without this, a `javascript:` URL in a
  crafted scan JSON would execute when the user clicks the link in the
  rendered HTML report.
- **F-S2-02** - All `--output` writers refuse to follow pre-existing symlinks
  (TOCTOU symlink attack protection on shared CI runners). The CLI raises a
  clear error instead of silently clobbering the symlink target.
- **F-S2-03** - Markdown output (`--format markdown`) now escapes markdown
  control characters in user-controlled labels so a crafted resource name
  cannot inject `[link](javascript:...)` into the rendered report.
- **F-S2-04** - `_resolve_role_arn` falls back to `report.all_findings` when
  the role isn't present in `escalation_paths` (an EC2 with an attached
  admin role but no separate escalation path previously returned a
  seed-only blast graph - now resolves and reports Account Takeover).
- **F-S2-05** - BFS `--max-depth=1` now surfaces Account Takeover for an
  EC2 seed with an attached admin role (was off-by-one: compute->role
  linkage previously consumed the depth budget).
- **F-S2-06** - Fix/detection matching no longer uses bare `endswith(label)`
  for short labels - now requires a `/` or `:` boundary, eliminating false
  positives where label `"admin"` matched `super-admin`.

### Tests

- 786 -> 812 (+26 net). New regression tests in `tests/test_blast_radius.py`
  and `tests/test_graph.py` cover: resource-type detection (8 regex patterns),
  empty-scan seed-only behaviour, IAM role -> impact node, EC2 with attached
  role linkage, Lambda with execution role, max-depth and max-nodes
  enforcement, Rich tree render, Mermaid `graph TD` shape, JSON schema
  spot-checks (top-level fields, camelCase preservation, node + edge type
  enums), fixes and detections pulled from findings, and a full
  `TestSecurityRegression` class for SEC-001 through SEC-009.

### Schema contract

The JSON output is the schema documented in
`cloud-audit-demo/src/types/blast-radius.ts` (`BlastRadiusGraph` v1.0).
Field names are camelCase by intent because the demo's TypeScript types
are the consumer. A per-file ruff exemption in `pyproject.toml` documents
this trade-off.


