---
title: compose-lint
date: 2026-07-29 06:34:32 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.14.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  **Purpose and Functionality:**
  
  compose-lint is a security-focused linter for Docker Compose files. It detects dangerous misconfigurations that can lead to vulnerabilities, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more.
  
  **Solves Problems and Automates Tasks:**
  
  - **Identifies Security Flaws:** compose-lint scans Docker Compose files to catch security issues before they reach production.
  - **Defenses In Depth:** It helps organizations ensure their infrastructure is secure by catching common vulnerabilities early in the development process.
  - **Pre-Merge Gates:** The tool provides a fast pre-merge gate on infrastructure-as-code, helping maintain security across the entire development pipeline.
  
  **Key Capabilities:**
  
  - **Static Analysis:** Performs static analysis to detect issues within Docker Compose files.
  - **Comprehensive Ruleset:** Checks for a wide range of security vulnerabilities according to OWASP and CIS standards.
  - **Docker-Compatible:** Supports both `docker-compose.yml` and `compose.yaml` formats, ensuring compatibility with various projects.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.14.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**Purpose and Functionality:**

compose-lint is a security-focused linter for Docker Compose files. It detects dangerous misconfigurations that can lead to vulnerabilities, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more.

**Solves Problems and Automates Tasks:**

- **Identifies Security Flaws:** compose-lint scans Docker Compose files to catch security issues before they reach production.
- **Defenses In Depth:** It helps organizations ensure their infrastructure is secure by catching common vulnerabilities early in the development process.
- **Pre-Merge Gates:** The tool provides a fast pre-merge gate on infrastructure-as-code, helping maintain security across the entire development pipeline.

**Key Capabilities:**

- **Static Analysis:** Performs static analysis to detect issues within Docker Compose files.
- **Comprehensive Ruleset:** Checks for a wide range of security vulnerabilities according to OWASP and CIS standards.
- **Docker-Compatible:** Supports both `docker-compose.yml` and `compose.yaml` formats, ensuring compatibility with various projects.

## What's Changed


### Added

- **Profile schema 1.6: optional per-dimension `derivation.features` — the
  feature ledger.** A drop-test proves the minimum only for what its correctness
  check exercises; the ledger records, as structured data instead of criteria-doc
  prose, which of the image's *privilege-relevant* features the workload did
  (`driven: true` + evidence) and did not (`driven: false` + the honest reason)
  drive. Human-authored, bounded by asking "what is each requested privilege
  FOR?" (1–3 entries per image in practice). Opt-in evidence, not a tax: with no
  ledger a profile's workload-coverage claim simply stays `partial` (ADR-018).
  Optional and additive — all 1.0–1.5 documents remain valid. See ADR-017 §13.
- **Profile schema 1.5: optional top-level `reference_url`.** An HTTPS link to the
  profile's rendered, human-readable page — the full derivation context (evidence
  table, invocation, criteria prose, provenance) that a one-line enrichment hint
  cannot carry. When present, enrichment surfaces it on the enriched finding's
  `references` (first, so the text formatter's `ref:` line shows the image-specific
  page rather than the rule's generic citation; JSON carries all references). The
  reference catalog publishes these pages at
  [tmatens.github.io/container-security-profiles](https://tmatens.github.io/container-security-profiles/).
  Optional and additive — all 1.0–1.4 documents remain valid. See ADR-017 §12.

- **Profile schema 1.4: optional `derivation.run_config.sysctls`.** Records the
  kernel sysctl posture a *posture-dependent* capability minimum was derived under.
  The canonical case is `net.ipv4.ip_unprivileged_port_start`: Docker defaults it
  to 0 (all ports unprivileged, so a low-port bind needs no cap and NET_BIND_SERVICE
  reads falsely-removable), while the kernel default of 1024 makes the cap required —
  the "works on my Docker, breaks in k8s" divergence. csd already pins the hardened
  posture and emits the `sysctls` list; this field lets the published profile state
  which posture its minimum assumes, so a consumer can reconcile against their own
  runtime instead of guessing. Optional and additive — all 1.0–1.3 documents remain
  valid; absent/empty means no sysctl was pinned. See ADR-017 §11.
- **`check --strict-config` / `fix --strict-config`.** Opt-in strict mode that
  turns config diagnostics that are normally stderr warnings — an unknown or
  typo'd rule id (`CL-001` vs `CL-0001`), an unknown top-level or per-rule key,
  an unknown `profiles` key — into hard errors (exit 2). Without it, a malformed
  config's warning can be lost in a redirect and silently disable the wrong rule;
  strict mode fails the run loudly instead. Default behavior is unchanged.

### Fixed

- **`check --format sarif` and `fix` no longer abort a batch when a file becomes
  unreadable mid-run.** Both re-read the source after parsing (for SARIF fix
  edits / to apply fixes); if the file was deleted, unmounted, or had its
  permissions changed between the parse and that second read, the `OSError` is
  now recorded per-file and the scan continues to the remaining files instead of
  crashing the whole run.


