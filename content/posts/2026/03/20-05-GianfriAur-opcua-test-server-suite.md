---
title: OPC UA Test Server Suite
date: 2026-03-20 05:50:40 +00:00
tags:
  - GianfriAur
  - GitHub Actions
draft: false
repo: https://github.com/GianfriAur/opcua-test-server-suite
marketplace: https://github.com/marketplace/actions/opc-ua-test-server-suite
version: v1.1.4
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/GianfriAur/opcua-test-server-suite** to version **v1.1.4**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opc-ua-test-server-suite) to find the latest changes.

## Action Summary

The OPC UA Test Server Suite is a Docker-based tool designed for integration testing of OPC UA client libraries across multiple programming languages. It automates the creation of a realistic OPC UA test environment with eight pre-configured server instances, covering all security policies, authentication methods, and communication modes defined by the OPC UA specification. Key features include a comprehensive address space, dynamic variables, events, alarms, historical data, and easy extensibility, making it an ideal solution for developers testing OPC UA client functionality in diverse industrial scenarios.

## Release notes

## v1.1.4

### Address Space

- **extension-objects.js**: Added new `ExtensionObjects` module with custom
  structured data types defined via a NodeSet XML file (`config/custom-types.xml`).
  Two new variables: `PointValue` (RW, `TestPointXYZ` with X/Y/Z Double fields)
  and `RangeValue` (R, `TestRangeStruct` with Min/Max/Value Double fields).
  Custom types are loaded as an additional nodeset at server startup.

### Server

- **config.js / index.js**: Added configurable OPC UA operation limits via
  environment variables: `OPCUA_MAX_NODES_PER_READ`, `OPCUA_MAX_NODES_PER_WRITE`,
  `OPCUA_MAX_NODES_PER_BROWSE`. When set to a value > 0, the server binds the
  corresponding standard OPC UA ServerCapabilities nodes (`i=11705`, `i=11707`,
  `i=11710`). Default is `0` (unlimited).

- **config.js**: Added `OPCUA_CUSTOM_TYPES_FILE` environment variable to specify
  the path to a custom NodeSet XML file (default: `config/custom-types.xml`).

### Dependencies

- **package.json**: Bumped `node-opcua` from `^2.133.0` to `^2.165.0`.
