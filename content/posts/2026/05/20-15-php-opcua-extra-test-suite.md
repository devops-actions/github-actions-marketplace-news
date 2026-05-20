---
title: Extra OPC UA Test Suite
date: 2026-05-20 15:09:09 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/extra-test-suite
marketplace: https://github.com/marketplace/actions/extra-opc-ua-test-suite
version: v1.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/extra-test-suite** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/extra-opc-ua-test-suite) to find the latest changes.

## Action Summary

The **Extra OPC UA Test Suite** is a GitHub Action and Docker-based solution that provides pre-configured OPC UA servers to test service sets and scenarios not covered by the UA-.NETStandard reference implementation. It automates the deployment of specialized test environments, such as NodeManagement and advanced security configurations, enabling developers to validate OPC UA client implementations against additional use cases and edge cases. This tool complements the main `uanetstandard-test-suite` by addressing its limitations and offering modular extensibility for future server additions.

## What's Changed

## [v1.2.0] - 2026-05-20

Third release. Adds an open62541-based server with HistoryRead + HistoryUpdate enabled, used by `php-opcua/opcua-client` to exercise the HistoryUpdate service end-to-end (UA-.NETStandard does not implement it on its demo nodes).

### Added

- **`open62541-historizing` service** — open62541 v1.4.8 built with `UA_ENABLE_HISTORIZING=ON`, hosting a single `Double` variable `ns=2;s=Historizing.Counter` with `accessLevel` including `HISTORYREAD | HISTORYWRITE` and a `UA_HistoryDataBackend_Memory` (capacity 1024). Host port `24842:4840`. No security, anonymous only.
- The exposed node accepts `HistoryInsertData`, `HistoryReplaceData`, `HistoryUpdateData`, `HistoryDeleteRawModified`, `HistoryReadRaw`. `HistoryDeleteAtTime` and the Event subtypes are accepted (no protocol error) but the Memory backend does not implement the actual delete/event paths.

