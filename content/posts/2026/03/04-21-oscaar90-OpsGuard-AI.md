---
title: OpsGuard AI Security Gate
date: 2026-03-04 21:27:23 +00:00
tags:
  - oscaar90
  - GitHub Actions
draft: false
repo: https://github.com/oscaar90/OpsGuard-AI
marketplace: https://github.com/marketplace/actions/opsguard-ai-security-gate
version: v1.0.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/oscaar90/OpsGuard-AI** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opsguard-ai-security-gate) to find the latest changes.

## Action Summary

OpsGuard-AI is a GitHub Action designed to enhance security in DevOps pipelines by acting as a context-aware security gate during pull requests. It prevents potentially harmful code from being merged by analyzing `git diff` changes in real time using a dual-layer approach: deterministic high-entropy regex scans for secret detection, followed by AI-driven semantic analysis to identify complex logical vulnerabilities like SQL injections or backdoors. By automating security checks, generating audit logs, and sending alerts for detected issues, OpsGuard streamlines code review processes while addressing gaps left by traditional tools.

## Release notes

# What's new in v1.0.4                                                                                                                                                               
                                                            
  - Elastic License 2.0: free to use in your CI/CD pipeline, protected against commercial redistribution
  - Benchmark hardening: honest methodology, limitations documented, fixtures cleaned

  ## What is OpsGuard?

  A GitHub Action that blocks PRs containing secrets, SQL injections, logic backdoors and supply-chain attacks using a hybrid Regex + LLM two-gate engine.

  - Gate 1 (Regex): deterministic detection of known secret patterns
  - Gate 2 (LLM): semantic reasoning for what regex cannot see

  ~$0.24/month at 1,000 PRs. 5-minute integration.

  ## Usage

  ```yaml
  - name: OpsGuard Security Scan
    uses: oscaar90/OpsGuard-AI@v1
    with:
      openrouter-api-key: ${{ secrets.OPENROUTER_API_KEY }}

  Full documentation: https://github.com/oscaar90/OpsGuard-AI#readme
