---
title: UA-.NETStandard Test Suite
date: 2026-04-02 21:55:45 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## Action Summary

The **UA-.NETStandard Test Suite** is a comprehensive, ready-to-use tool designed for integration testing of OPC UA client libraries across various programming languages. It provides a realistic testing environment with eight pre-configured server instances that simulate different security policies, authentication methods, and communication modes outlined in the OPC UA specification. Key features include a rich address space with ~300 nodes, dynamic variables, events, alarms, historical data, and structured objects, enabling developers to validate client interoperability in a highly standardized and robust manner.

## What's Changed

## UA-.NETStandard Test Suite v1.0.0

  This is the evolution of [`php-opcua/opcua-test-suite`](https://github.com/php-opcua/opcua-test-suite) (v1.1.5), completely rewritten from Node.js/node-opcua to **.NET 8.0/UA-.NETStandard**.

  ### Why the switch?

  [UA-.NETStandard](https://github.com/OPCFoundation/UA-.NETStandard) is the **reference implementation** maintained directly by the OPC Foundation — the same organization that writes the OPC UA specification. This means protocol behavior, binary encoding, security handshakes, and session management
  are as close to the spec as it gets. If your client works against this server, it will work against real industrial equipment.

  ### What's included

  - **8 pre-configured OPC UA servers** via Docker Compose (ports 4840-4847) covering all security policies, authentication methods, and communication modes
  - **~300 address space nodes** including 21 scalar types, 20 array types, 3 multi-dimensional matrices, 3 analog items with range metadata
  - **12 callable methods** — arithmetic, string operations, arrays, async, error handling, multi-output, event generation
  - **13 dynamic variables** — counters, sine/sawtooth/triangle waves, random values, status cycling
  - **3 event types** with periodic emission + **3 alarm types** (ExclusiveLimit, NonExclusiveLimit, OffNormal)
  - **4 historical variables** with HistoryRead support (1000ms recording, up to 10,000 samples)
  - **2 extension objects** with binary-encoded ExtensionObject values (TestPointXYZ, TestRangeStruct)
  - **Structured objects** with nesting up to 10 levels deep
  - **Role-based access control** — admin, operator, viewer roles with enforced write restrictions
  - **Real certificate validation** on the strict server (port 4842) — untrusted certs are rejected
  - **50 access control variables** covering every combination of data type and access level
  - **4 OPC UA Views** for filtered browsing
  - **Auto-generated certificates** (CA, server, client, self-signed, expired) via OpenSSL
  - **GitHub Actions composite action** for one-line CI integration
  - **Comprehensive documentation** with 19 reference docs + machine-readable AI reference

  ### Migration from opcua-test-suite

  This is a **drop-in replacement**. Same ports, same endpoints, same address space structure, same user accounts, same certificate layout. If your tests worked with `opcua-test-suite`, they work with this — just swap the Docker image.

  The only notable differences:
  - Namespace index 1 is now `urn:opcua:testserver:nodes` (was `urn:opcua:test-server:<ServerName>`)
  - Extension object TypeIds are in namespace 3 (`urn:opcua:test-server:custom-types`)
  - Historical data records at 1000ms (was 1000ms in node-opcua too)
  - Server auto-generates its own application certificate via `CheckApplicationInstanceCertificates()`
