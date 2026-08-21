---
title: SkillTotal AI Component Security Scan
date: 2026-08-21 22:00:50 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.42.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SkillTotal is an open-source CLI tool that analyzes AI-related components, including agent skills/plugins, MCP servers, npm packages, Python packages, repositories, and AI-generated projects. It statically scans these components to identify security risks, dangerous capabilities, prompt-injection surfaces, and data-exfiltration paths before installation or trust. SkillTotal avoids running components on the user's machine and provides deterministic, evidence-anchored reports that are free of false positives.
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.42.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## Action Summary

SkillTotal is an open-source CLI tool that analyzes AI-related components, including agent skills/plugins, MCP servers, npm packages, Python packages, repositories, and AI-generated projects. It statically scans these components to identify security risks, dangerous capabilities, prompt-injection surfaces, and data-exfiltration paths before installation or trust. SkillTotal avoids running components on the user's machine and provides deterministic, evidence-anchored reports that are free of false positives.

## What's Changed


### Added
- **Credential-only files are detected (ruleset 46).** A file that *is* a credential rather than
  one that contains one had no pattern to match: no assignment, no vendor prefix. The MCP
  publisher's login artifacts (`.mcpregistry_github_token`, `.mcpregistry_registry_token`) are now
  read as the credentials they are. The registry token grants republish rights over the server, so
  shipping one in a package is a standing supply-chain takeover of that component.

### Fixed
- **A long secret could survive redaction in the report.** Evidence snippets are capped at
  240 characters *before* redaction ran, so `snippet.replace(value, marker)` silently did nothing
  whenever the secret was longer than the cap — leaving most of a live credential (a JWT, a PEM
  body, a token on a minified line) in the output. Redaction now removes the longest prefix of the
  secret that is actually present. A security report must never re-publish what it found.


