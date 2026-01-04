---
title: Lightning Flow Scan
date: 2026-01-04 21:29:33 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.2.1
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.2.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action that automates the analysis and optimization of Salesforce Flows. It identifies potential issues such as unsafe contexts, queries in loops, hardcoded IDs, and other anti-patterns that could lead to inefficiencies or errors. By providing actionable insights and rule-based recommendations, it helps developers improve the maintainability, portability, and performance of their Salesforce automation processes.

## Release notes

## Release Notes –Custom Rule Messages

You can now provide a custom message for any rule. This message overrides the default rule description in scan results, making violations clearer and easier for your team to understand.

**Action tag:** action-v3.2.1
**CLI tag:** v6.15.1
**Core tag:** core-v6.15.1
**VSX Version:** v3.0.1

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
