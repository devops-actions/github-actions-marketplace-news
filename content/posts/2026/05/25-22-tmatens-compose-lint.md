---
title: compose-lint
date: 2026-05-25 22:10:33 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.12.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.12.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files that detects and flags potential misconfigurations, including privilege flaws, network exposure risks, supply chain vulnerabilities, and sensitive data leaks. It automates static analysis to ensure compliance with best practices from OWASP and the CIS Docker Benchmark, helping teams identify and fix issues in their `docker-compose.yml` files before deployment. The tool is designed to enhance container security, prevent critical vulnerabilities, and integrate seamlessly into CI pipelines for proactive infrastructure-as-code checks.

## What's Changed


### Added

- The `init` subcommand generates a starter `.compose-lint.yml` from a Compose
  file's findings (ADR-011). Each finding becomes a per-service
  `exclude_services` entry with a placeholder reason for triage — never a global
  `enabled: false`, so a service added later still trips the rule. All
  severities are emitted and annotated; it writes `.compose-lint.yml` in the
  current directory by default (`-o PATH` to override), refuses to overwrite an
  existing config without `--force`, writes nothing for a clean file, and sends
  status to stderr. Takes a single `FILE`. Bare `compose-lint <file>` and
  `compose-lint check` are unaffected.

- CL-0022 flags `tmpfs:` mounts that omit `noexec`, `nosuid`, or `nodev`
  (MEDIUM). A writable, executable in-memory mount is a payload-staging surface,
  especially under `read_only: true` where tmpfs is often the only writable
  path. Covers the short string/list `tmpfs:` form (the long `volumes:` form
  can't express these flags through Compose); the message names the missing
  flags. `compose-lint fix` appends them in place, preserving existing options
  like `size=`, with a caveat that `noexec` is behavior-changing.

- CL-0023 flags services that enable an escape-adjacent `net.*` sysctl —
  `ip_forward`, IPv6 `forwarding`, `accept_source_route`, and ICMP
  `accept_redirects`/`send_redirects` (MEDIUM). Enabling these turns the
  container into a network pivot, most acutely with host networking (CL-0008)
  or multiple networks. Handles the map and list `sysctls:` forms; a value of
  `0` and unlisted sysctls are not flagged. No auto-fix — the parameter is set
  deliberately when present, so removal is left to manual review.

### Changed

- CL-0011 now flags the `PERFMON` capability (HIGH), completing the pair split
  out of `SYS_ADMIN` in Linux 5.8 (`BPF` shipped in 0.10.0). A service with
  `cap_add: [PERFMON]` that previously passed will now report a finding.


