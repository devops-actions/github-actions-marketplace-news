---
title: Lightning Flow Scan
date: 2025-12-10 13:08:37 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v2.6.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v2.6.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Release notes

## Release Notes

**Action tag:** action-v2.6.0
**Core tag:** core-v6.10.0
**CLI tag:** v6.10.0
**VSX Version:** v2.4.0

### New Rule: RecordIdAsString

Detects flows using a String variable named `recordId` as input when they could receive the entire record object instead. Since recent Salesforce releases, record pages and quick actions can pass the complete record, eliminating the need for an additional Get Records query and improving performance. This optimization saves a SOQL query and reduces flow execution time.

**Severity:** 🔵 Note

**Example violation:**
```xml
<variables>
    <name>recordId</name>
    <dataType>String</dataType>
    <isInput>true</isInput>
</variables>
<recordLookups>
    <name>Get_Account</name>
    <filters>
        <field>Id</field>
        <operator>EqualTo</operator>
        <value>
            <elementReference>recordId</elementReference>
        </value>
    </filters>
</recordLookups>
```

**Recommended fix:**
Change the variable to receive the full record object:
```xml
<variables>
    <name>recordId</name>
    <dataType>SObject</dataType>
    <objectType>Account</objectType>
    <isInput>true</isInput>
</variables>
```

**Applies to:** Screen Flows and AutoLaunched Flows (not record-triggered flows)

### Credits

Thank you to [@fkramer690](https://github.com/fkramer690) for suggesting this optimization in [issue #237](https://github.com/Flow-Scanner/lightning-flow-scanner/issues/237)
