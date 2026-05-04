---
title: mcp-audit
date: 2026-05-04 06:28:23 +00:00
tags:
  - adudley78
  - GitHub Actions
draft: false
repo: https://github.com/adudley78/mcp-audit
marketplace: https://github.com/marketplace/actions/mcp-audit
version: v0.8.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/adudley78/mcp-audit** to version **v0.8.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-audit) to find the latest changes.

## Action Summary

`mcp-audit` is a privacy-first security scanner that detects vulnerabilities in MCP (Model Context Protocol) server configurations, commonly used by AI coding clients. It automates the discovery of misconfigurations, credential exposure, tool poisoning, and cross-server attack paths, while also performing live server analysis and static code analysis (SAST). The tool provides comprehensive security auditing features, including an interactive attack graph dashboard, OWASP MCP Top 10 mapping, and continuous monitoring, to safeguard development environments against malicious activity and configuration errors.

## What's Changed

mcp-audit v0.8.1 — Bug fix patch
Three fixes, all found during a manual test matrix audit.
shadow, pin, and sbom — accurate empty-state messages.
If you have an MCP config file on disk but no servers defined in it, these three commands previously printed a misleading "No MCP servers found" — identical to the message shown when no config files exist at all. They now distinguish the two cases correctly.
snapshot --path — fixed crash on stale keyword argument.
mcp-audit snapshot --path <dir> was raising TypeError: run_scan() got an unexpected keyword argument 'skip_auto_discovery'. Stale argument removed.
Pre-commit hook was undercounting tests.
scripts/sync_counts.sh was running uv run --extra dev pytest while CI installs [dev,sbom,attestation,mcp]. The 34-test gap is the attestation suite. Hook now uses --extra attestation and agrees with CI at 1,716. Doc counts corrected in CLAUDE.md, README.md, and .github/release-notes-template.md.
Manual test matrix expanded to 27 sections.
Added coverage for shadow, killchain, diff <base> <head>, snapshot, sast, and extensions. All 27 sections pass.

Full changelog: CHANGELOG.md
