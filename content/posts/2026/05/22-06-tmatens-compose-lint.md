---
title: compose-lint
date: 2026-05-22 06:30:05 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.7.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.7.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The **compose-lint** GitHub Action performs static analysis on `docker-compose.yml` and `compose.yaml` files to identify and prevent security misconfigurations before deployment. It automates the detection of risks such as privileged containers, unpinned images, network exposure, sensitive bind mounts, and plaintext credentials, helping users enhance the security of their containerized applications. This tool is designed for CI pipelines, offering a fast, zero-configuration solution grounded in established security best practices like the OWASP Docker Security Cheat Sheet and CIS Docker Benchmark.

## What's Changed


### Added

- `GOVERNANCE.md`, `MAINTAINERS.md`, `docs/ASSURANCE.md`,
  `docs/SECURITY-EXPECTATIONS.md`, and `docs/CONTINUITY.md` documenting
  the project's governance model, single-page assurance case (threat
  model, trust boundaries, mitigations), user-facing security promises,
  and continuity-of-access plan. Closes the OpenSSF Silver
  `governance`, `roles_responsibilities`, `documentation_security`,
  `assurance_case`, and `access_continuity` criteria. (#202)
- Statement coverage gate at >=80% (new `coverage` CI job; thresholds
  configured in `pyproject.toml [tool.coverage.report]` and duplicated
  at the workflow level). Closes the OpenSSF Silver
  `test_statement_coverage80` criterion. (#202)
- `docs/state-of-compose.md` canonical landing page for the forthcoming
  State of Compose security report. README and corpus tooling already
  reference this path. (#210)

### Changed

- Corpus pipeline scripts (`fetch`, `retier`, `enrich`, `run`, and the
  per-tier fetchers) now live in-repo under `scripts/corpus/` so the
  State of Compose numbers are reproducible from a clean checkout. The
  corpus cache stays at `~/.cache/compose-lint-corpus/` and remains
  outside git — the repo never accumulates third-party Compose files.
  (#206)
- Corpus pipeline now classifies parse-error stderr into stable buckets
  (`missing-services-key`, `services-not-mapping`, `service-not-mapping`,
  `top-level-not-mapping`, `empty-file`, `invalid-yaml`, `other`) and
  emits a per-tier × class matrix alongside the existing rule tables.
  `scripts/corpus/README.md` documents the longtail sampling design and
  its four known biases (GH-search ranking, single-source, filename-
  pinned, public-only). (#209)

### Security

- Release tags must now cryptographically verify against
  `.github/allowed_signers` before any publish step runs. The new third
  check in `publish.yml`'s `verify-tag` job runs `git verify-tag` with
  the maintainer's authorized SSH signing key; an attacker who pushed
  a tag from a stolen GitHub credential can no longer trigger a
  release. Closes the OpenSSF Silver `version_tags_signed` criterion.
  (#202)
- Dropped `--ignore-vuln CVE-2026-3219` from CI `pip-audit`. pip 26.1.1
  fixes both CVE-2026-3219 and CVE-2026-6357; `pip-audit --skip-editable`
  against the regenerated `requirements-dev.lock` reports no known
  vulnerabilities. pip is dev-only here (transitive of `pip-audit`) and
  is stripped from the runtime container image; the OpenVEX statements
  for the published image are unaffected. (#208)
- Dockerfile build stage now upgrades the venv-seeded pip to the latest
  release before stripping pip's code from the runtime image. The
  retained `.dist-info` metadata now reports a patched version, so
  Docker Scout reports genuine remediation (not just `not_affected`)
  for CVE-2025-8869, CVE-2026-1703, and CVE-2026-6357. CVE-2026-3219
  has no upstream fix and stays VEX-covered. (#217)
- OpenVEX document (v4) adds a fourth `not_affected` statement covering
  CVE-2026-6357 with the same `vulnerable_code_not_present`
  justification used for the other pip CVEs, and drops the `@25.1.1`
  pin from every pip subcomponent PURL. The mitigation is
  version-independent — pip's executable code is removed at build time
  regardless of which pip the build seeds — so the statements continue
  matching after the bundled-pip upgrade in #217. (#216)
- urllib3 bumped to 2.7.0 in `requirements-dev.lock` for CVE-2026-44431
  and CVE-2026-44432. urllib3 is a transitive dev/publish dependency
  only (via `id`, `requests`, `tuf`, `twine`); the runtime package
  depends only on PyYAML, so published-package users are unaffected.
  (#214)
- idna bumped to 3.15 in `requirements-dev.lock` for CVE-2026-45409,
  and `pip-audit` now ignores the disputed `PYSEC-2025-183` advisory
  against pyjwt 2.12.1 (the pyjwt maintainers dispute it because JWT
  signing key length is chosen by the consuming application, not the
  library; no fix version exists). Both packages are dev/publish
  transitives; the runtime image is unaffected. (#224)


