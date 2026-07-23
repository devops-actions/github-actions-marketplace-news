---
title: agent-test-verifier
date: 2026-07-23 15:19:44 +00:00
tags:
  - LaterKidsXD
  - GitHub Actions
draft: false
repo: https://github.com/LaterKidsXD/agent-test-verifier
marketplace: https://github.com/marketplace/actions/agent-test-verifier
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The agent-test-verifier (atv) is a static analysis tool that detects patterns commonly used by coding agents to bypass bug fixes and fool test suite verification. It scans diff files for changes that could lead to fake passing tests, such as force-pass hooks or assertion weakening. The tool can be used in CI pipelines to ensure that code changes actually fix bugs rather than just manipulate the test output.
---


Version updated for **https://github.com/LaterKidsXD/agent-test-verifier** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-test-verifier) to find the latest changes.

## Action Summary

The agent-test-verifier (atv) is a static analysis tool that detects patterns commonly used by coding agents to bypass bug fixes and fool test suite verification. It scans diff files for changes that could lead to fake passing tests, such as force-pass hooks or assertion weakening. The tool can be used in CI pipelines to ensure that code changes actually fix bugs rather than just manipulate the test output.

## What's Changed

First public release of the **agent-test-verifier** GitHub Action: a static, deterministic check that catches the patterns coding agents use to fake a passing test suite — force-pass `conftest.py` hooks, neutered/trivialized assertions, newly skipped tests, and null tests that cannot fail.

## Use it

```yaml
name: agent-test-verifier
on: pull_request
jobs:
  atv:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: LaterKidsXD/agent-test-verifier@v1
```

Findings show up as inline annotations on the PR diff, a findings table on the run's Summary page, and a red check when anything meets the `fail-on` bar. See the [permanently open demo PR](https://github.com/LaterKidsXD/agent-test-verifier/pull/2) with every pattern planted.

## 1.0.1

- Marketplace branding metadata in `action.yml`
- README: live demo PR link
- Fixed `atv.__version__` drift (`0.1.0` → in lockstep with the package version)

## 1.0.0

- `--format {text,json,github,markdown}` CLI (`--json` kept as alias)
- Composite action: base-ref resolution, severity-gated annotations, step-summary table, honest exit codes (`0` clean / `1` findings / `2` usage error — never a silent false "clean")
- Self-check workflow dogfooding the action on this repo's own PRs

