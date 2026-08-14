---
title: WAF++ PASS Scan
date: 2026-08-14 22:13:44 +00:00
tags:
  - WAF2p
  - GitHub Actions
draft: false
repo: https://github.com/WAF2p/wafpass-action
marketplace: https://github.com/marketplace/actions/waf-pass-scan
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scanning of Infrastructure as Code (IaC) files using WAF++ PASS, a security tool that assesses IaC configurations for vulnerabilities and misconfigurations. It pushes scan results to a specified WAF++ server endpoint, supports both Bearer token and API key authentication, and can fail the workflow based on predefined policies. The action is configured with various inputs such as scan paths, IaC frameworks, and severity levels, making it flexible for different use cases in CI/CD pipelines.
---


Version updated for **https://github.com/WAF2p/wafpass-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/waf-pass-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning of Infrastructure as Code (IaC) files using WAF++ PASS, a security tool that assesses IaC configurations for vulnerabilities and misconfigurations. It pushes scan results to a specified WAF++ server endpoint, supports both Bearer token and API key authentication, and can fail the workflow based on predefined policies. The action is configured with various inputs such as scan paths, IaC frameworks, and severity levels, making it flexible for different use cases in CI/CD pipelines.

## What's Changed

## What's Changed
* feat: add fetch_controls input to pull controls from framework repo by @ZanshinShadow in https://github.com/WAF2p/wafpass-action/pull/2
* upgrade to the new API versioning - WAF2p/pass#42 by @lewandos in https://github.com/WAF2p/wafpass-action/pull/3

## New Contributors
* @lewandos made their first contribution in https://github.com/WAF2p/wafpass-action/pull/1
* @ZanshinShadow made their first contribution in https://github.com/WAF2p/wafpass-action/pull/2

**Full Changelog**: https://github.com/WAF2p/wafpass-action/compare/v0.1.0...v0.1.1
