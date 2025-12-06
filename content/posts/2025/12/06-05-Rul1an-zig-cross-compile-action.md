---
title: Zig Cross-Compiler
date: 2025-12-06 05:20:31 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/zig-cross-compile-action
marketplace: https://github.com/marketplace/actions/zig-cross-compiler
version: v2.4.3
dependentsNumber: "?"
---


Version updated for **https://github.com/Rul1an/zig-cross-compile-action** to version **v2.4.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zig-cross-compiler) to find the latest changes.

## Release notes

## Zig Cross-Compiler Action v2.3.0

### Overview

Zig Cross-Compiler Action provides Docker-free cross-compilation for C, C++, Rust, and Go by wiring Zig’s `cc` / `c++` toolchain into GitHub Actions. It turns a standard runner into a cross-compiling build host without containers, custom sysroots, or system headers.

This action focuses on being infrastructure: it configures the toolchain and environment; you stay in control of the build commands.

---

### What this action does

- Installs Zig (via `goto-bus-stop/setup-zig`).
- Sets `CC`, `CXX`, `AR`, `RANLIB` to use `zig cc` / `zig c++` with the requested target.
- Configures language-specific environment:
  - Go: `CGO_ENABLED`, `GOOS`, `GOARCH`
  - Rust: `CARGO_TARGET_<TRIPLE>_LINKER`, `CC_<TRIPLE>`, `CXX_<TRIPLE>`
- Optionally runs a lightweight `file` scan to verify produced binaries (`verify-level`).

It does **not**:

- Run `go build`, `cargo build`, `make`, or any build system for you.
- Install Go or Rust toolchains (use `actions/setup-go`, `dtolnay/rust-toolchain`, etc.).
- Modify project files or config.

---

### Key features in this release

#### 1. Opinionated, deterministic environment

The action unconditionally overwrites:

- `CC`, `CXX`, `AR`, `RANLIB`
- `ZIG_TARGET`
- Go-related vars (`CGO_ENABLED`, `GOOS`, `GOARCH`) when in Go mode
- Rust-related vars (`CARGO_TARGET_<TRIPLE>_LINKER`, `CC_<TRIPLE>`, `CXX_<TRIPLE>`) when in Rust mode

The goal is deterministic builds: no mixing of previous CI state with the configured cross-toolchain.

#### 2. Language presets (`project-type`)

`project-type` controls how much the action does beyond setting `CC` and `CXX`:

- `auto`  
  Inspects the current directory:
  - `Cargo.toml` present → treated as Rust
  - `go.mod` present → treated as Go
  - otherwise → treated as C

- `go`  
  Sets `CGO_ENABLED=1`, `GOOS`, `GOARCH` based on the Zig target.

- `rust`  
  Configures Zig as Cargo’s linker for the chosen target by:
  - mapping the Zig target to a Rust triple, and  
  - setting `CARGO_TARGET_<TRIPLE>_LINKER` to a wrapper that calls `zig cc -target ...`.

- `c`  
  Pure C/C++ mode:
  - sets `CC`, `CXX`  
  - forces `CGO_ENABLED=0` so Go/CGO does not interfere in mixed repositories.

- `custom`  
  Only injects compiler-related variables; no Go or Rust configuration.

#### 3. Target aliasing

Human-friendly targets are mapped to stable Zig triples:

- `linux-arm64` → `aarch64-linux-musl`
- `linux-x64` → `x86_64-linux-musl`
- `macos-arm64` → `aarch64-macos`
- `macos-x64` → `x86_64-macos`
- `windows-x64` → `x86_64-windows-gnu`

You can also pass full triples directly (for example `aarch64-unknown-linux-gnu`).

#### 4. Rust + Musl safety policy

Rust ships a self-contained Musl CRT and Zig ships another. Mixing them typically leads to duplicate symbol and CRT conflicts.

The action enforces a `rust-musl-mode` policy:

- `deny` (default)  
  Fails fast for `*musl` Rust targets with a concrete suggestion:
  - use a `*-gnu` target such as `aarch64-unknown-linux-gnu`, or  
  - use `cargo-zigbuild` with `project-type: c`.

- `warn`  
  Allows the build but logs a warning about potential CRT conflicts.

- `allow`  
  Fully allows the configuration for users who know the implications.

#### 5. Verification control (`verify-level`)

Post-build verification is configurable:

- `basic` (default)  
  Runs `find` (depth 3) combined with `file` and reports files that look like ELF, Mach-O, or PE binaries.

- `none`  
  Skips verification. Use this if you have your own verification steps or non-standard layouts.

---

### Supported runners and verified targets

**Host runners:**

- `ubuntu-latest`
- `macos-latest`

Windows runners are not supported as hosts; the action will fail early if `RUNNER_OS == Windows`. Windows is supported as a compilation target.

**Examples of verified targets (covered by E2E workflows):**

- Linux (musl): `x86_64-linux-musl`, `aarch64-linux-musl` (via `linux-x64`, `linux-arm64`)
- Linux (glibc): `aarch64-unknown-linux-gnu`
- Windows (target): `x86_64-windows-gnu` (via `windows-x64`)
- macOS (target): `aarch64-macos` (via `macos-arm64`)

The E2E matrix builds and checks:

- Go (CGO) to `linux-arm64` on Ubuntu.
- Rust to `aarch64-unknown-linux-gnu` on Ubuntu.
- C to `windows-x64` on Ubuntu.
- C to `aarch64-macos` on `macos-latest` (Mach-O verification).

---

### Inputs (summary)

- `version` – Zig version to install (default `0.13.0`).
- `target` – required; target triple or alias (for example `linux-arm64`).
- `project-type` – `auto` | `go` | `rust` | `c` | `custom` (default `auto`).
- `rust-musl-mode` – `deny` | `warn` | `allow` (default `deny`).
- `verify-level` – `basic` | `none` (default `basic`).
- `cmd` – required; build command executed after the environment is configured.

---

### Debugging and observability

- `ZIG_ACTION_DEBUG=1` switches to debug logging and prints a scoped dump of relevant environment variables (`ZIG_*`, `GO*`, `CARGO_*`, `CC`, `CXX`).
- When configuring Rust, the action logs the resolved Rust triple and the exact linker wrapper path used for `CARGO_TARGET_<TRIPLE>_LINKER`.

This release is intended as a stable, infrastructure-grade base for cross-compilation pipelines: no Docker, minimal moving parts, and explicit policies around known edge cases like Rust+Musl.

**Full Changelog**: https://github.com/Rul1an/zig-cross-compile-action/compare/v2.4.1...v2.4.3
