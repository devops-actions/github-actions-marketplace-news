---
title: UA-.NETStandard Test Suite
date: 2026-05-26 22:52:31 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.3.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## Action Summary

The UA-.NETStandard Test Suite is a comprehensive tool designed for integration testing of OPC UA client libraries across multiple programming languages. It provides realistic test environments using 10 pre-configured OPC UA server instances, which cover major security policies, authentication methods, and communication modes, along with a rich address space including dynamic variables, events, alarms, and historical data. This suite automates testing with high fidelity to OPC UA specifications, enabling developers to ensure interoperability and compliance in their client implementations.

## What's Changed

## v1.3.0 — 2026-05-26

### Added — File Transfer (Part 5) fixtures

- **`FileTransferBuilder`** under `src/TestServer/AddressSpace/` — mirrors the existing builder pattern, self-contained, opt-in via the new `EnableFileTransfer` config flag (default `true`). Adds a `TestServer/Files` folder with **six `FileType` nodes plus one `FileDirectoryType`**:
    - `ns=1;s=TestServer/Files/ReadOnlyFile` — 1024 B, deterministic seed (`MD5("readonly-seed") × 64`), `Writable=false`, MimeType `application/octet-stream`
    - `ns=1;s=TestServer/Files/EmptyFile` — 0 B, `Writable=false`, MimeType `text/plain`
    - `ns=1;s=TestServer/Files/LargeFile` — 256 KB, bytes `0..255` repeated 1024 times, `Writable=false` (forces chunked `Read` against any sane negotiated max-message-size), MimeType `application/octet-stream`
    - `ns=1;s=TestServer/Files/WritableFile` — 0 B initial, `Writable=true`, the round-trip target for `Open(Write)` → `Write` → `Close` → re-`Open(Read)` test patterns
    - `ns=1;s=TestServer/Files/AppendableFile` — 13 B initial (`"seed-content\n"`), `Writable=true`, the target for `Open(Write | Append)` semantics — the initial cursor sits at end-of-file
    - `ns=1;s=TestServer/Files/ProtectedWritableFile` — 0 B initial, `Writable=true` advertised but **per-session** `Open(Write)` checks the identity via `UserManager`: only the `admin` role obtains a write handle; `anonymous`, `operator`, and `viewer` receive `Bad_UserAccessDenied`. `Open(Read)` is allowed for every session
    - `ns=1;s=TestServer/Files/RootDir` — a `FileDirectoryType` with all four management methods wired (`CreateDirectory`, `CreateFile`, `DeleteFileSystemObject`, `MoveOrCopy`). Children are tracked in-process, addressable via the standard FileType/FileDirectoryType surface; `MoveOrCopy` supports both `createCopy=true` (clone) and `createCopy=false` (move)
- **`InMemoryFileBackend`** — per-file `MemoryStream`-backed implementation. No disk I/O, no volumes, no cleanup setup. Every container restart resets all six files to their initial seed (and clears every runtime-created child of `RootDir`). Thread-safe via a single lock (UA-.NETStandard dispatches `OnCall` from its session worker pool, so concurrent handle access is real). Snapshot helper exposed for `MoveOrCopy(createCopy=true)`.
- **Full OPC UA Part 5 §C method coverage** wired on every `FileType`: `Open(mode)`, `Close(handle)`, `Read(handle, length)`, `Write(handle, data)`, `GetPosition(handle)`, `SetPosition(handle, position)`. Standard properties `Size` / `Writable` / `UserWritable` / `OpenCount` / **`MimeType`** populated; `Size` updated on every successful `Write`, `OpenCount` on every `Open`/`Close`.
- **Edge-case enforcement** — `Open(0)` → `Bad_InvalidArgument`, `Open(Write)` on a read-only file → `Bad_NotWritable`, `Open(EraseExisting)` without `Write` → `Bad_InvalidArgument`, `Read`/`Write` on a handle missing the required mode bit → `Bad_InvalidState`, unknown `fileHandle` → `Bad_InvalidArgument`, `Read` past EOF → short-read (no error), `Open(Write)` on `ProtectedWritableFile` without admin role → `Bad_UserAccessDenied`, `CreateDirectory`/`CreateFile` with empty name → `Bad_InvalidArgument`, `DeleteFileSystemObject` / `MoveOrCopy` against an unknown NodeId → `Bad_NodeIdUnknown`.
- **TestNodeManager helpers** — `AddNode(context, node)` already exposed in earlier versions; new `DeleteDynamicNode(nodeId)` wrapper around the framework's internal `DeleteNode` to support the directory delete/move-out paths.
- **Env-driven toggle** — `OPCUA_ENABLE_FILE_TRANSFER` (default `true`). Disabling skips the entire `TestServer/Files` folder construction. On by default on every classic server.
- **Docs** — new page `docs/runtime-features/file-transfer.md` covering NodeIds, initial content, Open mode matrix, round-trip / chunked-read test patterns, reset semantics, FileDirectoryType usage, and the per-user check on `ProtectedWritableFile`. Cascading updates in `docs/index.md`, `docs/address-space/overview.md` (now 10/11 top-level folders, new `Files` row in the tree), `docs/reference/environment-variables.md`, `docs/server-instances/overview.md`.

