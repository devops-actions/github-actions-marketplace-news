---
title: BitMono Obfuscator
date: 2026-06-28 07:20:04 +00:00
tags:
  - bitmono-project
  - GitHub Actions
draft: false
repo: https://github.com/bitmono-project/BitMono
marketplace: https://github.com/marketplace/actions/bitmono-obfuscator
version: 0.43.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/bitmono-project/BitMono** to version **0.43.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bitmono-obfuscator) to find the latest changes.

## What's Changed

## What's Changed

* **New website — [bitmono.dev](https://bitmono.dev)**: obfuscate your .NET files right in the browser (no install), and upload & share crackmes for others to try and crack by @sunnamed434
* **GitHub Action for CI obfuscation**: obfuscate a compiled .NET assembly straight from your workflow — no source changes, no `.csproj` edits. Drop in `bitmono-project/BitMono@0.43.0` with a `file:` input (plus optional `preset`, `protections`, `libraries`, config files, `strong-name-key`, etc.) and it installs the BitMono global tool and runs it for you by @sunnamed434
* **Unity IL2CPP `global-metadata.dat` protection is now end-to-end** (follow-up to the v0.42.1 tooling): opt in and BitMono encrypts `global-metadata.dat` with a random per-build key and ships a native C++ plugin that decrypts it at boot — proven on a real Unity 6 build on **Windows and Android** (validated on an x86_64 emulator). The decryptor is compiled out of builds that don't use it, and on Windows the `il2cpp_*` exports in `GameAssembly.dll` are renamed (with a `GetProcAddress` hook) to defeat runtime dumpers. 32-bit Android (ARMv7) is unsupported and now warns instead of producing a broken build by @sunnamed434 (#276)
* CLI: new `--nologo` flag to suppress the ASCII banner on startup for tidier CI logs by @sunnamed434
* Fixed: Unity editor scripts now compile under C# 7.3, so the Unity 2019.4 build is no longer broken by @sunnamed434
* Docs: added a `SECURITY.md`, and README docs links now point at [docs.bitmono.dev](https://docs.bitmono.dev) by @sunnamed434
* Tests: migrated assertions from FluentAssertions to Shouldly (keeps the test deps fully free/permissive) by @sunnamed434
* CI: GitHub Packages push is now owner-agnostic (prep for the org transfer), `actions/checkout` bumped v6 → v7, and the Unity matrix is hardened (no fail-fast, throttled parallelism, 30-minute timeout) by @sunnamed434
* Bump Newtonsoft.Json from 13.0.3 to 13.0.4 by @dependabot[bot] in https://github.com/bitmono-project/BitMono/pull/287

**Full Changelog**: https://github.com/bitmono-project/BitMono/compare/0.42.1...0.43.0

