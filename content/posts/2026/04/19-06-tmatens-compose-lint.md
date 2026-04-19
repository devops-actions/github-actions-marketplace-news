---
title: compose-lint
date: 2026-04-19 06:44:03 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files that identifies and flags potentially dangerous misconfigurations before they are deployed to production. It automates the process of ensuring compliance with best practices and security standards, such as those defined by OWASP and CIS, by providing opinionated, zero-configuration checks for common vulnerabilities. Key capabilities include detecting issues like insecure port bindings, improper volume mounts, and elevated container privileges, helping developers maintain secure and robust Docker Compose configurations.

## What's Changed


### Added

- Per-service rule exclusions in `.compose-lint.yml`. A rule's
  `exclude_services` key accepts either a mapping (service name →
  reason) or a list of service names. Excluded services still produce
  findings marked suppressed, with the per-service reason flowing to
  `suppression_reason` (JSON), SARIF `justification`, and the text
  formatter's `SUPPRESSED` trailer. Global `enabled: false` takes
  precedence over per-service exclusions. Unknown service names in
  `exclude_services` warn on stderr rather than erroring. Closes #5.
  See [ADR-010](docs/adr/010-per-service-rule-overrides.md).

### Changed

- v0.4 roadmap repointed from Linux package distribution to
  configuration depth and a Homebrew tap. ADR-008 deferred: no
  demand signal, and GitHub-Releases-hosted `.deb`/`.rpm` have
  strictly worse upgrade UX than pip/Docker without hosted-repo
  infrastructure.


