---
title: skill-audit
date: 2026-05-03 13:53:32 +00:00
tags:
  - ondrej-merkun
  - GitHub Actions
draft: false
repo: https://github.com/ondrej-merkun/skill-audit
marketplace: https://github.com/marketplace/actions/skill-audit
version: v0.1.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ondrej-merkun/skill-audit** to version **v0.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-audit) to find the latest changes.

## Action Summary

The `skill-audit` GitHub Action scans AI agent skills, plugins, and configuration files to detect security vulnerabilities such as prompt injection and malicious code. It automates risk assessment by prioritizing and displaying the most critical findings in a color-coded table, with options for deeper analysis using a local LLM for semantic review. This tool helps developers secure AI agent environments by identifying and explaining potential threats in their code or configurations.

## What's Changed

## What's Changed
* Support for new agents added:
  - Windsurf
  - Cline

* New Deterministic Rules: 
  - MCP-CONFIG-REMOTE-EXEC (Dependencies)
  - FS-BROWSER-CREDENTIALSTORE (Filesystem)
  - FS-DESTRUCTIVE-HOME-DELETE (Filesystem)
  - NET-CLOUD-METADATA-CREDENTIALS (Network exfiltration)
  - OBFS-DECODE-EXEC (Obfuscation)

* Deterministic Rules Improvements: improve regex safety wrapper timeout, strengthen SKILL-MEMORY-WRITE
* CLI help outputs: add missing agents

**Full Changelog**: https://github.com/ondrej-merkun/skill-audit/compare/v0.1.1...v0.1.2
