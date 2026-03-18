---
title: agent-bom Scan
date: 2026-03-18 13:33:21 +00:00
tags:
  - msaad00
  - GitHub Actions
draft: false
repo: https://github.com/msaad00/agent-bom
marketplace: https://github.com/marketplace/actions/agent-bom-scan
version: v0.71.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaad00/agent-bom** to version **v0.71.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-bom-scan) to find the latest changes.

## Action Summary

**Agent-BOM** is a security scanner designed for AI infrastructure and supply chain environments. It automates the discovery, scanning, and analysis of dependencies, AI agents, and configurations to identify vulnerabilities (e.g., CVEs), misconfigurations, and their potential blast radius. The tool provides key capabilities such as AI Bill of Materials (BOM) generation, runtime traffic enforcement, compliance checks (across 14 frameworks), and integration with containers, cloud infrastructure, and CI/CD pipelines to mitigate risks in real time.

## Release notes

## What's Changed
* chore(deps): bump next from 16.1.6 to 16.1.7 in /ui by @dependabot[bot] in https://github.com/msaad00/agent-bom/pull/916
* fix: release hardening — Docker Hub sync, demo clean, HELM-003 Jinja, transitive log, docs flag by @msaad00 in https://github.com/msaad00/agent-bom/pull/919
* fix: release hardening — Docker Hub auto-sync, demo clean paths, HELM-003 Jinja, transitive log, prod docs flag by @msaad00 in https://github.com/msaad00/agent-bom/pull/918
* ci: mark Python 3.14 as experimental (pre-release, non-blocking) by @msaad00 in https://github.com/msaad00/agent-bom/pull/920
* fix: update compliance framework count in SVG diagrams 11 → 14 by @msaad00 in https://github.com/msaad00/agent-bom/pull/921
* fix: bump base images python 3.12.13-slim + enforce Trivy image gate by @msaad00 in https://github.com/msaad00/agent-bom/pull/922
* fix: resolve GitHub code scanning — privileged checkout + token-permissions by @msaad00 in https://github.com/msaad00/agent-bom/pull/923
* fix: close scanner coverage gap — osv-scanner uv.lock + real self-scan SBOM by @msaad00 in https://github.com/msaad00/agent-bom/pull/924
* fix: patch OS CVEs in Docker images + add supply chain attestations by @msaad00 in https://github.com/msaad00/agent-bom/pull/925
* Improve security, error handling, and deployment configuration by @andres-linero in https://github.com/msaad00/agent-bom/pull/928
* fix: mask Docker Hub token + pin Alpine digest + Glama healthcheck by @msaad00 in https://github.com/msaad00/agent-bom/pull/929
* fix: bound BFS queue in context graph to prevent OOM (#877) by @msaad00 in https://github.com/msaad00/agent-bom/pull/930
* fix: close scanner self-scan gap — OS package scan in Docker CI by @msaad00 in https://github.com/msaad00/agent-bom/pull/931
* fix: replace urllib callers with retry-capable httpx client (#878) by @msaad00 in https://github.com/msaad00/agent-bom/pull/932
* fix: pre-release audit — empty version guard, CMMC API, action.yml by @msaad00 in https://github.com/msaad00/agent-bom/pull/933
* release: v0.71.3 — scanner accuracy, HTTP reliability, Docker hardening by @msaad00 in https://github.com/msaad00/agent-bom/pull/942

## New Contributors
* @andres-linero made their first contribution in https://github.com/msaad00/agent-bom/pull/928

**Full Changelog**: https://github.com/msaad00/agent-bom/compare/v0...v0.71.3
