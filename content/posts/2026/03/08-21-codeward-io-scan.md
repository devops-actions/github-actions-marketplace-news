---
title: Codeward-io Scan
date: 2026-03-08 21:22:52 +00:00
tags:
  - codeward-io
  - GitHub Actions
draft: false
repo: https://github.com/codeward-io/scan
marketplace: https://github.com/marketplace/actions/codeward-io-scan
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/codeward-io/scan** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codeward-io-scan) to find the latest changes.

## Action Summary

The Codeward Scan GitHub Action automates the scanning of repositories for policy, license, vulnerability, and validation issues, focusing specifically on changes introduced in pull requests. It provides a diff-aware scanning mechanism to assess only newly modified code, ensuring efficient and targeted evaluation. The action generates transparent, deterministic reports in Markdown, HTML, or JSON formats and integrates directly into GitHub workflows to enhance code quality and security before merging.

## Release notes

# Codeward v0.3.0 Release Notes

## What's New

### YAML Configuration Support
Codeward now discovers `.codeward.yaml` / `.codeward.yml` automatically alongside `.codeward.json`. YAML is now the recommended format for readability.

### CVSS Scoring
Vulnerability findings now include `CVSSScore` (numeric) and `CVSSVector` fields. Filter by score ranges using `gte`/`lte` operators to build severity-based policies beyond simple label matching.

### Multi-Source License Resolution
Licenses are resolved from multiple sources (SPDX databases, package metadata, registry lookups) with intelligent priority. A new `LicenseSource` field shows where each license was detected. Results are cached to a persistent disk cache for performance.

### New File Types for Validation
- **TOML** — Parse and validate `.toml` files (e.g., `pyproject.toml`, `Cargo.toml`)
- **env** — Parse `.env` files as key-value pairs
- **properties** — Parse Java `.properties` files
- **auto-detect** — Automatically infer file type from extension

### Line-Level Text Scanning
File validation policies can now scan individual lines (`scan: lines`) instead of whole files. Each line is evaluated independently, enabling secret detection, pattern matching per line, and fine-grained results with `LineNumber` and `MatchedContent` fields.

### Per-Line Implies
Combine `operator: implies` with `scan: lines` to enforce "if line matches X, it must also match Y" logic — useful for Dockerfile best practices (e.g., every `FROM` must pin a digest).

### Last Match / Not Last Match Rules
New `last_match` and `not_last_match` rule types with `line_filter` evaluate only the last line matching a filter — ideal for checking final build stages in multi-stage Dockerfiles.

### Cross-File Value References
Reference values from other files using `ref_path`, `ref_key`, and `ref_type` in rules. Validate that version strings, config values, or names stay consistent across files.

### Conditional File Validation
Use `operator: implies` with `exists` as the trigger condition to enforce "if file A exists, then file B must also exist" patterns.

### SARIF Output
Support for SARIF 2.1.0 (Static Analysis Results Interchange Format), enabling native integration with GitHub Security tab, VS Code Problems panel, and Azure DevOps. Use `format: "sarif"` on any file output, or `CODEWARD_SARIF_OUTPUT` to write all findings. Upload directly to GitHub Code Scanning with `CODEWARD_SARIF_UPLOAD=true` or `destination: "github:code-scanning"`.

### SBOM Export (CycloneDX 1.6)
Export your dependency inventory as a CycloneDX 1.6 JSON Software Bill of Materials. Configure via the `sbom` top-level key in `.codeward.yaml` or use `CODEWARD_SBOM_OUTPUT` as a shortcut. Includes de-duplication, PURL-based references, license attachment, dependency graph, and optional dev dependency filtering. No external dependencies.

### Custom Webhooks
Send scan results to any HTTP endpoint. Configure `method`, `headers`, `body` with Go template variables. Supports `CODEWARD_WEBHOOK_SECRETS` for injecting sensitive values. Built-in integration patterns for Slack, JIRA, PagerDuty, and more.

### Combined Template Type
New `combined` output template merges all policy types into a single report — useful for unified dashboards.

### Standalone Binaries
Pre-built static binaries are now available for Linux, macOS, and Windows (amd64 and arm64). Download from [GitHub Releases](https://github.com/codeward-io/scan/releases) — no Docker required. Ideal for local development, non-Docker CI systems (GitLab CI, Azure Pipelines), and air-gapped environments.

### Comma-Separated Glob Patterns
Path patterns now support comma-separated values (e.g., `src/**/*.go,pkg/**/*.go`) for more concise configuration.

### New Environment Variables
- `CODEWARD_CACHE_DIR` — Override the default cache directory
- `CODEWARD_TEMPLATES_PATH` — Custom Go template directory
- `CODEWARD_WEBHOOK_SECRETS` — Inject secrets into webhook templates
- `CODEWARD_EXTRA_ENV` — Pass additional environment variables to the scanner
- `CODEWARD_SARIF_OUTPUT` — Write all findings as SARIF 2.1.0 to a file
- `CODEWARD_SARIF_UPLOAD` — Upload SARIF to GitHub Code Scanning (`true`/`false`)
- `CODEWARD_SBOM_OUTPUT` — Export CycloneDX 1.6 SBOM to a file

## Breaking Changes

None. v0.3.0 is fully backward-compatible with v0.2.0 configurations.

## Upgrade

Update your GitHub Actions workflow:

```yaml
- uses: codeward-io/scan@v0.3.0
```

Or pull the new Docker image:

```bash
docker pull ghcr.io/codeward-io/scan:v0.3.0
```

Or download a standalone binary:

```bash
curl -L -o codeward-scan \
  https://github.com/codeward-io/scan/releases/download/v0.3.0/codeward-scan-linux-amd64
chmod +x codeward-scan
```
