---
title: SkillTotal AI Component Security Scan
date: 2026-08-17 05:57:39 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.39.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SkillTotal is a static analysis tool that identifies potential security risks in AI-related components and projects. It scans files locally without running them on the machine, providing evidence-based findings such as file locations and code snippets. SkillTotal is designed to be 100% offline and safe for untrusted components, offering a determinate and standards-aligned approach to detecting supply-chain risks and capabilities before installation or trust.
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.39.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## Action Summary

SkillTotal is a static analysis tool that identifies potential security risks in AI-related components and projects. It scans files locally without running them on the machine, providing evidence-based findings such as file locations and code snippets. SkillTotal is designed to be 100% offline and safe for untrusted components, offering a determinate and standards-aligned approach to detecting supply-chain risks and capabilities before installation or trust.

## What's Changed


### Fixed
- **False negative: published packages were scanned without their code (ruleset 43).** `dist/` and
  `build/` are skipped for a repository, where they duplicate first-party source checked in beside
  them. A published npm tarball is the mirror image — `.npmignore`/`files` keep the sources out and
  ship only the build output — so those scans covered nothing but the manifest and the README and
  reported "no findings". Measured across the public MCP registry, 11 of 12 sampled npm packages
  that reported zero findings were in fact shipping shell execution, network egress or filesystem
  access. Build output is now scanned for package artifacts (`npm_package`, `python_package`) and
  still skipped for git/local sources.

### Added
- **Build output establishes capability, never risk.** A bundle inlines dependencies, tests and
  templates into one file, blinding the path-based demotion layers, so a `risky_construct` or
  `malicious_indicator` match found in build output is demoted to needs_review while capability
  findings are kept. Without this, real packages were rated `critical` from a security tool's own
  credential-path watch list and from a bundled SSRF test assertion.
- **Minified bundles are disclosed, not scanned.** A bundled script is one very long line, so a
  finding in it could not carry the checkable file/line evidence every confirmed finding must have,
  and its inlined dependencies are not the component's own code. Such files are now reported as a
  `coverage` **needs_review** entry ("Minified bundle not analyzed") listing the paths — visible
  rather than silently absent, and without affecting the score.


