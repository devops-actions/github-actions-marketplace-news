---
title: AIsbom Security Scanner
date: 2026-08-16 06:05:56 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.3.0
dependentsNumber: "0"
actionType: Docker
actionSummary: |
  AIsbom is a static analysis tool that detects malware and license risks in AI model files, including Python Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors / GGUF binary headers. It performs these checks without loading or executing models, ensuring compliance with security standards. The tool can be used as a GitHub Action to scan repositories on every commit and post an idempotent PR comment.
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a static analysis tool that detects malware and license risks in AI model files, including Python Pickle bytecode, Keras configurations, GGUF chat templates, ONNX graphs, and SafeTensors / GGUF binary headers. It performs these checks without loading or executing models, ensuring compliance with security standards. The tool can be used as a GitHub Action to scan repositories on every commit and post an idempotent PR comment.

## What's Changed

AIsbom now scans three more model formats, closes several documented ways of sneaking a malicious pickle past a scanner, and ships a command that lets you check those claims yourself.

### Three new formats scanned

**Keras** (`.keras`, `.h5`, `.hdf5`) — a `Lambda` layer stores an arbitrary Python callable in the model config as a marshalled code object, and `load_model` runs it. Lambda layers and embedded code objects are now flagged CRITICAL. The payload is identified from its header bytes and **never unmarshalled**. Both containers Keras writes are handled — the `.keras` zip and legacy HDF5 — without adding an HDF5 library to your install.

**ONNX** (`.onnx`) — the protobuf is walked directly; no ONNX runtime is imported and the graph is never executed. Alongside producer, opset, IR version and operator inventory, two signals are surfaced: operators from a non-standard domain, and external-data paths pointing outside the model directory, which turn `load_model` into an arbitrary-file read. Subgraphs carried by `If`, `Loop` and `Scan` are walked too.

**GGUF chat templates** — the embedded Jinja `chat_template` is extracted into the SBOM component and checked statically for sandbox-escape constructs. The template is **never rendered**, because rendering it is the vulnerability.

### Pickle evasions closed

* **Concatenated streams are all walked.** A legacy `torch.save` file hides its object behind several header pickles, so stopping at the first `STOP` meant never reaching the payload.
* **Non-standard containers are flagged.** Packing a model with 7z instead of the ZIP PyTorch expects previously meant the archive was never opened; it now reports `CRITICAL (Non-Standard Container: …)`. The container is named, not unpacked — no native dependency enters your install.
* **Broken and truncated streams are scanned, not abandoned.** The pickle VM runs sequentially, so a payload at the front executes before a corrupt tail is ever reached. Damaging a file is no longer a way to hide one.
* **Files are disassembled before their type is decided.** A printable protocol-0 pickle could previously pass as a text config file and be reported safe.
* **Indirect-execution gadgets are caught in both modes** — `bdb.Bdb.run`, the asyncio gadget chain, and the import-mechanism primitives (`sys.modules`, `importlib`, `runpy`, `pkgutil`, `builtins.__import__`). Strict mode now judges a global by its *resolved* module and attribute, so a submodule no longer inherits an allowlisted parent's trust.
* **`hf://` scans list the new extensions**, so a repo containing a backdoored `.keras`, `.h5` or `.onnx` model no longer resolves to zero artifacts.

### An unfinished scan is never reported as a clean one

Two new risk levels you may see in output. `MEDIUM (Pickle Scan Incomplete)` appears when a file is so unusual that the scan reaches its work limit. `MEDIUM (Unreadable Pickle Member)` appears when an archive member cannot be read at all — a loader that does not verify integrity the way AIsbom does would still run it.

Both exist for the same reason: a scanner that quietly gives up and returns a clean bill is worse than no scanner, because you would act on the clean bill.

### New: `aisbom bypass-scorecard`

Builds inert replicas of publicly documented scanner-evasion techniques — each traceable to a published CVE or research paper — scans them in both modes, and prints what AIsbom catches and what it misses. Nothing in the corpus is ever executed.

**8 of 11 evasion cases are now caught, up from 5 of 11.** The other three are published with the same detail as the wins — what AIsbom actually reports on each, why that reason is the wrong one, and what closing the gap would take:

- **`shadowpickle-allowlist-overwrite`** — AIsbom resolves the `STACK_GLOBAL` pair and sees `collections.OrderedDict`, which is legitimately allowlisted because real state_dicts are OrderedDicts. Both modes return only `MEDIUM (Pickle Present)`, the baseline every pickle gets. This is the ceiling on static allowlist analysis: the call is indistinguishable from a legitimate call to an allowlisted global, and closing it needs evidence beyond the resolved name.
- **`nullifai-7z-container`** — reported `CRITICAL (Non-Standard Container: 7z)`. Right severity, earned from the container rather than the payload, which is never disassembled. Unpacking 7z would put a native dependency in every install to cover one evasion class.
- **`cve-2025-1889-nonstandard-extension`** — the one outright miss. A pickle named `config.p` is never opened, so the scan reports `No AI models found` and emits zero artifacts. picklescan closed this in 0.0.22 and AIsbom has not.

None of the three is written off. All eleven stay marked as cases a correct scanner should catch, so the gate keeps counting them against us.

`--check` is a release gate and runs in CI on every push. It cannot be satisfied by regenerating the scorecard — improving detection is the only way to raise the floor.

### What's not changing

Exit codes, CycloneDX and SPDX output formats, and every existing verdict are unchanged. Verified against the pre-release baseline: no previously-reported risk level moves in either scan mode.

Full details in [CHANGELOG.md](https://github.com/Lab700xOrg/aisbom/blob/main/CHANGELOG.md).


