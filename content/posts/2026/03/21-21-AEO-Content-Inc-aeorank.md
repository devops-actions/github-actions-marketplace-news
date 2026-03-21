---
title: AEORank Audit
date: 2026-03-21 21:22:17 +00:00
tags:
  - AEO-Content-Inc
  - GitHub Actions
draft: false
repo: https://github.com/AEO-Content-Inc/aeorank
marketplace: https://github.com/marketplace/actions/aeorank-audit
version: v3.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/AEO-Content-Inc/aeorank** to version **v3.2.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeorank-audit) to find the latest changes.

## Action Summary

AEORank is a GitHub Action and CLI tool designed to evaluate a website’s visibility and readiness for AI engines by scoring it against 40 criteria across five key pillars: answer readiness, content structure, trust & authority, user experience, and technical performance. It automates the process of auditing websites to identify optimization opportunities, providing actionable insights such as prioritized fixes, comprehensive scorecards, and AI-specific improvement recommendations. This tool eliminates the need for API keys and delivers results quickly, making it an efficient solution for improving content discoverability and citation potential by AI platforms like ChatGPT and Google AI.

## Release notes

## Security\n- added DNS-aware fetch hardening to reject public-looking hostnames that resolve to private, loopback, link-local, or other reserved addresses\n- applied the hardened guard to top-level audit entry points, sitemap sub-fetches, and headless request interception\n- tightened non-Node redirect handling to avoid blindly following redirects in browser-like runtimes\n\n## Delivery\n- pinned GitHub Actions by SHA and switched workflows to deterministic npm ci installs\n- updated the composite GitHub Action to run the bundled CLI from the tagged release instead of installing aeorank@latest at runtime\n- aligned the CI coverage gate with the current measured baseline so the required coverage check is mergeable again\n
