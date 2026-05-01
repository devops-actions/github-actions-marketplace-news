---
title: mcp-audit
date: 2026-05-01 06:17:30 +00:00
tags:
  - adudley78
  - GitHub Actions
draft: false
repo: https://github.com/adudley78/mcp-audit
marketplace: https://github.com/marketplace/actions/mcp-audit
version: v0.5.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/adudley78/mcp-audit** to version **v0.5.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-audit) to find the latest changes.

## Action Summary

`mcp-audit` is a privacy-first security scanner designed to analyze local MCP (Model Context Protocol) server configurations and running instances to identify security vulnerabilities. It automates the detection of risks such as tool poisoning, credential exposure, transport security issues, supply chain attacks, and cross-server toxic flows while providing governance tools, interactive dashboards, and detailed reports. This action helps developers secure AI integrations by flagging dangerous configurations and attack paths, ensuring safer development environments.

## What's Changed

<!--
Template used by .github/workflows/release.yml to compose the body of every
v*.*.* GitHub Release.  The double-curly VERSION token below is replaced at
release time with the pushed git tag (set from $GITHUB_REF_NAME, e.g. v0.3.4)
via the "Compose release notes from template" step.

Keep this file in sync with README.md copy — CI does not verify it.
If the feature list or test count changes in README.md, update here too.
-->
## mcp-audit v0.5.1

Security scanner for MCP (Model Context Protocol) server configurations.
Detects prompt injection, supply chain risks, credential exposure, toxic flow
combinations, transport vulnerabilities, and more — across Claude Desktop,
Cursor, VS Code, Zed, and any MCP-compatible host.

---

### What's new in v0.5.1

See [`CHANGELOG.md`](CHANGELOG.md) for the full change list for this release.

---

### Install

```bash
pip install --upgrade mcp-audit-scanner   # PyPI — CLI command: mcp-audit
```

Or grab a pre-built binary from **Assets** below (no Python required):

| Platform | Binary |
|---|---|
| macOS (Apple Silicon) | `mcp-audit-darwin-arm64` |
| macOS (Intel) | `mcp-audit-darwin-x86_64` |
| Linux x86-64 | `mcp-audit-linux-x86_64` |
| Windows x86-64 | `mcp-audit-windows-x86_64.exe` |

### Use as a GitHub Action

```yaml
- uses: adudley78/mcp-audit@v0.5.1
  with:
    severity-threshold: high
```

Full input/output reference in [`docs/github-action.md`](docs/github-action.md).

Pin to a specific release tag (as shown) until a `v1.0.0` ships;
after v1, `@v1` will track the latest 1.x release automatically.

---

### Detection coverage

- **Prompt injection / tool poisoning** — 11 patterns, Unicode homoglyph-aware, depth-50 recursion
- **Credential exposure** — 9 patterns (AWS, GitHub, Stripe, Slack, and more)
- **Supply chain risk** — npm/PyPI provenance, Sigstore signature verification (`--verify-signatures`), SBOM + OSV.dev CVE scan (`--check-vulns`)
- **Toxic flow detection** — dangerous server *combinations* (e.g. database + web fetch)
- **SAST** — 37 rules across Python (28) and TypeScript (9)
- **Transport security** — insecure bindings, wildcard hosts, unverified TLS

### Integrations

- SARIF → GitHub Code Scanning (schema-validated, deduplication-safe)
- Nucleus Security FlexConnect (`mcp-audit push-nucleus`)
- Baseline diffing for CI regression gates (`mcp-audit baseline`)
- HTML dashboard — self-contained, no CDN dependencies

### Validated against

- 6 real-world exploit fixtures (Invariant Labs SSH exfiltration, CrowdStrike `add_numbers`, XML injection, cloud credential theft, behavioral override)
- 22-server false-positive benchmark — 0% poisoning FP rate on legitimate servers
- CVSS + OWASP Agentic Top 10 severity mappings on every finding ID

**1,414 tests · Apache 2.0 · macOS · Linux · Windows**

---

### Full changelog

See [`CHANGELOG.md`](CHANGELOG.md).

