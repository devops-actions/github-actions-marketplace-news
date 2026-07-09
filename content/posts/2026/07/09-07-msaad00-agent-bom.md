---
title: agent-bom Scan
date: 2026-07-09 07:00:08 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.94.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.94.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## What's Changed

## What's Changed
* fix(docs): repair out-of-tree links breaking strict mkdocs build by @msaad00 in https://github.com/msaad00/agent-bom/pull/3632
* fix(cli): unified terminal UX — sections, deduped CIS, quiet cloud by @msaad00 in https://github.com/msaad00/agent-bom/pull/3633
* fix(cloud): Key Vault CIS false-PASS + least-privilege deep-scan grants by @msaad00 in https://github.com/msaad00/agent-bom/pull/3636
* fix(cloud): scan Lambda deployment packages + deep-scan pre-tagged container images by @msaad00 in https://github.com/msaad00/agent-bom/pull/3634
* fix(cloud): Lambda discovery on by default (no --include-lambda) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3635
* ci(docs): gate PRs on mkdocs build --strict by @msaad00 in https://github.com/msaad00/agent-bom/pull/3638
* feat(output): scale-ready tabbed + paginated HTML report by @msaad00 in https://github.com/msaad00/agent-bom/pull/3637
* feat(ui): Storybook harness for large dashboard components by @msaad00 in https://github.com/msaad00/agent-bom/pull/3640
* feat(enrich): mature the multi-provider LLM enrichment harness by @msaad00 in https://github.com/msaad00/agent-bom/pull/3639
* fix(scanners): correct OSV fixed_version resolution by @msaad00 in https://github.com/msaad00/agent-bom/pull/3644
* fix(output): SARIF/json finding-count parity + --reproducible timestamps + /dev/null exit by @msaad00 in https://github.com/msaad00/agent-bom/pull/3645
* Part of #1469 (Phase 0: hardware-backed device identity) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3646
* chore: logo + branding consistency pass by @msaad00 in https://github.com/msaad00/agent-bom/pull/3647
* Part of #3499 (Iceberg catalog export) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3648
* Part of #3499 (ClickHouse findings-ingest) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3650
* perf(db): fix cvss filesort + O(table) origin count on hub current reads by @msaad00 in https://github.com/msaad00/agent-bom/pull/3654
* Part of #3192 (drift-as-UI lens) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3649
* Part of #1969 (phase 1: strict mypy for models + core API) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3655
* Closes #3499 tail (Swift bare-call precision) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3656
* perf(db): generic RANGE-partition maintenance + retention rollover by @msaad00 in https://github.com/msaad00/agent-bom/pull/3657
* fix(rbac): resolve NO_AUTH_ROLE from env at call time (kills release-blocker CI flake) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3660
* docs: canonical how-it-works + deployment matrix + editions page by @msaad00 in https://github.com/msaad00/agent-bom/pull/3668
* fix(api): consistent empty-scan response shape across MCP and HTTP surfaces (CI flake) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3663
* Closes #1522 (split output/html.py) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3661
* perf(graph): bounded snapshot-stats, rollup orphans, deep-offset cap (Part of #3664) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3669
* refactor(cli): unify scan verb, tier flags behind --help-all, dedup formats by @msaad00 in https://github.com/msaad00/agent-bom/pull/3672
* fix(cis): fail-closed on per-resource permission denial across ~25 checks (Closes #3679) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3691
* fix(mcp): gate ingest_external_scan as a destructive write (Closes #3681) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3692
* fix(ingest): chunked reconcile_absent + pip-visible ai-enrich security floors by @msaad00 in https://github.com/msaad00/agent-bom/pull/3693
* fix(cis): ERROR on partial permission denial (strict GRC coverage) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3695
* fix(malicious): synthesize vuln-less malicious findings end-to-end by @msaad00 in https://github.com/msaad00/agent-bom/pull/3694
* fix(audit): genesis chain verification and git-SHA range false-positive by @msaad00 in https://github.com/msaad00/agent-bom/pull/3696
* feat(runtime): shield fail-closed defaults, cred redact, SSRF guard by @msaad00 in https://github.com/msaad00/agent-bom/pull/3699
* feat(audit): signed chain checkpoint detects tail truncation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3700
* feat(identity): SCIM patch fixes, audit RBAC, session logout hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/3701
* chore(dev): 'make preflight' to catch OpenAPI/schema drift before push by @msaad00 in https://github.com/msaad00/agent-bom/pull/3702
* docs: consolidate duplicate doc clusters (stage 1 of #3703) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3704
* feat(identity): auto-bind SCIM subject on API key issuance by @msaad00 in https://github.com/msaad00/agent-bom/pull/3705
* feat(platform): DB-aware /readyz and firewall reload fail-closed by @msaad00 in https://github.com/msaad00/agent-bom/pull/3707
* feat(cloud,runtime): full coverage and shield hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/3706
* fix(config): warn on unparseable env bool/int/float values by @msaad00 in https://github.com/msaad00/agent-bom/pull/3711
* feat(output): add SARIF partialFingerprints for GitHub dedup by @msaad00 in https://github.com/msaad00/agent-bom/pull/3712
* docs(config): canonical env aliases and regenerated ENV_VARS (#3677) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3713
* refactor(api): centralize /v1 mount on shared API router (#3666) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3715
* chore(tests): group cloud tests under tests/cloud/ (#3703) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3716
* fix(security): resolve CodeQL sensitive export and exception alerts by @msaad00 in https://github.com/msaad00/agent-bom/pull/3717
* chore(tests): group API tests under tests/api/ (#3703) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3718
* fix(security): clear CodeQL alerts and finalize MCP catalog drift (#3675) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3719
* docs(deploy): add README for raw Kubernetes manifests by @andres-linero in https://github.com/msaad00/agent-bom/pull/3720
* docs(deploy): add README for Snowflake deployment assets by @andres-linero in https://github.com/msaad00/agent-bom/pull/3721
* chore(release): prepare 0.94.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3722
* fix(accuracy): git-SHA advisory false positives + malicious packages missing from CSV by @msaad00 in https://github.com/msaad00/agent-bom/pull/3723
* docs(release): fold #3723 into 0.94.0 changelog by @msaad00 in https://github.com/msaad00/agent-bom/pull/3724


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.93.5...v0.94.0
