---
title: Open Delivery Spec
date: 2026-08-08 22:11:00 +00:00
tags:
  - open-delivery-spec
  - GitHub Actions
draft: false
repo: https://github.com/open-delivery-spec/validate-action
marketplace: https://github.com/marketplace/actions/open-delivery-spec
version: v0.2.8
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  The ODS Validate Action automates the governance and visibility process for AI-assisted code, ensuring that low-quality AI-generated code does not reach production. It automatically attributes AI-generated code, analyzes its quality using built-in rules and external analyzers via SARIF, scores technical debt impact, and enforces policies using OPA Rego. The action is designed to run on every pull request and is easy to use with a YAML configuration.
---


Version updated for **https://github.com/open-delivery-spec/validate-action** to version **v0.2.8**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/open-delivery-spec) to find the latest changes.

## Action Summary

The ODS Validate Action automates the governance and visibility process for AI-assisted code, ensuring that low-quality AI-generated code does not reach production. It automatically attributes AI-generated code, analyzes its quality using built-in rules and external analyzers via SARIF, scores technical debt impact, and enforces policies using OPA Rego. The action is designed to run on every pull request and is easy to use with a YAML configuration.

## What's Changed

## What's Changed

## 🚀 Features

- feat: emit the AI-code evidence document with the report artifact by @shenxianpeng in #81
- feat: detect shallow checkouts and explain the degradation + fix by @shenxianpeng in #80

## 👻 Maintenance

- chore: bump default cli-ref to v0.7.6 by @shenxianpeng in #84
- chore: same-day upstream updates (dependabot + cli-ref bot daily) by @shenxianpeng in #83
- chore: dogfood the current action release (v0.2.5 → v0.2.7) by @shenxianpeng in #82

**Full Changelog**: https://github.com/open-delivery-spec/validate-action/compare/v0.2.7...v0.2.8

