---
title: Semantic Firewall
date: 2026-05-24 14:18:21 +00:00
tags:
  - BlackVectorOps
  - GitHub Actions
draft: false
repo: https://github.com/BlackVectorOps/semantic_firewall
marketplace: https://github.com/marketplace/actions/semantic-firewall
version: v4.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/BlackVectorOps/semantic_firewall** to version **v4.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semantic-firewall) to find the latest changes.

## Action Summary

**Semantic Firewall** is a cutting-edge static analysis GitHub Action designed for Go codebases, focusing on detecting malware, backdoors, and risky changes by analyzing code behavior and intent rather than text or syntax. It solves problems traditional tools struggle with, such as identifying malicious or risky changes hidden through obfuscation, renaming, or refactoring. Key capabilities include behavioral fingerprinting, malware detection, risk-aware diffs, and sandboxed execution for secure code analysis.

## What's Changed

### New

- **`FingerprintTreeWithOptions(rootDir, fileFilter, policy, opts TreeLoadOptions)`** — options-driven tree fingerprinting
- **`TreeLoadOptions`** struct:
  - `Proxy string` — overrides `GOPROXY` for the loader while keeping all other security hardening (`CGO_ENABLED=0`, `GOFLAGS=-mod=readonly`, `GOWORK=off`, etc.). Zero value = secure default (`"off"`)
  - `ModuleNameHint string` — module path for the synthesised `go.mod` in pre-modules-era trees without a real `go.mod`; if empty, `synthetic.local/anonymous` is used as before

### Unchanged

`FingerprintTree` and `FingerprintTreeAdvanced` behaviour is identical to v4.1.0 — zero-value `TreeLoadOptions` is the secure default.
