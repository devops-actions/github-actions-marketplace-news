---
title: AIsbom Security Scanner
date: 2026-08-29 22:06:26 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.3.3
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  AIsbom is a security scanner for AI models that performs static analysis to detect malware, license risks, and code execution vulnerabilities within ML model files. It scans various formats like PyTorch Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors. The action can be used as a GitHub Action to post an idempotent PR comment on every commit, helping developers identify potential security issues before model deployment.
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.3.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security scanner for AI models that performs static analysis to detect malware, license risks, and code execution vulnerabilities within ML model files. It scans various formats like PyTorch Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors. The action can be used as a GitHub Action to post an idempotent PR comment on every commit, helping developers identify potential security issues before model deployment.

## What's Changed

### Correction to the v1.3.2 notes

v1.3.2 introduced content-based discovery for files no extension claims, and documented one known limit: that a payload could only hide behind a literal larger than the whole 16MB sniff budget.

**That figure was wrong.** The real threshold was roughly **64KB** — about 254× easier to reach than published. This release fixes the underlying gap and makes the documented ceiling the true one.

### What was wrong

Discovery reads a 64KB head and re-reads with a larger budget only when that head looks like an *unfinished* pickle. The signal for "unfinished" was **at least one opcode parsed**.

A pickle that opens with a single literal bigger than that first read completes **zero** opcodes — so the larger read never happened, and the file was never discovered at all. Measured on the released v1.3.2:

```
first-literal    65,000 B: CRITICAL (RCE Detected: os.system)
first-literal    70,000 B: NOT DISCOVERED
first-literal 1,000,000 B: NOT DISCOVERED
```

Scope: **discovery only**, and only for files whose extension nothing claims. The same padded payloads under a recognized extension such as `.pkl` were always caught, as was a payload *followed* by a large literal. If you scan `.pt`, `.pkl`, `.safetensors`, `.gguf` or any other recognized format, this never applied to you.

### The fix

Discovery now also re-reads when the first opcode declares an argument that runs past the buffer — the one way a genuine pickle yields no opcodes at all.

* **Length-prefixed arguments** (`BINBYTES`, `BINUNICODE`, `BINBYTES8`, …) are read exactly from their size prefix.
* **Newline-terminated arguments** cannot be measured without the terminator, so they are admitted only for the handful of opcodes that can really begin a pickle (`STRING`, `UNICODE`, `INT`, `LONG`, `FLOAT`), only when no newline is already in view, and only when the next byte matches what that opcode's argument must start with.

That last guard is what keeps the walk cheap. A parquet file opens `PAR1`, and `P` *is* the PERSID opcode — but no real pickle begins with a persistent id, so parquet still settles on its first 64KB instead of being re-read to the cap. There is a test asserting exactly that.

### Verification

* Every previously-evading pad is now caught — 70,000 B, 250,000 B, 1,000,000 B and 2,000,000 B, in both the protocol-0 quoted-string and binary length-prefixed shapes.
* **The ceiling is now real**: caught at 16,773,120 bytes, not discovered at 16,781,312.
* Cost unchanged — a 5,101-file `node_modules` walk still yields 0 artifacts in 0.83s.
* `poetry run pytest`: **831 passed, 91.38% coverage**.
* `aisbom bypass-scorecard --check`: gate green, **9/11** unchanged.

### What's not changing

Exit codes, output formats and the CycloneDX/SPDX schemas are identical to v1.3.2. No new dependencies. The bypass scorecard is unmoved at 9/11 — this gap was never one of the eleven published corpus cases, which is its own lesson about what a corpus does and does not cover.

