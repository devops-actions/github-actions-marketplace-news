---
title: Lightning Flow Scan
date: 2025-12-10 05:39:56 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.5.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.5.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Release notes

## Release Notes

**Action tag:** action-v2.5.0
**Core tag:** core-v6.9.0
**CLI tag:** v6.9.0
**VSX Version:** v2.3.0

### New Rule: TransformInsteadOfLoop

Detects Loop elements that directly connect to Assignment elements—a pattern that can often be replaced with the Transform element for significantly better performance. According to Salesforce documentation, Transform elements are on average 10x more performant than Loop-Assignment combinations as they handle collection manipulation in bulk operations rather than iteratively.

**Severity:** 🔵 Note

**Example violation:**
```xml
<loops>
    <name>Loop_Through_Accounts</name>
    <nextValueConnector>
        <targetReference>Assign_Account_Fields</targetReference>
    </nextValueConnector>
</loops>
<assignments>
    <name>Assign_Account_Fields</name>
    <!-- Assignment logic here -->
</assignments>
```

**Recommended fix:**
Replace the Loop → Assignment pattern with a Transform element to process collections in bulk.

### Enhanced Rule: MissingFaultPath

Extended the `MissingFaultPath` rule to include **Invocable Apex Actions** (`apexPluginCalls`) in addition to DML operations and standard actions. Invocable Apex Actions are common points of failure due to exceptions in called code, governor limits, or invalid inputs—making fault path coverage just as critical as for DML operations.

This enhancement provides more comprehensive error handling coverage across all failure-prone operations in Flows.

### Credits

Thank you to [@tomkittlabs](https://github.com/tomkittlabs) for proposing both feedback points, and the TransformInsteadOfLoop rule in [issue #243](https://github.com/Flow-Scanner/lightning-flow-scanner/issues/243)!
