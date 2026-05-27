---
title: UA-.NETStandard Test Suite
date: 2026-05-27 06:33:35 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.4.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## Action Summary

The UA-.NETStandard Test Suite is a comprehensive tool designed for integration testing of OPC UA client libraries across various programming languages. It provides pre-configured server instances that simulate realistic OPC UA environments, covering all major security policies, authentication methods, and communication modes as defined by the OPC UA specification. With features like dynamic variables, events, alarms, historical data, and structured objects, the suite automates the setup of a reliable, standards-compliant test environment to validate client interoperability and functionality.

## What's Changed

## v1.4.0 — 2026-05-26

### Added — Reverse Connect (Part 6 §7.1.2.3) test methods

- **`TestServerApp`** base class changed from `StandardServer` to `ReverseConnectServer` so the server-side `ReverseConnectManager` (UA-.NETStandard `Opc.Ua.Server.ReverseConnectServer.AddReverseConnection(Uri, …)` / `RemoveReverseConnection(Uri)`) is available at runtime. No behaviour change for the existing services — reverse connections are inert until a target is registered.
- **`ReverseConnectMethodsBuilder`** under `src/TestServer/AddressSpace/` — opt-in via the new `EnableReverseConnect` config flag (default `true`). Adds a `TestServer/ReverseConnect` folder with **two Method nodes**:
    - `ns=2;s=TestServer/ReverseConnect/StartReverseConnect(host: String, port: UInt16) → status: StatusCode` — calls `AddReverseConnection(new Uri("opc.tcp://{host}:{port}"))`; idempotent against double-add (treated as `Good`).
    - `ns=2;s=TestServer/ReverseConnect/StopReverseConnect(host: String, port: UInt16) → status: StatusCode` — calls `RemoveReverseConnection(...)`; returns `BadNotFound` if the URL was not registered, `Good` otherwise.
- **TestNodeManager** signature extended with a fifth ctor argument `TestServerApp testServer` so the Method handlers can reach the server-side reverse-connect API through the cast-free path. Empty-host / zero-port inputs both yield `BadInvalidArgument` without touching the underlying manager.
- **Env-driven toggle** — `OPCUA_ENABLE_REVERSE_CONNECT` (default `true`). When disabled the `TestServer/ReverseConnect` folder is not built and the methods are absent.
- Designed to drive the integration tests of `php-opcua/opcua-client-ext-reverse-connect`: the PHP client opens a listener on an ephemeral port, connects to the test server normally, calls `StartReverseConnect("127.0.0.1", <port>)`, and the server dials out and emits a ReverseHello (`RHE`) toward the listener.

