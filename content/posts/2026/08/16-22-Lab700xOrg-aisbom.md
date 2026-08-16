---
title: AIsbom Security Scanner
date: 2026-08-16 22:23:01 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.3.1
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  AIsbom is a tool designed to detect malware and license risks in machine learning model files, primarily through static analysis. It inspects Python Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors binaries to identify RCE-capable payloads and restrictive licenses that are not detected by generic SBOM tools. The tool does not load or execute the models, ensuring compliance and security during scans.
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a tool designed to detect malware and license risks in machine learning model files, primarily through static analysis. It inspects Python Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors binaries to identify RCE-capable payloads and restrictive licenses that are not detected by generic SBOM tools. The tool does not load or execute the models, ensuring compliance and security during scans.

## What's Changed

### Heads up: two exit codes changed

Two cases that previously exited `0` now exit non-zero. **Neither was scanning anything before**, so nothing that genuinely worked is affected — but a pipeline that was silently green on a bad path will now fail, which is the point of the fix.

### What's new

**Scanning a single model file works.** `aisbom scan model.pt` discovered nothing and exited `0`, because local discovery only ever enumerated the *contents of a directory*. A malicious file named directly on the command line reported "No AI models found" and passed clean — while the identical file scanned via its parent directory was correctly flagged CRITICAL.

* This is the form the README documents for both `--strict` and `--lint`, so the two examples a security-conscious user is most likely to copy were the two that silently did nothing.
* Single files are now first-class targets for every supported format, and a file gets the same verdict whichever way it is reached.

**An unusable scan target now fails instead of passing.** A path that does not exist — or a broken symlink, or a named file no scanner can read — previously produced an empty SBOM and exit `0`, indistinguishable from a genuinely clean repo. A typo'd path in CI turned the gate green permanently.

* These now report what went wrong and exit `1`.
* `--no-fail-on-risk` does not suppress it: that flag governs risk findings, not a broken target.
* An empty directory is still a clean scan and still exits `0`.

**The bypass scorecard now publishes why each uncaught case is uncaught.** Cases that are not fully caught carry a `limitation` note, rendered into `docs/bypass-scorecard.md` alongside the verdict: what AIsbom actually reports, why that is the wrong reason, and what closing the gap would take. No case's `expected` verdict changes — every evasion technique in the corpus remains one a correct scanner should catch, so the gate keeps counting all three against us. The note explains a gap; it never excuses one.

### Exit codes

| Exit | Meaning |
|---|---|
| `0` | Scan completed, no CRITICAL risk |
| `1` | Scan could not be completed — target missing/unreadable, parse failure, or remote fetch failure |
| `2` | CRITICAL risk found (suppress with `--no-fail-on-risk`) |

Only the `1` row is new for local targets; remote fetch failures have behaved this way since v1.1.0.

### What's not changing

CycloneDX and SPDX output are byte-for-byte identical to v1.3.0 — verified by diffing the emitted documents across the whole CLI surface. Detection behavior is unchanged, and the bypass scorecard holds at 8/11 with no case moving.

### Dependencies

`typer` 0.27.1, `cyclonedx-python-lib` 11.11.1, `packaging` 26.3, and `pyinstaller` 6.22.0 (build-only). Each was verified individually and in combination against an unchanged CLI-output baseline.

