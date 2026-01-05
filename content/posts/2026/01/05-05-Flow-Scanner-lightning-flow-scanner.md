---
title: Lightning Flow Scan
date: 2026-01-05 05:50:52 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.3.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.3.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner GitHub Action is a tool designed to analyze and optimize Salesforce Flows by detecting potential issues such as unsafe contexts, queries in loops, hardcoded IDs, and other anti-patterns. It helps developers automate the identification of errors and inefficiencies that could lead to runtime failures, security risks, or deployment issues, improving the quality and maintainability of Salesforce Flow implementations. Key capabilities include customizable rules, scanning modes, and the ability to define exceptions or exclude specific flows.

## Release notes

## Release Notes –Improved Rule Messages & Category

You can now provide a custom message for any rule. This message overrides the default rule description in scan results, making violations clearer and easier for your team to understand.

**Action tag:** action-v3.3.0
**CLI tag:** v6.16.0
**Core tag:** core-v6.16.0
**VSX Version:** v3.1.0

## Custom Rule Messages Feature

When specified, the custom message and url replaces the default rule description and documentation reference in scan results.

Example configuration:

```json
{
  "rules": {
    "dml-in-loop": {
      "message": "Avoid DML inside loops. Bulkify operations instead.",
      "messageUrl": "https://internal.docs.company.com/salesforce/flow-dml-best-practices"
    }
  }
}
```

## Improved default severities
We’ve also updated the default severity levels and descriptions for several rules to better reflect their impact and help prioritize:

- ActionCallsInLoop → now Warning (was Error)
- ProcessBuilder → now Error (was Warning)
- MissingMetadataDescription → now Warning (was Error)
- RecordIdAsString → now Warning (was Error)
