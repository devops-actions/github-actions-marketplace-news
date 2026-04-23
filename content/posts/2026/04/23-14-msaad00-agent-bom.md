---
title: agent-bom Scan
date: 2026-04-23 14:06:32 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.81.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.81.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

The GitHub Action `agent-bom` is an open security scanner designed to analyze vulnerabilities across the AI supply chain, including agents, MCP servers, packages, containers, cloud infrastructure, GPUs, and runtime environments. It automates the identification of CVEs (Common Vulnerabilities and Exposures) and maps their blast radius, tracing the impact from vulnerable components to exposed credentials, tools, and systems. By providing targeted remediation recommendations, it simplifies vulnerability management and helps mitigate risks in complex AI ecosystems.

## What's Changed

## What's Changed
* [platform] align published runtime image surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/1612
* [ci] normalize Dependabot UI lockfile updates by @msaad00 in https://github.com/msaad00/agent-bom/pull/1613
* chore(deps-dev): bump @tailwindcss/postcss from 4.2.2 to 4.2.3 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1610
* chore(deps-dev): bump typescript-eslint from 8.58.0 to 8.59.0 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1611
* chore(deps-dev): bump tailwindcss from 4.2.2 to 4.2.3 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1609
* docs: align deployment modes and image model by @msaad00 in https://github.com/msaad00/agent-bom/pull/1614
* fix: harden tenant-scoped metrics and proxy audit by @msaad00 in https://github.com/msaad00/agent-bom/pull/1615
* fix: harden proxy startup and gateway HA defaults by @msaad00 in https://github.com/msaad00/agent-bom/pull/1616
* chore: validate shipped helm deployment profiles by @msaad00 in https://github.com/msaad00/agent-bom/pull/1617
* chore(deps): bump lxml from 6.0.4 to 6.1.0 by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1618
* feat(ui): add deployment-context-aware navigation by @msaad00 in https://github.com/msaad00/agent-bom/pull/1619
* feat(auth): add key rotation overlap and admin UX by @msaad00 in https://github.com/msaad00/agent-bom/pull/1620
* feat(deploy): add one-command Helm profile installer by @msaad00 in https://github.com/msaad00/agent-bom/pull/1629
* feat(endpoint): add managed proxy onboarding bundle by @msaad00 in https://github.com/msaad00/agent-bom/pull/1630
* feat(gateway): add tenant-scoped runtime rate limiting by @msaad00 in https://github.com/msaad00/agent-bom/pull/1631
* fix(auth): fail closed on missing OIDC tenant claims by default by @msaad00 in https://github.com/msaad00/agent-bom/pull/1632
* feat(packaging): add one-command pilot compose path by @msaad00 in https://github.com/msaad00/agent-bom/pull/1633
* feat(terraform): add AWS baseline module and destroy guidance by @msaad00 in https://github.com/msaad00/agent-bom/pull/1634
* feat(deploy): add AWS EKS reference rollout installer by @msaad00 in https://github.com/msaad00/agent-bom/pull/1641
* feat(deploy): add teardown helper for AWS EKS installs by @msaad00 in https://github.com/msaad00/agent-bom/pull/1652
* feat(gateway): stitch W3C trace context across relay by @msaad00 in https://github.com/msaad00/agent-bom/pull/1654
* feat(api): add inbound OCSF ingest route by @msaad00 in https://github.com/msaad00/agent-bom/pull/1655
* docs(deploy): publish enterprise auth and operator guides by @msaad00 in https://github.com/msaad00/agent-bom/pull/1656
* docs(runtime): publish operator guides and remediation contract by @msaad00 in https://github.com/msaad00/agent-bom/pull/1658
* docs(model): publish control-plane data model and store parity by @msaad00 in https://github.com/msaad00/agent-bom/pull/1659
* docs(deploy): refresh self-hosted diagrams and runtime flow by @msaad00 in https://github.com/msaad00/agent-bom/pull/1661
* feat(proxy): preserve upstream W3C trace context across stdio JSON-RPC boundary by @msaad00 in https://github.com/msaad00/agent-bom/pull/1662
* feat(deploy): add Helm teardown cleanup hooks by @msaad00 in https://github.com/msaad00/agent-bom/pull/1663
* feat(endpoint): add packaged installer assets and MDM rollout by @msaad00 in https://github.com/msaad00/agent-bom/pull/1664
* feat(k8s): add proxy sidecar mutating webhook by @msaad00 in https://github.com/msaad00/agent-bom/pull/1665
* fix(api): close middleware RBAC route coverage gaps by @msaad00 in https://github.com/msaad00/agent-bom/pull/1671
* feat(deploy): add EKS preflight and post-deploy verify by @msaad00 in https://github.com/msaad00/agent-bom/pull/1672
* feat(proxy): sign cached gateway policy bundles by @msaad00 in https://github.com/msaad00/agent-bom/pull/1673
* feat(gateway): hot-reload file-backed policy by @msaad00 in https://github.com/msaad00/agent-bom/pull/1675
* feat(proxy): extend replay window with bounded memory by @msaad00 in https://github.com/msaad00/agent-bom/pull/1676
* feat(graph): wire skill audit findings into graph by @msaad00 in https://github.com/msaad00/agent-bom/pull/1678
* test(runtime): add gateway and OCSF contract coverage by @msaad00 in https://github.com/msaad00/agent-bom/pull/1680
* chore(deps-dev): bump vitest from 4.1.4 to 4.1.5 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1683
* docs(runtime): add operations runbook by @msaad00 in https://github.com/msaad00/agent-bom/pull/1682
* feat(ui): add feedback and bug-report entrypoints by @msaad00 in https://github.com/msaad00/agent-bom/pull/1685
* feat(ui): make MCP inventory obvious before proxy rollout by @msaad00 in https://github.com/msaad00/agent-bom/pull/1688
* docs(deploy): simplify self-hosted deployment story by @msaad00 in https://github.com/msaad00/agent-bom/pull/1689
* docs(architecture): define unified platform control plane by @msaad00 in https://github.com/msaad00/agent-bom/pull/1690
* feat(platform): surface MCP provenance across discovery and fleet by @msaad00 in https://github.com/msaad00/agent-bom/pull/1698
* docs(deploy): align EKS rollout to unified platform surfaces by @msaad00 in https://github.com/msaad00/agent-bom/pull/1699
* docs(deploy): define retention and security-lake strategy by @msaad00 in https://github.com/msaad00/agent-bom/pull/1700
* feat(platform): persist MCP observation provenance by @msaad00 in https://github.com/msaad00/agent-bom/pull/1701
* docs(deploy): clarify entrypoints and self-hosted runtime model by @msaad00 in https://github.com/msaad00/agent-bom/pull/1702
* feat(graph): clarify snapshot and blast-radius semantics by @msaad00 in https://github.com/msaad00/agent-bom/pull/1703
* docs(mcp): add proxy vs gateway vs fleet guide by @msaad00 in https://github.com/msaad00/agent-bom/pull/1704
* docs(release): tighten scale and runtime caveats by @msaad00 in https://github.com/msaad00/agent-bom/pull/1705
* chore(release): bump version to 0.81.1 by @msaad00 in https://github.com/msaad00/agent-bom/pull/1706
* [codex] feat(multitenancy): enforce tenant-scoped gateway routing by @msaad00 in https://github.com/msaad00/agent-bom/pull/1707
* [codex] docs(multitenancy): tighten self-hosted tenancy boundary by @msaad00 in https://github.com/msaad00/agent-bom/pull/1708
* [codex] fix(release): close audit followups by @msaad00 in https://github.com/msaad00/agent-bom/pull/1709
* docs(auth): define UI and API session model by @msaad00 in https://github.com/msaad00/agent-bom/pull/1710
* docs(deploy): clarify official deployment paths by @msaad00 in https://github.com/msaad00/agent-bom/pull/1711
* docs(deploy): split enterprise self-hosted diagrams by @msaad00 in https://github.com/msaad00/agent-bom/pull/1712
* docs(trust): define customer data and support boundary by @msaad00 in https://github.com/msaad00/agent-bom/pull/1713


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.81.1
