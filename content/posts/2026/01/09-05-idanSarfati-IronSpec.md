---
title: IronSpec Governance Guard
date: 2026-01-09 05:47:33 +00:00
tags:
  - idanSarfati
  - GitHub Actions
draft: false
repo: https://github.com/idanSarfati/IronSpec
marketplace: https://github.com/marketplace/actions/ironspec-governance-guard
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/idanSarfati/IronSpec** to version **v1.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ironspec-governance-guard) to find the latest changes.

## Action Summary

This GitHub Action automates the validation of pull request changes against business requirements stored in Notion, linked via Linear issues. It extracts the Linear issue ID from the PR title, retrieves the corresponding Notion specifications, and uses an LLM (Google Gemini) to compare the code changes against the requirements, ensuring compliance and blocking non-conforming changes. This action streamlines quality control in CI/CD workflows by enforcing alignment between development tasks and predefined specifications.

## Release notes

### 🛡️ IronSpec: The "Glass Box" Governance Guard

**Version v1.0.0 (Initial Enterprise Release)**

IronSpec (formerly Founder OS) is an AI-powered governance guard for high-velocity engineering teams. It enforces your Notion specs and Linear tickets directly inside the Pull Request lifecycle.

#### 🔐 Security & Compliance (SOC2 Ready)
This release implements the **Glass Box Protocol**, designed for high-security environments that require full source code auditing and supply chain verification.

* **Cryptographic Dependency Pinning:** All Python dependencies are pinned with exact `SHA256` hashes in `requirements.txt`. This prevents supply chain attacks and ensures that the code running in your CI is mathematically identical to the code we tested.
* **Zero-Obfuscation (Composite Action):** No opaque Docker containers. This action runs as a transparent Composite Action, installing Python and dependencies directly in your runner visibility.
* **Audit-Ready:** Includes a built-in `audit_check.sh` script. Security teams can run this static analysis tool to verify that the action only communicates with approved APIs (Linear, Notion, Gemini) before approving it for use.

#### 🚀 Features
* **Spec-to-Code Validation:** Automatically checks if PR code matches the architectural constraints defined in Notion.
* **Linear Integration:** Verifies that every PR is linked to a valid Linear issue.
* **Architectural Enforcement:** Blocks forbidden libraries (e.g., jQuery in a React project) based on your governance rules.

#### 📦 Installation

**Standard Usage (Marketplace):**
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: founder-os/iron-spec-mcp@v1.0.0
    with:
      gemini_api_key: ${{ secrets.GEMINI_API_KEY }}
      linear_api_key: ${{ secrets.LINEAR_API_KEY }}
      notion_api_key: ${{ secrets.NOTION_API_KEY }}

#### Enterprise Usage (Fork-to-Own): For strict SOC2 compliance, you may fork this repository and point your workflow to your internal fork. Run ./audit_check.sh to verify the integrity of the fork.
