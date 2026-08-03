---
title: agent-bom Scan
date: 2026-08-03 15:17:16 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.98.3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action is designed to automate the scanning of software repositories, images, and cloud accounts using a centralized control plane. It provides a unified approach to managing evidence across different environments and enforcing AI or MCP runtime policies in infrastructure that users control. The action can be used without an account and supports multiple package ecosystems and compliance surfaces, with no need for API keys.
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.98.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

The GitHub Action is designed to automate the scanning of software repositories, images, and cloud accounts using a centralized control plane. It provides a unified approach to managing evidence across different environments and enforcing AI or MCP runtime policies in infrastructure that users control. The action can be used without an account and supports multiple package ecosystems and compliance surfaces, with no need for API keys.

## What's Changed

## What's Changed
* chore(deps): consolidate dependency and registry maintenance by @msaad00 in https://github.com/msaad00/agent-bom/pull/4516
* fix(registries): harden Glama release freshness by @msaad00 in https://github.com/msaad00/agent-bom/pull/4517
* fix(cwpp): enforce runtime evidence integrity by @msaad00 in https://github.com/msaad00/agent-bom/pull/4518
* fix(ci): remove privileged untrusted checkout by @msaad00 in https://github.com/msaad00/agent-bom/pull/4519
* feat(runtime): add canonical client profile foundation by @msaad00 in https://github.com/msaad00/agent-bom/pull/4520
* feat(runtime): enforce canonical client profiles in gateway by @msaad00 in https://github.com/msaad00/agent-bom/pull/4521
* Restore scanning feature description in README by @msaad00 in https://github.com/msaad00/agent-bom/pull/4522
* docs(readme): lead with control-plane scale by @msaad00 in https://github.com/msaad00/agent-bom/pull/4524
* fix(docs): align README storefront contract by @msaad00 in https://github.com/msaad00/agent-bom/pull/4525
* feat(runtime): add durable gateway activity ledger by @msaad00 in https://github.com/msaad00/agent-bom/pull/4523
* chore(deps): consolidate UI and workflow maintenance by @msaad00 in https://github.com/msaad00/agent-bom/pull/4534
* fix(security): enforce trusted maintenance and trial boundaries by @msaad00 in https://github.com/msaad00/agent-bom/pull/4535
* fix(graph): make topology and completeness contracts honest by @msaad00 in https://github.com/msaad00/agent-bom/pull/4536
* fix(deploy): harden AWS control-plane secret wiring by @msaad00 in https://github.com/msaad00/agent-bom/pull/4537
* test(deploy): guard the AWS control-plane secret wiring contract by @msaad00 in https://github.com/msaad00/agent-bom/pull/4539
* test(overview): isolate the process-global caches /v1/overview reads by @msaad00 in https://github.com/msaad00/agent-bom/pull/4540
* fix(cwpp): serialize runtime-evidence schema bootstrap across processes by @msaad00 in https://github.com/msaad00/agent-bom/pull/4541
* chore(deps): bump @tanstack/react-virtual from 3.14.8 to 3.14.9 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/4542
* fix(gateway): make agent containment actually contain by @msaad00 in https://github.com/msaad00/agent-bom/pull/4544
* chore(deps-dev): bump jsdom from 30.0.0 to 30.0.1 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/4543
* feat(cost): attribute LLM spend and fuse it into the unified graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/4545
* feat(graph): surface spend and one-click containment on the canvas by @msaad00 in https://github.com/msaad00/agent-bom/pull/4547
* fix(gateway): stop identity revocation failing open on a large roster by @msaad00 in https://github.com/msaad00/agent-bom/pull/4548
* fix(mcp): pin the MCP SDK to the major that ships our entry point by @msaad00 in https://github.com/msaad00/agent-bom/pull/4550
* fix(ci): make MCP server tests hermetic instead of registry-dependent by @msaad00 in https://github.com/msaad00/agent-bom/pull/4549
* test(cloud): stop faked provider SDKs leaking between test files by @msaad00 in https://github.com/msaad00/agent-bom/pull/4553
* fix(scan): resolve conflicting advisory severities upward, not by sort order by @msaad00 in https://github.com/msaad00/agent-bom/pull/4551
* fix(ci): keep the metrics snapshot working when git refuses the checkout by @msaad00 in https://github.com/msaad00/agent-bom/pull/4554
* perf(gateway): stop the live feed freezing the whole control plane by @msaad00 in https://github.com/msaad00/agent-bom/pull/4555
* fix(graph): a filtered view of a truncated snapshot is still truncated by @msaad00 in https://github.com/msaad00/agent-bom/pull/4557
* fix(audit): stop one tenant's policy audit entry discarding another's by @msaad00 in https://github.com/msaad00/agent-bom/pull/4556
* perf(gateway): make the activity feed durable and cursor-backed by @msaad00 in https://github.com/msaad00/agent-bom/pull/4558
* fix(cis): fail closed on stale remediation bindings by @msaad00 in https://github.com/msaad00/agent-bom/pull/4559
* fix(cis): restrict root remediation to break-glass use by @msaad00 in https://github.com/msaad00/agent-bom/pull/4560
* fix(cis): restore provider-verified remediation commands by @msaad00 in https://github.com/msaad00/agent-bom/pull/4561
* fix(integrity): fail closed on missing and malformed evidence by @msaad00 in https://github.com/msaad00/agent-bom/pull/4562
* Remove image section from README by @msaad00 in https://github.com/msaad00/agent-bom/pull/4563
* fix(runtime): bind tenant work and bound hot paths by @msaad00 in https://github.com/msaad00/agent-bom/pull/4564
* ci: route documentation-only changes through fast gates by @msaad00 in https://github.com/msaad00/agent-bom/pull/4565
* fix(control-plane): restore bounded result honesty by @msaad00 in https://github.com/msaad00/agent-bom/pull/4566
* fix(models): surface malicious artifacts as findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/4567
* fix(skills): audit instruction-only files by @msaad00 in https://github.com/msaad00/agent-bom/pull/4568
* fix(graph): scope credential identity to servers by @msaad00 in https://github.com/msaad00/agent-bom/pull/4569
* fix(graph): bound Postgres edge reconciliation by @msaad00 in https://github.com/msaad00/agent-bom/pull/4570
* chore(deps): bump lucide-react from 1.27.0 to 1.28.0 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/4572
* chore(deps): update release and registry actions by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/4573
* fix(api): reject malformed requests, degrade on unreadable manifests, and close tenant gaps by @msaad00 in https://github.com/msaad00/agent-bom/pull/4576
* fix(compliance): score only the controls the scan actually evidenced by @msaad00 in https://github.com/msaad00/agent-bom/pull/4579
* fix: stop reporting bounded, sampled, and uncomparable results as certain by @msaad00 in https://github.com/msaad00/agent-bom/pull/4580
* test(ui): stop a debug screenshot failing the large-graph E2E by @msaad00 in https://github.com/msaad00/agent-bom/pull/4581
* fix: report the degraded evidence the product already detected by @msaad00 in https://github.com/msaad00/agent-bom/pull/4582
* fix(compliance): derive the posture score from the status, once by @msaad00 in https://github.com/msaad00/agent-bom/pull/4583
* docs: correct the PCI coverage claim and record what shipped by @msaad00 in https://github.com/msaad00/agent-bom/pull/4586
* fix(hub): stop compliance ingest breaking on a date certain by @msaad00 in https://github.com/msaad00/agent-bom/pull/4587
* test(scale): guard the read path's shape, not the runner's mood by @msaad00 in https://github.com/msaad00/agent-bom/pull/4588
* test(scale): assert the paging contract instead of timing it by @msaad00 in https://github.com/msaad00/agent-bom/pull/4591
* perf(findings): let the severity filter reach the store in the facet pass by @msaad00 in https://github.com/msaad00/agent-bom/pull/4592
* fix(scan): scan the whole archive, promote every model flag, run the IaC rules by @msaad00 in https://github.com/msaad00/agent-bom/pull/4593
* fix(scan): order Packagist, NuGet and RubyGems by their own version rules by @msaad00 in https://github.com/msaad00/agent-bom/pull/4594
* fix(graph): stop a bounded traversal reporting its own budget as the total by @msaad00 in https://github.com/msaad00/agent-bom/pull/4595
* fix(output): carry the KEV deadline everywhere and stop unresolvable bounds passing as confident by @msaad00 in https://github.com/msaad00/agent-bom/pull/4596
* chore(metrics): stop the snapshot re-stamping itself on every run by @msaad00 in https://github.com/msaad00/agent-bom/pull/4597
* fix: close the pre-freeze P0 batch across fleet tenancy, skills detection, graph rollup and version ordering by @msaad00 in https://github.com/msaad00/agent-bom/pull/4599
* fix(graph): make attack-path search honest about its bounds and stop it scanning the estate per hop by @msaad00 in https://github.com/msaad00/agent-bom/pull/4600
* fix: gateway enforcement, write/read contract alignment, and a scale-to-zero demo by @msaad00 in https://github.com/msaad00/agent-bom/pull/4601
* fix(audit): read the tenant that was asked for, and run the Postgres suites CI never ran by @msaad00 in https://github.com/msaad00/agent-bom/pull/4603
* fix(ingest): report what the batch actually stored, not what it received by @msaad00 in https://github.com/msaad00/agent-bom/pull/4604
* chore(docs): stop advertising a hosted demo from the public repo by @msaad00 in https://github.com/msaad00/agent-bom/pull/4605
* fix(cli): check the inventory path before refreshing the vuln DB by @msaad00 in https://github.com/msaad00/agent-bom/pull/4606
* test(gateway): assert the loop stayed free, not how fast the runner was by @msaad00 in https://github.com/msaad00/agent-bom/pull/4608
* fix(azure): call SDK methods that exist, and let CI see when they don't by @msaad00 in https://github.com/msaad00/agent-bom/pull/4609
* fix(release): close 0.98.3 correctness gaps by @msaad00 in https://github.com/msaad00/agent-bom/pull/4610


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0.98.2...v0.98.3
