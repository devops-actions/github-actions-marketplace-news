---
title: proof-agent-verify
date: 2026-04-05 06:27:39 +00:00
tags:
  - AndreaGriffiths11
  - GitHub Actions
draft: false
repo: https://github.com/AndreaGriffiths11/proof-agent
marketplace: https://github.com/marketplace/actions/proof-agent-verify
version: v1.0.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/AndreaGriffiths11/proof-agent** to version **v1.0.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/proof-agent-verify) to find the latest changes.

## Action Summary

Proof Agent is a GitHub Action designed to automate the verification of AI-generated or human-authored code in pull requests by separating the roles of code generation (worker) and independent verification (verifier). It ensures code correctness, identifies bugs, checks security vulnerabilities, verifies factual claims, and validates build integrity through evidence-based verification processes. By automating these checks, it reduces errors, enforces rigorous quality control, and prevents self-verification pitfalls, enabling teams to maintain higher code quality and security.

## What's Changed

## What's New

✅ **GitHub Models API integration** - Uses `openai/gpt-4o-mini` via GitHub Models  
✅ **Zero-setup authentication** - No PAT tokens needed, uses built-in `GITHUB_TOKEN`  
✅ **Adversarial code review** - Catches real security vulnerabilities  
✅ **Blocks dangerous PRs** - Returns FAIL status when critical issues found  

## Security Detection

This release successfully catches:
- SQL injection vulnerabilities
- Hardcoded passwords and API keys  
- Authentication bypasses
- Path traversal issues
- Insecure cryptography

## Breaking Changes

**Update your workflow:**
```diff
  permissions:
    contents: read
    pull-requests: write
+   models: read  # Required for GitHub Models API

  - uses: AndreaGriffiths11/proof-agent@main
    with:
-     github-token: ${{ secrets.COPILOT_TOKEN }}
+     github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Tested On

- Real SQL injection code (caught ✅)
- Hardcoded secrets (caught ✅)
- Clean code (PASS verdict ✅)

Full test results: https://github.com/AndreaGriffiths11/harness/pull/2

