---
title: compose-lint
date: 2026-05-24 14:16:24 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.9.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files that identifies and flags potentially dangerous misconfigurations, such as privilege flaws, network exposures, supply chain risks, and sensitive data leaks. Grounded in the OWASP Docker Security Cheat Sheet and CIS Docker Benchmark, it automates static analysis to catch security issues in `docker-compose.yml` files during CI pipelines, helping ensure safe and secure deployment to production environments. Its key capabilities include detecting unpinned images, wildcard port bindings, and other critical vulnerabilities, providing a streamlined and zero-configuration solution for improving Docker Compose security.

## What's Changed


### Added

- **Experimental `fix` subcommand** (ADR-014) that auto-remediates the
  mechanically-safe findings — CL-0003, CL-0005, CL-0007, CL-0009,
  CL-0014, and CL-0015. Dry-run by default (prints a unified diff and
  flags behavior-changing edits); `--apply` writes fixes in place;
  `--only` restricts to named rules; `.compose-lint.yml` suppressions are
  honored; and SARIF output can carry the edits as `fixes[]`. It is
  reachable without `COMPOSE_LINT_EXPERIMENTAL` but stays hidden from
  `--help`, prints an experimental warning on every run, and is excluded
  from the SemVer contract until promoted.
  (#246, #247, #250, #251, #253, #255, #260, #263, #264, #265, #266,
  #267, #268, #269, #270)
- `check` as an explicit subcommand, with the CLI routed through argparse
  subcommands; bare `compose-lint <file>` still works as an implicit
  `check`, and `--explain CL-XXXX` prints a rule's documentation
  (ADR-011). (#248)
- `skip-suppressed`, `quiet`, and `verbose` inputs on the GitHub Action,
  mirroring the CLI flags. (#258)
- A published compatibility and stability policy
  (`docs/compatibility.md`) documenting what SemVer does and does not
  cover, including the JSON `version` field. (#254)

### Changed

- **Breaking (JSON consumers):** `--format json` is now a versioned
  envelope — an object with `version`, `tool`, `findings`, and `errors`
  — instead of a bare findings array. Read findings from `.findings`, and
  `.version` for the schema (ADR-015). (#252)
- `--explain` is rejected when combined with `--format json` or
  `--format sarif`, which produced meaningless output. (#257)
- CIS Docker Benchmark rule citations re-grounded to v1.7.0 and
  corrected — e.g. CL-0015 now cites 5.26 (was 5.27) and CL-0019 drops a
  miscited 5.27. (#249, #256)


