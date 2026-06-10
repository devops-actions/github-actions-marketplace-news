---
title: UA-.NETStandard Test Suite
date: 2026-06-10 23:20:33 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.5.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.5.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## What's Changed

## v1.5.2 - 2026-06-10

### Fixed ? Custom DataType nodes (ExtensionObjectsBuilder)

- **`DataTypeDefinition` attribute now exposed** on `TestPointXYZ` (`ns=3;i=3000`) and `TestRangeStruct` (`ns=3;i=3001`) ? each `DataTypeState` carries a `StructureDefinition` (`X`/`Y`/`Z` and `Low`/`High`/`Value`, all `Double` scalars, `DefaultEncodingId` pointing at the respective Default Binary node). Previously reading attribute 23 returned `Bad_AttributeIdInvalid`, so OPC UA 1.04+ clients could not discover the structure layout. Used by the strengthened `discoverDataTypes()` integration tests in `php-opcua/opcua-client`.
- **Encoding nodes linked via `HasEncoding`** (`i=38`) instead of `HasComponent` ? `AddChild` produced a non-conformant `HasComponent` reference, so spec-compliant clients browsing for `HasEncoding` could not find the `Default Binary` nodes (`ns=3;i=3010` / `ns=3;i=3011`).

