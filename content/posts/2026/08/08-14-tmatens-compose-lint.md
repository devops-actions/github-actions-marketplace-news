---
title: compose-lint
date: 2026-08-08 14:22:19 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.15.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action is a security-focused linter for Docker Compose files that automates static analysis to catch dangerous misconfigurations. It identifies issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, and hard-coded credentials, providing auto-fixes where possible. The action solves the problem of catching vulnerabilities in Docker Compose configurations before they reach production, using OWASP and CIS benchmarks for guidance.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.15.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

This GitHub Action is a security-focused linter for Docker Compose files that automates static analysis to catch dangerous misconfigurations. It identifies issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, and hard-coded credentials, providing auto-fixes where possible. The action solves the problem of catching vulnerabilities in Docker Compose configurations before they reach production, using OWASP and CIS benchmarks for guidance.

## What's Changed


### Added

- Documentation site at <https://tmatens.github.io/compose-lint/> (issue
  #470) — the rule docs, configuration guide, severity model, hardening
  walkthrough, and State of Compose report, built by mkdocs from the same
  `docs/` markdown that `--explain` prints (single source, no duplicated
  pages) and deployed to GitHub Pages by the new `docs` workflow on every
  push to `main`. The docs toolchain is hash-pinned in
  `requirements-docs.lock` (new `docs` extra).

### Fixed

- The README's *State of Compose* report link was relative, so it 404'd in
  the PyPI rendering of the project description; it now points at the docs
  site, as do the rule-table and hardening-guide links (previously GitHub
  blob URLs).

### Changed

- CL-0007's guidance gets the same symptom → remedy treatment as CL-0006
  (issue #474): the rule doc gains a "Reading the failure" table mapping
  verbatim `Read-only file system` errors to remedies **by path type** —
  ephemeral paths to `tmpfs:`, persistent data to a named volume (never
  `tmpfs`, which silently erases it on restart), plus the masked
  `No such file or directory` symptom when the image lacks the directory.
  The finding's `fix` text carries the path-type rule and points at
  `--explain CL-0007`. Four new CI premise checks prove the busybox rows
  live, including that named volumes stay writable under `read_only`.

- The CL-0006 symptom → capability table now covers 11 mappings — added
  `NET_ADMIN`, `SYS_NICE`, `SYS_TIME`, `FOWNER`, `KILL`, and `IPC_LOCK` — and
  quotes the verbatim error messages real tools emit, captured from live
  container runs (issue #468). Every mapping is re-proven on each CI run by
  new checks in `scripts/validate_rule_premises.py` — the operation must fail
  under `cap_drop: [ALL]` (busybox wordings asserted verbatim; coreutils
  variants captured live but not CI-asserted) and succeed with only the
  mapped capability added — so an engine default change that invalidates a
  row (as Docker 20.10's `ip_unprivileged_port_start=0` did for the old
  "low ports need `NET_BIND_SERVICE`" folklore) fails CI instead of aging
  silently in the docs.

- CL-0006's fix guidance now teaches how to *determine* an image's required
  capability set instead of stopping at a `<SPECIFIC_CAP>` placeholder
  (issue #4). The finding's `fix` text gains the drop-and-observe method and
  the common `Operation not permitted` → capability mappings, and
  `docs/rules/CL-0006.md` (also served by `--explain CL-0006`) gains a full
  "Determining required capabilities" section covering the symptom→capability
  table, the `capable` BPF tool, `docker diff`, and entrypoint inspection.
  Both stress verifying *function*, not just startup: capability failures are
  often non-fatal, silently degrading a feature (e.g. DHCP device discovery
  under a dropped `NET_RAW`) while the container stays "healthy" — so review
  logs and exercise background behaviors after every change.
  Guidance-only per [ADR-019](docs/adr/019-withdraw-security-profile-catalog.md):
  no per-image capability data is bundled.


