---
title: OSS Security Policy as Code
date: 2026-08-25 06:11:25 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v10.0.17
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action evaluates OSS repositories against security policies and generates reports. It provides detailed evidence-based control verifications with a focus on assurance levels, helping developers ensure their projects meet security requirements before merging.
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v10.0.17**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

This GitHub Action evaluates OSS repositories against security policies and generates reports. It provides detailed evidence-based control verifications with a focus on assurance levels, helping developers ensure their projects meet security requirements before merging.

## What's Changed

## OSS Security Policy as Code Starter Kit v10.0.17

Dependency and pipeline hygiene. **No product behaviour changes** -- no control,
report, schema, CLI flag or exit code moved. If you upgrade from v10.0.16, your
verdicts will be identical.

---

## Highlights

- **github/codeql-action to v4.37.7 and step-security/harden-runner to v2.21.0.**
  Dependabot had split the codeql bump across four pull requests, one per
  sub-action of the same repository, every one of them editing the same workflow
  file. Merging any single one left the workflow running mixed versions of the
  same action, which is why that split had never gone green on its own here.
  They move together, and both pinned SHAs were verified against their upstream
  tags rather than accepted on the bot's word.
- **The same pins had drifted everywhere Dependabot does not look:** the
  reference templates, the hardened example fixture, and the Action
  documentation. Six occurrences, and nothing in the repository would have
  reported them. The hardened example still scores 14 of 14.
- **The gitpage build guard no longer blocks routine bumps.** It asserted three
  literal version strings, so every patch bump failed until somebody hand-edited
  the test -- and the practical result was that the bumps sat open, which is
  worse than the drift it was written to prevent.

---

## Improvements

- `ci(deps)`: bump codeql-action to v4.37.7 and harden-runner to v2.21.0
- `ci(deps)`: carry the action bumps into the templates, example and docs
- `deps`: bump ruff from 0.16.1 to 0.16.4
- `deps`: bump esbuild from 0.28.1 to 0.28.2 in gitpage
- `test(gitpage)`: hold the build pins by property instead of by literal version

---

## Notes

- The gitpage guard now requires the declared range to be a caret on an exact
  version, the lockfile to resolve to that same version, Tailwind to stay on
  major 4, and esbuild to stay on 0.28. Comparing the declaration against the
  lockfile is a stronger reproducibility check than comparing both to a
  constant, and the Tailwind boundary is the incident the guard was born from.
- `templates/workflows/security.yml` and
  `templates/workflows/oss-policy-kit-marketplace-action.yml` are reference
  copies in the repository, not package data. The wheel carries only the three
  `github-oss-policy-check` templates, which already used the new pins, so
  `init --with-workflow` is unaffected by that part of this release.
- The container image was rebuilt from an unchanged Dockerfile. Its contents
  are the same as v10.0.16 apart from the kit version itself.

---

**License:** Apache-2.0.

