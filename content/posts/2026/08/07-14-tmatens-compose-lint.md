---
title: compose-lint
date: 2026-08-07 14:26:55 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.15.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The `compose-lint` action is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations before they reach production. It catches common security flaws such as privilege issues, network exposure, and supply-chain vulnerabilities by static analysis of the `docker-compose.yml` and `compose.yaml` files. The action provides an auto-fix feature with a dry-run option to identify potential security issues in your Docker Compose configurations.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.15.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The `compose-lint` action is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations before they reach production. It catches common security flaws such as privilege issues, network exposure, and supply-chain vulnerabilities by static analysis of the `docker-compose.yml` and `compose.yaml` files. The action provides an auto-fix feature with a dry-run option to identify potential security issues in your Docker Compose configurations.

## What's Changed


### Removed

- **Profile enrichment has been withdrawn** ([ADR-019](docs/adr/019-withdraw-security-profile-catalog.md),
  superseding ADR-017 and ADR-018). The `compose_lint.profiles` package, the
  `scripts/validate_profiles.py` validator, the `profile-validate` CI gate, the
  `profiles` config block, and `run_rules`' `profile_lookup` parameter are all
  gone — roughly 2,200 lines across source, tests and docs.

  The feature matched a service's `image:` against a catalog of csd-derived
  security profiles and appended an image-specific hint to a finding's `fix`
  text. It shipped as an opt-in experimental preview, and the automation that
  ADR-017 §7 requires before any profile may be endorsed as `validated` (issue
  #360) was never built — it depends on csd emitting the catalog schema and on a
  BPF-capable runner. compose-lint was therefore carrying a complete consumer of
  a catalog that does not exist, behind a flag whose only honest setting was off.

  **Upgrade impact is limited to configuration.** A leftover `profiles:` block in
  `.compose-lint.yml` is now simply an unrecognized top-level key: it takes the
  standard warn-and-continue path, printing a stderr warning and leaving the exit
  code unchanged, so ordinary runs keep working. Under `--strict-config` it is a
  hard error (exit 2), as any unrecognized key is. No finding, severity, exit
  code, or output format changes — enrichment was additive-only, so nothing that
  was reported before is reported differently now.

  `CL-0009` ("Security profile disabled") is **unaffected**: it covers seccomp
  and AppArmor `security_opt` settings and is unrelated to this catalog.

### Fixed

- The GitHub Action snippet in `README.md` now pins the current release.
  `publish.yml`'s `bump-marketplace-smoke-pin` job rewrote the
  `tmatens/compose-lint@<sha> # vX.Y.Z` pin only in
  `.github/workflows/marketplace-smoke.yml`, so the copy-paste snippet users
  actually take from the README stayed a release behind every time — it was
  still on v0.14.0 after v0.14.1 shipped. The job now rewrites both files,
  and the stale pin is corrected.
- `release-prep.yml` now bumps the self-referencing version pins in
  `README.md` and `docs/` as part of the version-bump commit. The
  `version-consistency` job has required those pins to match
  `pyproject.toml` since #443, but release-prep only touched
  `pyproject.toml`, `__init__.py`, and `CHANGELOG.md` — so the release PR it
  opened failed its own required check on every release and needed a
  hand-pushed fixup commit.
- The sdist no longer ships whatever happens to sit in the maintainer's
  working tree. `[tool.hatch.build.targets.sdist]` was a denylist of nine
  known paths, but hatchling ships everything the *root* `.gitignore` does
  not exclude and does not read nested `.gitignore` files — so a local
  virtualenv, which writes its own `.gitignore: *` and is therefore
  invisible to `git status`, was swept in: 158 of 445 entries, 35% of a
  3.5 MB archive, including `bin/python` as an absolute symlink into the
  build machine's filesystem. Such an archive is not merely untidy but
  unusable — uv rejects it as an invalid tar — and nothing caught it:
  `twine check` validates metadata, not contents, and `publish.yml`'s
  content guard inspects the wheel alone. The sdist target is now a
  root-anchored allowlist, and `publish.yml` gates the sdist on symlinks
  and virtualenv markers. Published artifacts were never affected: release
  builds run from a clean checkout, and the wheel packages `src/` only.

### Changed

- Documentation no longer describes auto-fixable findings as "safe". `README.md`,
  `docs/dockerhub-overview.md`, and `docs/SECURITY-EXPECTATIONS.md` said `fix`
  applies "safe, mechanical edits", which invites the reading that applying them
  is harmless. Per ADR-014 the guarantee is a property of the *edit* — one
  unambiguous value, no collateral change, still-valid YAML — not of the
  outcome: `read_only: true` and the `127.0.0.1` port rebind both change runtime
  behavior by design, and are surfaced with a `⚠ behavior-changing` caveat
  rather than withheld. The docs now say "mechanically unambiguous", state the
  edit/outcome distinction explicitly, and show the caveat line a user will see.


