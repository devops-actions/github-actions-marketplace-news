---
title: agent-bom Scan
date: 2026-07-06 15:30:17 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.93.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.93.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## What's Changed

## What's Changed
* fix(docs): keep extension contract link mkdocs-strict safe by @msaad00 in https://github.com/msaad00/agent-bom/pull/3429
* docs(readme): refresh personas and terminal demo for 0.92.0 CLI by @msaad00 in https://github.com/msaad00/agent-bom/pull/3430
* fix(ci): unblock Sigma WebGL E2E dynamic import by @msaad00 in https://github.com/msaad00/agent-bom/pull/3432
* chore(perf): findings read bench and 2k CI regression by @msaad00 in https://github.com/msaad00/agent-bom/pull/3440
* feat(retention): enforce graph snapshot purge and history cap (PR1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3441
* feat(api): server-side compliance hub findings pagination (PR1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3442
* fix(scan): skip unreachable Go checksum lookups by @msaad00 in https://github.com/msaad00/agent-bom/pull/3443
* fix(compliance): normalize pci-dss slug alias and SAML install hint (#3439) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3444
* feat(helm): Alembic pre-upgrade hook; chore(sdks): bump Python SDK (#3433, #3438) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3445
* fix(scan): reduce secret FP on OAuth token minting assignments (#3437) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3447
* refactor(output): migrate compact and console formatters to Finding (#2918) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3448
* feat(skills): CI exit code and wider skill file discovery (#3434) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3449
* fix(hardening): Role enum, Grafana creds, ecosystem claims, HOSTS rollup (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3450
* feat(release): SBOM release asset, image scan gate, air-gap vuln-DB docs (#3436) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3451
* fix(hardening): severity unification and cosign/MCP audit fixes (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3452
* feat(retention): per-tenant graph retention and analytics cap (PR2) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3453
* feat(api): findings read PR2 — approximate counts and UI pagination (#3192) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3454
* chore(deps): combine dependency updates (2026-07-03) by @andres-linero in https://github.com/msaad00/agent-bom/pull/3460
* feat(api): expression-indexed severity/cvss finding sorts (#3192) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3461
* fix(api): idempotent finding ingest (P0) (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3462
* fix(reliability): tenant fail-closed, cloud retry, health rate-exempt, batch cap by @msaad00 in https://github.com/msaad00/agent-bom/pull/3464
* feat(enrich): bundle KEV and EPSS into offline vuln-DB layer by @msaad00 in https://github.com/msaad00/agent-bom/pull/3466
* feat(ui): labeled demo estate and surface lock states (PR1) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3467
* feat(api): finding lifecycle L1 — monotone current-state merge (#3465) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3470
* fix(api): batch cap returns 422 and index filtered severity+cvss reads (#3474) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3477
* chore(repo): hygiene + session cookie Secure default (#3475) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3479
* fix(auth): cluster-safe SAML RelayState nonce store (#3476) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3478
* feat(api): finding lifecycle L2 — occurrence log keyed on scan_id (#3465) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3480
* feat(sdk): expose finding lifecycle ingest on control-plane clients by @msaad00 in https://github.com/msaad00/agent-bom/pull/3483
* feat(api): finding lifecycle L3+L4 — resolve reconcile and current-state reads (#3465) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3481
* docs(audit): add sanitized 2026-07-03 ledger with issue mapping by @msaad00 in https://github.com/msaad00/agent-bom/pull/3500
* fix(api): harden OCSF ingest — cap/offload (A) + deterministic event IDs & ClickHouse dedup (J) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3501
* feat(ui): interactive blast-radius overlay on the lineage graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/3502
* fix(ui): dock graph lens switcher — stop overlaying the canvas by @msaad00 in https://github.com/msaad00/agent-bom/pull/3505
* docs(deploy): auto-migration hook, finding encryption prereq, ClickHouse OSS+Cloud by @msaad00 in https://github.com/msaad00/agent-bom/pull/3504
* feat(ui): wire estate roll-up navigation for large graphs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3507
* fix(api,http): bound ScanRequest list elements and jitter sync retries by @msaad00 in https://github.com/msaad00/agent-bom/pull/3508
* fix(api): gate external compliance frameworks and lock OCSF product attribution by @msaad00 in https://github.com/msaad00/agent-bom/pull/3509
* fix(api): restore overview tiles from compact scans and add current-state sort indexes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3515
* refactor(api): deduplicate current-state hub payloads via ledger refs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3517
* feat(api): keyset cursor pagination for hub current-state findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/3518
* perf(api): gzip JSON responses and zstd-compress hub payloads at rest by @msaad00 in https://github.com/msaad00/agent-bom/pull/3516
* feat(helm): enterprise-demo profile with AWS estate inventory cron by @msaad00 in https://github.com/msaad00/agent-bom/pull/3519
* feat(api,ui): overview graph drill and estate correlation API by @msaad00 in https://github.com/msaad00/agent-bom/pull/3520
* fix(cloud,helm): http_client GPU connectors + scoped API NetworkPolicy by @msaad00 in https://github.com/msaad00/agent-bom/pull/3522
* feat(scanners): runtime-enforce driver run() and failure_mode by @msaad00 in https://github.com/msaad00/agent-bom/pull/3524
* fix(api): Postgres rate-limit sliding window matches docstring by @msaad00 in https://github.com/msaad00/agent-bom/pull/3523
* docs: compact session/enforcement flow diagrams by @andres-linero in https://github.com/msaad00/agent-bom/pull/3525
* feat(api): async findings report export jobs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3526
* perf(analytics): ClickHouse sink dedup for canonical rows by @msaad00 in https://github.com/msaad00/agent-bom/pull/3527
* fix(api): CVSS keyset pagination and report export truncation by @msaad00 in https://github.com/msaad00/agent-bom/pull/3530
* refactor(api): hub reference-table normalization by @msaad00 in https://github.com/msaad00/agent-bom/pull/3528
* docs(deploy): audit Alembic, encryption prerequisite, ClickHouse positioning by @msaad00 in https://github.com/msaad00/agent-bom/pull/3532
* fix(api/scim): group PATCH, deprovision keys, SCIM error envelopes by @msaad00 in https://github.com/msaad00/agent-bom/pull/3540
* feat(export): delta-stream connector for SIEM and data-lake sinks by @msaad00 in https://github.com/msaad00/agent-bom/pull/3531
* test(api): lock in hub current-state payload dedup by @msaad00 in https://github.com/msaad00/agent-bom/pull/3541
* feat(api): S3 report export artifacts with presigned URLs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3542
* fix(api/scim): PUT full replace and schema discovery by id by @msaad00 in https://github.com/msaad00/agent-bom/pull/3543
* fix(api): gate bulk-ingest O(n) snapshot walk (#3544) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3545
* fix(fleet): local discovery push for fleet sync by @msaad00 in https://github.com/msaad00/agent-bom/pull/3546
* chore(glama): pin release ref and verify Dockerfile on publish by @msaad00 in https://github.com/msaad00/agent-bom/pull/3547
* docs(audit): sync AUDIT-2026-07-03 ledger with shipped main by @msaad00 in https://github.com/msaad00/agent-bom/pull/3550
* docs(readme): lead with personas, Start Here, and demo proof by @msaad00 in https://github.com/msaad00/agent-bom/pull/3548
* feat(headless): wire findings push CLI and hub current-state list (#3482) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3549
* feat(ui): show findings lifecycle status and timestamps in queue by @msaad00 in https://github.com/msaad00/agent-bom/pull/3551
* fix(cli): skip PyPI update check in offline and air-gap mode (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3552
* fix(deploy): mount ~/.agent-bom for abom user in compose profiles (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3553
* fix(cli): reject reserved tenant ids on CLI and MCP resolvers (#3242) by @msaad00 in https://github.com/msaad00/agent-bom/pull/3554
* docs(audit): headless ingest docs and audit ledger sync by @msaad00 in https://github.com/msaad00/agent-bom/pull/3555
* fix(cli): honor --offline for PyPI check and loopback fleet push by @msaad00 in https://github.com/msaad00/agent-bom/pull/3556
* fix(headless): offline push, MCP check version, token-derived auth by @msaad00 in https://github.com/msaad00/agent-bom/pull/3557
* chore(ci): reject LLM co-author trailers in commit messages by @msaad00 in https://github.com/msaad00/agent-bom/pull/3558
* refactor(output): use canonical severity_rank in remediation plan by @msaad00 in https://github.com/msaad00/agent-bom/pull/3559
* docs(audit): sync ledger for headless hardening #3556-#3558 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3560
* fix(auth): reject replayed OIDC JWTs via jti one-time store by @msaad00 in https://github.com/msaad00/agent-bom/pull/3561
* refactor(trust): derive CVE weights from canonical severity_rank by @msaad00 in https://github.com/msaad00/agent-bom/pull/3562
* docs(audit): sync ledger post #3561 OIDC jti replay by @msaad00 in https://github.com/msaad00/agent-bom/pull/3563
* feat(plugins): runtime activation for opt-in plugin entry points by @andres-linero in https://github.com/msaad00/agent-bom/pull/3564
* refactor(severity): unify API scan and compact CIS sort ranks by @msaad00 in https://github.com/msaad00/agent-bom/pull/3565
* refactor(severity): canonical CIS sort ranks in HTML report by @msaad00 in https://github.com/msaad00/agent-bom/pull/3566
* refactor(severity): canonical package severity rank in Mermaid output by @msaad00 in https://github.com/msaad00/agent-bom/pull/3567
* refactor(severity): canonical CIS sort ranks in console renderer by @msaad00 in https://github.com/msaad00/agent-bom/pull/3568
* refactor(severity): canonical sort ranks in skills, license, extensions by @msaad00 in https://github.com/msaad00/agent-bom/pull/3569
* feat(reachability): export Python symbol reachability in findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/3571
* refactor(output): migrate markdown CVE sections to unified Finding by @msaad00 in https://github.com/msaad00/agent-bom/pull/3570
* perf(db): partition hub observations with retention rollover by @msaad00 in https://github.com/msaad00/agent-bom/pull/3572
* feat(reachability): include symbol reachability in delta-stream snapshots by @msaad00 in https://github.com/msaad00/agent-bom/pull/3573
* refactor(output): migrate PDF CVE sections to unified Finding by @msaad00 in https://github.com/msaad00/agent-bom/pull/3574
* feat(reachability): multilang symbol join + CWE/CVE/CPE advisory context by @msaad00 in https://github.com/msaad00/agent-bom/pull/3576
* feat(reachability): wire symbol reach into triage scoring and VEX by @msaad00 in https://github.com/msaad00/agent-bom/pull/3577
* refactor(output): migrate SARIF CVE loop to unified Finding stream by @msaad00 in https://github.com/msaad00/agent-bom/pull/3578
* feat(reachability): Java/Rust AST symbol join for Maven and Cargo by @msaad00 in https://github.com/msaad00/agent-bom/pull/3579
* docs(readme): product-first flow, compact persona band, plain-language taglines by @msaad00 in https://github.com/msaad00/agent-bom/pull/3580
* feat(reachability): NuGet/C# AST symbol join for .NET MCP backends by @msaad00 in https://github.com/msaad00/agent-bom/pull/3581
* feat(reachability): RubyGems AST symbol join for Rails MCP backends by @msaad00 in https://github.com/msaad00/agent-bom/pull/3582
* feat(reachability): Gradle-only Java symbol join via build.gradle coords by @msaad00 in https://github.com/msaad00/agent-bom/pull/3584
* docs(roadmap): validated quick-wins queue for evidence and discovery by @msaad00 in https://github.com/msaad00/agent-bom/pull/3583
* feat(ingest): wire SARIF into external scanner detect_and_parse path by @msaad00 in https://github.com/msaad00/agent-bom/pull/3585
* feat(vex): ingest CSAF and CycloneDX VEX documents by @msaad00 in https://github.com/msaad00/agent-bom/pull/3586
* feat(output): registry verified badge and evidence ingest docs by @msaad00 in https://github.com/msaad00/agent-bom/pull/3587
* refactor(output): migrate json and html CVE tables to Finding stream by @msaad00 in https://github.com/msaad00/agent-bom/pull/3588
* feat(alignment): VEX on Finding stream and API scan field parity by @msaad00 in https://github.com/msaad00/agent-bom/pull/3589
* chore(release): prepare v0.93.0 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3590
* feat(gap): pre-tag slice — Finding topology, lock cards, close #3242 by @msaad00 in https://github.com/msaad00/agent-bom/pull/3592


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.92.0...v0.93.0
