---
title: agent-bom Scan
date: 2026-04-04 13:40:00 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.75.14
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.75.14**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

`agent-bom` is an open-source security scanning tool designed to analyze and map vulnerabilities across agentic infrastructures, including AI agents, MCP servers, packages, containers, cloud environments, and runtime contexts. It automates the process of identifying risks and their potential impact by tracing relationships between components, such as packages, credentials, and tools, to assess the "blast radius" of vulnerabilities. Key capabilities include CVE detection, infrastructure scanning, dependency analysis, and impact classification, making it a comprehensive tool for improving security visibility and mitigating risks in complex systems.

## What's Changed

## What's Changed
* fix(mcp): shorten registry description for schema validation by @msaad00 in https://github.com/msaad00/agent-bom/pull/1181
* docs(mcp): expand first-class client integration guides by @msaad00 in https://github.com/msaad00/agent-bom/pull/1182
* chore: tighten audit-driven docs and config hygiene by @msaad00 in https://github.com/msaad00/agent-bom/pull/1183
* feat(skills): deepen review verdicts and behavior analysis by @msaad00 in https://github.com/msaad00/agent-bom/pull/1184
* fix: resolve remaining v0.75.13 audit findings by @msaad00 in https://github.com/msaad00/agent-bom/pull/1185
* docs: clarify local UI traffic vs third-party network calls by @msaad00 in https://github.com/msaad00/agent-bom/pull/1188
* feat(action): add skills scan mode and verdict gating by @msaad00 in https://github.com/msaad00/agent-bom/pull/1187
* fix(action): keep skills mode off vuln-scan flags by @msaad00 in https://github.com/msaad00/agent-bom/pull/1190
* docs: clean low-visibility hygiene stragglers by @msaad00 in https://github.com/msaad00/agent-bom/pull/1191
* perf: improve scan latency and cache hit rate across enrichment by @msaad00 in https://github.com/msaad00/agent-bom/pull/1192
* remediation: avoid prerelease fix suggestions by default by @msaad00 in https://github.com/msaad00/agent-bom/pull/1193
* tests: eliminate leaked runtime coroutine warnings by @msaad00 in https://github.com/msaad00/agent-bom/pull/1194
* scorecard: improve transient failure handling and coverage reporting by @msaad00 in https://github.com/msaad00/agent-bom/pull/1195
* fix(ui): align scan result contract with backend payload by @msaad00 in https://github.com/msaad00/agent-bom/pull/1196
* fix(scorecard): bound long-lived service caches by @msaad00 in https://github.com/msaad00/agent-bom/pull/1197
* fix(mcp): harden tool path handling and error output by @msaad00 in https://github.com/msaad00/agent-bom/pull/1198
* fix(api): fail closed on unauthenticated non-loopback binds by @msaad00 in https://github.com/msaad00/agent-bom/pull/1199
* fix(action): harden argv handling and CI summaries by @msaad00 in https://github.com/msaad00/agent-bom/pull/1200
* feat(mcp): add tool governance and metrics by @msaad00 in https://github.com/msaad00/agent-bom/pull/1201
* feat(docker): add enterprise proxy and CA support by @msaad00 in https://github.com/msaad00/agent-bom/pull/1202
* fix(action): harden execution contract and summaries by @msaad00 in https://github.com/msaad00/agent-bom/pull/1203
* feat(mcp): require auth on remote transports by @msaad00 in https://github.com/msaad00/agent-bom/pull/1204
* feat(docker): add snowpark proxy and ca support by @msaad00 in https://github.com/msaad00/agent-bom/pull/1205
* fix(deploy): require railway bearer token for mcp startup by @msaad00 in https://github.com/msaad00/agent-bom/pull/1207
* chore(deps): bump litellm from 1.82.6 to 1.83.0 by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/1206
* fix(docker): build runtime image from source by @msaad00 in https://github.com/msaad00/agent-bom/pull/1208
* fix(action): validate thresholds and sanitize comments by @msaad00 in https://github.com/msaad00/agent-bom/pull/1209
* fix(mcp): govern sync tool execution by @msaad00 in https://github.com/msaad00/agent-bom/pull/1210
* feat(mcp): add caller rate limits and request traces by @msaad00 in https://github.com/msaad00/agent-bom/pull/1211
* chore(release): prepare v0.75.14 by @msaad00 in https://github.com/msaad00/agent-bom/pull/1212


**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.75.14
