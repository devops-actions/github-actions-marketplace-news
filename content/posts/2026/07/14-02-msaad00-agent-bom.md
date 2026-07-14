---
title: agent-bom Scan
date: 2026-07-14 02:44:34 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.95.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scanning of software vulnerabilities using Open Source Security Framework (SARIF) format. It integrates with various security tools such as Snyk, Checkmarx, Veracode, and more to scan code repositories, container images, and APIs. The action generates findings in SARIF format, which can be integrated into existing vulnerability management systems or used for compliance reporting.
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.95.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of software vulnerabilities using Open Source Security Framework (SARIF) format. It integrates with various security tools such as Snyk, Checkmarx, Veracode, and more to scan code repositories, container images, and APIs. The action generates findings in SARIF format, which can be integrated into existing vulnerability management systems or used for compliance reporting.

## What's Changed

## What's Changed
* fix(ci): isolate dashboard no-ui route tests by @msaad00 in https://github.com/msaad00/agent-bom/pull/3764
* fix(ui): sources overflow and demo watermark on mobile by @msaad00 in https://github.com/msaad00/agent-bom/pull/3766
* fix(cli): cloud scan alias crashes with TypeError (aws_include_lambda) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3767
* fix(gateway): detect modern secret formats in DLP; correct fail_mode doc by @msaad00 in https://github.com/msaad00/agent-bom/pull/3768
* fix(cli): harden focused-command formats, unscanned-check gate, friendly findings error, --aws-deep by @msaad00 in https://github.com/msaad00/agent-bom/pull/3769
* fix(api): dedupe in-memory findings view, calm graph backpressure, validate findings sort/severity + results push by @msaad00 in https://github.com/msaad00/agent-bom/pull/3770
* fix(output): surface reachability in JSON findings, warn on malformed manifests, tighten typosquat + git-SHA confidence by @msaad00 in https://github.com/msaad00/agent-bom/pull/3771
* fix(graph): stop walking inbound trust edges as outbound assume (complete #3761) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3772
* fix(ui): product taxonomy, density pass, and demo clarity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3773
* fix(ui): un-crash Runtime + Lineage pages, unique findings keys, light-mode + version fixes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3774
* fix(ui): align Snowflake and cloud vendor logos in workflow diagram by @msaad00 in https://github.com/msaad00/agent-bom/pull/3776
* feat(ui): add top product bar with canonical agent-bom branding by @msaad00 in https://github.com/msaad00/agent-bom/pull/3777
* feat(ui): tenant service registry for lock/connect/live states by @msaad00 in https://github.com/msaad00/agent-bom/pull/3775
* fix(deploy): pilot quickstart db path, SPCS tag sync, dependency CVE floors by @msaad00 in https://github.com/msaad00/agent-bom/pull/3778
* fix(data): store correctness + output fidelity (tenant audit chain, snowflake fleet, clickhouse ts, sqlite busy_timeout, SBOM/CSV/parquet/prometheus) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3779
* test(ci): de-flake 1M SQLite perf guard + exclude slow tests from required CI by @msaad00 in https://github.com/msaad00/agent-bom/pull/3780
* fix(security): VCS token off argv, header download token, redact webhook URLs, tenant-scope stores, HEAD gate, MCP write labels, NL skill-exfil, report suggestion by @msaad00 in https://github.com/msaad00/agent-bom/pull/3781
* docs(diagram): make cloud vendor logos legible on white chips by @msaad00 in https://github.com/msaad00/agent-bom/pull/3782
* feat(demo): seed showcase catalog, workflow v2, and operator UI polish by @msaad00 in https://github.com/msaad00/agent-bom/pull/3783
* fix(ui): posture nav, scan targets, and security-graph polish by @msaad00 in https://github.com/msaad00/agent-bom/pull/3784
* feat(ui): embed live graph investigation on security graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3785
* fix(ui): align AI BOM manifest with platform theme and evidence model by @msaad00 in https://github.com/msaad00/agent-bom/pull/3786
* fix(ui): consolidated operator experience — connectors, jobs DAG, graph readability by @msaad00 in https://github.com/msaad00/agent-bom/pull/3787
* feat(ui): clarify New Scan scope and connected account picker by @msaad00 in https://github.com/msaad00/agent-bom/pull/3788
* fix(ui): unblock main E2E graph selector drift by @msaad00 in https://github.com/msaad00/agent-bom/pull/3791
* chore(deps): bump lucide-react from 1.23.0 to 1.24.0 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/3790
* feat(brand): BOM manifest mark + agent bill of materials tagline by @msaad00 in https://github.com/msaad00/agent-bom/pull/3792
* fix(tests): restore release lint hygiene by @msaad00 in https://github.com/msaad00/agent-bom/pull/3793
* docs(deploy): rollout verification + brand/docs polish by @msaad00 in https://github.com/msaad00/agent-bom/pull/3794
* chore(typing): bring findings pipeline + store accessors under strict mypy (#1969) by @andres-linero in https://github.com/msaad00/agent-bom/pull/3796
* fix(ui): agent+BOM brand mark and NIST text tiles by @msaad00 in https://github.com/msaad00/agent-bom/pull/3797
* feat(graph): first-class AI framework BOM entities by @msaad00 in https://github.com/msaad00/agent-bom/pull/3798
* fix(platform): harden self-hosted release validation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3795
* fix(deploy): secrets via files across Postgres and control plane by @msaad00 in https://github.com/msaad00/agent-bom/pull/3801
* feat(ui): Overview exec briefing; mesh off-home by @msaad00 in https://github.com/msaad00/agent-bom/pull/3812
* feat(brand): agent HUD in the O, not emoji smile by @msaad00 in https://github.com/msaad00/agent-bom/pull/3813
* fix(deploy): reset Postgres app-password GUC so it doesn't persist in cleartext by @msaad00 in https://github.com/msaad00/agent-bom/pull/3817
* fix(ui): topology contrast + drop orphan DashboardAnalytics by @msaad00 in https://github.com/msaad00/agent-bom/pull/3818
* fix(compliance): never score unevaluated controls as pass by @msaad00 in https://github.com/msaad00/agent-bom/pull/3819
* fix(secrets): resolve signing PEMs file-first + keyless-lead cloud creds (#3807) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3820
* feat(security): keep DB-tier secrets out of the DSN and rotate audit HMAC keys by @msaad00 in https://github.com/msaad00/agent-bom/pull/3821
* feat(identity): harden OAuth-AS issuer, JWT aud/iss binding, deprovision by owner by @msaad00 in https://github.com/msaad00/agent-bom/pull/3822
* fix(findings): match severity filter on string column for backend parity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3824
* fix(api): offload findings read-path and graph reads off the event loop by @msaad00 in https://github.com/msaad00/agent-bom/pull/3823
* feat(output): interop schema conformance gate + strict-validity and determinism fixes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3826
* fix(cli): scan explicit --project under --no-discover; guard zero-artifact scans by @msaad00 in https://github.com/msaad00/agent-bom/pull/3825
* refactor(ast): dedupe shared scanner primitives into ast_signal_utils by @msaad00 in https://github.com/msaad00/agent-bom/pull/3828
* docs: reconcile drifted capability counts and enforce check-counts in CI by @msaad00 in https://github.com/msaad00/agent-bom/pull/3827
* chore: remove orphaned back-compat shim and duplicate scripts by @msaad00 in https://github.com/msaad00/agent-bom/pull/3830
* fix(graph): canonical model node id + emit observes edges by @msaad00 in https://github.com/msaad00/agent-bom/pull/3829
* fix(auth): count SAML SSO in CLI boot gate and auth-configured checks by @andres-linero in https://github.com/msaad00/agent-bom/pull/3831
* fix(image): include aws/azure/gcp SDKs so self-hosted BYOC works (#3832) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3836
* fix(correctness): close post-merge audit gaps by @msaad00 in https://github.com/msaad00/agent-bom/pull/3837
* feat(cli): install-aware upgrade guidance, update/upgrade disambiguation, DB freshness signals by @msaad00 in https://github.com/msaad00/agent-bom/pull/3838
* ci(demo): automate hosted demo redeploy on release via SSM (#3833) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3839
* fix(secrets): make proxy signing keys file-first by @msaad00 in https://github.com/msaad00/agent-bom/pull/3840
* docs(deploy): add a verifiable self-hosted BYOC path by @msaad00 in https://github.com/msaad00/agent-bom/pull/3841
* feat(cli): connect can establish and verify a read-only cloud connection (#3832) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3842
* fix(cli): correct Snowflake connect scan command (points at a removed surface) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3846
* feat(ui): post-scan repo overview with surface chips by @msaad00 in https://github.com/msaad00/agent-bom/pull/3848
* fix(polish): refresh cloud scans and HUD favicon by @msaad00 in https://github.com/msaad00/agent-bom/pull/3844
* feat(auth): OIDC auth-code + PKCE browser login foundation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3849
* docs(readme): Scan → Graph → Serve lanes, brand mark, fresh demo media by @msaad00 in https://github.com/msaad00/agent-bom/pull/3850
* chore(release): 0.95.0 — enterprise auth, cloud-connect, interop, security hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/3851
* docs(release): combine demo, provider onboarding, and SDK maintenance by @msaad00 in https://github.com/msaad00/agent-bom/pull/3855
* fix(ui): dedupe live-investigation panel, graph readability, HUD mark polish, overview consolidation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3857
* chore(maintenance): combine UI cleanup and dependency updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/3862
* fix(ui): leadership-first overview, correlated top risks, drawers, findings drill-down by @msaad00 in https://github.com/msaad00/agent-bom/pull/3863
* fix(security): confine POST /v1/scan local paths to the same jail as secondary scan endpoints by @msaad00 in https://github.com/msaad00/agent-bom/pull/3864
* fix(ui): consolidate scan entry points + vocabulary (Connect→Scan→Assess) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3865
* fix(demo): complete + reliable correlated demo-estate seed (agents, exposure paths, identity) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3866
* ci(azure-ingestion): skip scheduled run when Azure OIDC is not configured by @msaad00 in https://github.com/msaad00/agent-bom/pull/3868
* docs(readme): top-load What-is/Personas/How-It-Works + Connect-first visuals & logo lockup by @msaad00 in https://github.com/msaad00/agent-bom/pull/3867
* feat(inventory): unified asset-inventory endpoint + Snowflake connection sweep parity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3869
* fix(ui): pre-release polish — full-width sources/registry + connection drawer CTA dedupe by @msaad00 in https://github.com/msaad00/agent-bom/pull/3870
* feat(cloud): non-blocking cloud SDK freshness signal by @andres-linero in https://github.com/msaad00/agent-bom/pull/3872
* feat(mcp): agent-native unified asset-inventory tools by @msaad00 in https://github.com/msaad00/agent-bom/pull/3871
* feat(platform): combine API route deprecation and dashboard SSO CTA by @msaad00 in https://github.com/msaad00/agent-bom/pull/3875
* docs: reconcile API-op / route-module / MCP-tool counts for 0.95.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3876
* fix(inventory): facet-filtered list drops rows past the page limit (P1, pre-tag) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3877
* fix(ui): lift dark theme contrast for readable hierarchy by @msaad00 in https://github.com/msaad00/agent-bom/pull/3878
* fix(compliance): per-framework endpoint reports no_data on zero scans, not score 100 (pre-tag) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3879
* fix(overview): count bulk-ingested findings in posture grade + headline by @msaad00 in https://github.com/msaad00/agent-bom/pull/3890
* fix(compliance): wire MITRE ATT&CK to its real bundled catalog (#3882) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3891
* fix(api): dedupe /v1/findings to one row per canonical id + normalize identifiers by @msaad00 in https://github.com/msaad00/agent-bom/pull/3893
* perf(findings): shed heavy /v1/findings reads with 429 under saturation (#3884) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3894
* perf(inventory): serve inventory/summary breakdown from cached snapshot counts (#3885) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3895
* fix(dx): 0.95.0 DX/UX polish bundle (serve --demo-estate, offline+repo_url guard, per-control no_data, blocklist seed) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3896
* feat(ui): scalable connector gallery on /connections by @msaad00 in https://github.com/msaad00/agent-bom/pull/3901
* perf(intel): fix full-scan hangs in KEV/advisory lookups (#3912) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3914
* fix(ui): distinguish AI clients from background agents in agent inventory by @msaad00 in https://github.com/msaad00/agent-bom/pull/3918
* chore(maintenance): combine registry and dependency refreshes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3919
* perf+fix: sargable hot-table filters + retain alert-webhook tasks (#3911, #3913) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3920
* polish: MCP-catalog freshness line + client/background agent copy by @msaad00 in https://github.com/msaad00/agent-bom/pull/3921
* fix(ui): light-theme coherence — tokenize agents/registry/overview by @msaad00 in https://github.com/msaad00/agent-bom/pull/3922
* perf(intel): offload intel routes off the event loop (P1 availability) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3924
* fix(compliance): /v1/compliance scores over evaluated controls, not silent passes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3925
* docs+ui: release-align nav label, stale counts, CHANGELOG date by @msaad00 in https://github.com/msaad00/agent-bom/pull/3923
* perf(findings): materialize scan_id + severity index on hub_findings_current by @andres-linero in https://github.com/msaad00/agent-bom/pull/3928
* perf(intel): make build_daily_brief KEV alias correlation sargable by @andres-linero in https://github.com/msaad00/agent-bom/pull/3929
* chore(docs): recapture 0.95.0 product screenshots by @msaad00 in https://github.com/msaad00/agent-bom/pull/3930


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.94.2...v0.95.0
