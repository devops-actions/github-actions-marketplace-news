---
title: Lightning Flow Scan
date: 2025-12-09 13:09:30 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.4.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.4.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Release notes

## Release Notes

**Action tag:** action-v2.4.0
**Core tag:** core-v6.8.0
**CLI tag:** v6.8.0
**VSX Version:** v2.2.0

### New Rule: MissingFilterRecordTrigger

Detects record-triggered flows that lack filters on changed fields or entry conditions, leading to unnecessary executions on every record change. This can degrade system performance, hit governor limits faster, and increase resource consumption in high-volume orgs.

**Severity:** 🟡 Warning

### Improved Rule Loading: Merged Mode (Default)

We've enhanced how Lightning Flow Scanner handles rule configuration to provide a more intuitive experience, similar to ESLint's configuration model.

**What's New:**

- **Merged Mode (Default):** By default, all default rules now run, and your configuration only overrides what you specify. No need to list every rule!
- **Isolated Mode:** For testing or custom profiles, use `"ruleMode": "isolated"` to run only explicitly specified rules
- **Disable Rules:** New `"enabled": false` option to disable specific rules without removing them from your config

**Example:**
```json
{
  "rules": {
    "FlowName": {
      "severity": "error"
    },
    "UnusedVariable": {
      "enabled": false
    }
  }
}
```

In this example all default rules run, with `FlowName` severity overridden and `UnusedVariable` disabled.
