---
title: SkillTotal AI Component Security Scan
date: 2026-08-26 22:48:27 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.43.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SkillTotal is an open-source CLI tool that statically analyzes AI-related components to identify supply-chain risks, dangerous capabilities, prompt-injection surfaces, and data-exfiltration paths before they are installed or trusted. It analyzes only the component itself, providing evidence-backed findings without relying on runtime analysis. SkillTotal runs locally without any account or cloud upload, ensuring safe analysis of untrusted components.
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.43.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## Action Summary

SkillTotal is an open-source CLI tool that statically analyzes AI-related components to identify supply-chain risks, dangerous capabilities, prompt-injection surfaces, and data-exfiltration paths before they are installed or trusted. It analyzes only the component itself, providing evidence-backed findings without relying on runtime analysis. SkillTotal runs locally without any account or cloud upload, ensuring safe analysis of untrusted components.

## What's Changed


### Added
- **A `.env` shipped inside a released package is detected (ruleset 47).** The scanner understood a
  *reference* to `.env` in code but not the file's presence in the artifact, so a published npm
  package carrying a real `.env` scored 0/100. It fires only for published packages — a `.env` in a
  working tree is correct usage — skips `.env.example` and friends, and reports the variable
  **names with the values withheld**, since a report that carried them would be the leak.


