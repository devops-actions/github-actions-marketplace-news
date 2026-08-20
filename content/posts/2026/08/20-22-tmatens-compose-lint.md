---
title: compose-lint
date: 2026-08-20 22:33:18 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.21.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  **Purpose and Functionality**: `compose-lint` is a security-focused linter for Docker Compose files that detects and fixes dangerous misconfigurations in CI pipelines. It automates security checks, catches common vulnerabilities such as privilege flaws, network exposure, supply-chain issues, file leaks, and credential leaks.
  
  **Problems Solved or Tasks Automated**: The action helps organizations identify and mitigate security risks in their Docker Compose configurations before they are deployed to production. By catching these issues early, it ensures that only compliant configurations reach the deployment stage, thus improving overall security and compliance with best practices.
  
  **Key Capabilities**: `compose-lint` provides static analysis for `docker-compose.yml` files, offering rule documentation offline via a web interface (`tmatens.github.io/compose-lint`). It supports full rule sets grounded in OWASP standards and the CIS Docker Benchmark. The action can be run locally or as part of CI workflows, providing real-time feedback on security issues found.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.21.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**Purpose and Functionality**: `compose-lint` is a security-focused linter for Docker Compose files that detects and fixes dangerous misconfigurations in CI pipelines. It automates security checks, catches common vulnerabilities such as privilege flaws, network exposure, supply-chain issues, file leaks, and credential leaks.

**Problems Solved or Tasks Automated**: The action helps organizations identify and mitigate security risks in their Docker Compose configurations before they are deployed to production. By catching these issues early, it ensures that only compliant configurations reach the deployment stage, thus improving overall security and compliance with best practices.

**Key Capabilities**: `compose-lint` provides static analysis for `docker-compose.yml` files, offering rule documentation offline via a web interface (`tmatens.github.io/compose-lint`). It supports full rule sets grounded in OWASP standards and the CIS Docker Benchmark. The action can be run locally or as part of CI workflows, providing real-time feedback on security issues found.

## What's Changed


### Upgrading from 0.20.x

**SARIF consumers: your Code Scanning alerts will be re-keyed once.** The
`partialFingerprints` key moves from `composeLintFinding/v1` to `/v2`, and
the digest no longer includes the finding's message. On the first upload
after upgrading, GitHub closes every existing compose-lint alert and opens a
replacement — dismissal state on those alerts is lost. This happens once.

The reason is that v1 made prose part of the alert's identity: rewording any
rule message silently closed and reopened every matching alert in every
consuming repository, so improving a message was a breaking change with no
warning. Identity is now structured data (file, rule, service, and the
specific offending value), and message text is free to change (ADR-024).

Nothing to do beyond expecting the one-time churn. If you dismiss alerts,
re-dismiss after the first post-upgrade scan.

### Added

- **SARIF results now name the service.** A finding carries the service as a
  `logicalLocation` (`services.<name>`) and names it in the alert title.
  Previously SARIF results carried only rule, file and line, so a Code
  Scanning user disambiguated a multi-service file by line number while a
  terminal user was told the service outright — even though the service was
  already part of the alert's fingerprint.

- **`check` and `fix` now say when no config was in effect.** A run that
  reports findings — or a `fix` that has changes to make — with no
  `.compose-lint.yml` found and none passed via `--config` prints a one-line
  note on stderr naming the directory it looked in. This is aimed at the
  Docker case: the image's working directory is `/src`, so a run that mounts
  only the compose file leaves the config outside the container and silently
  drops every suppression. Passing runs, and runs that found a config, stay
  quiet.

### Changed

- **SARIF alert identity no longer includes the finding's message.** The
  `partialFingerprints` key moves from `composeLintFinding/v1` to `/v2`, and
  the digest is now `[uri, rule_id, service, evidence]` rather than
  `[uri, rule_id, service, message]`. `evidence` is a new internal field
  holding the specific offending value in normalized form, so a rule that
  fires more than once for one service still distinguishes its hits without
  making prose part of the alert's identity (ADR-024). See Upgrading above
  for the one-time re-key.

- **The published image moves to a newer distroless base.**
  `gcr.io/distroless/python3-debian13:nonroot` is repinned from
  `sha256:eff0a605…` to `sha256:4376456c…`, picking up the base image's own
  updates. This landed after `release-prep` snapshotted the changelog but
  before the tag, so it shipped in the 0.21.0 image without being recorded
  here at the time.

### Fixed

- **CL-0005 now flags `::ffff:0.0.0.0` on every supported interpreter.** The
  IPv4-mapped spelling of the unspecified address was classified by
  `ipaddress.is_unspecified`, whose handling of IPv4-mapped addresses varies
  with the CPython build — so a port published on all interfaces was reported
  on some hosts and missed on others, with no way for a user to tell which
  they had. The mapping is now unwrapped explicitly. A compose file binding
  `[::ffff:0.0.0.0]` that previously passed on macOS or Windows will now
  correctly report CL-0005.
- **GitHub Action: installing a just-released version no longer fails on
  PyPI index lag.** PyPI's JSON API sees a release within seconds of the
  publish, but the `/simple/` index pip resolves against can lag it by
  minutes — so `uses: tmatens/compose-lint@<sha>` pinned to a version
  released moments earlier could fail with "No matching distribution
  found". The action's install now retries with backoff for ~100s, and
  says so if it gives up instead of leaving a bare non-zero exit.


