---
title: Causinator 9000 CI Diagnosis
date: 2026-03-31 14:00:56 +00:00
tags:
  - sylvainsf
  - GitHub Actions
draft: false
repo: https://github.com/sylvainsf/causinator9000
marketplace: https://github.com/marketplace/actions/causinator-9000-ci-diagnosis
version: v1.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sylvainsf/causinator9000** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/causinator-9000-ci-diagnosis) to find the latest changes.

## Action Summary

The Causinator 9000 is a causal inference engine designed to identify and rank the most likely causes of infrastructure degradation by analyzing changes (mutations) and observed issues (signals) within a dependency graph. It automates root cause analysis by using Bayesian inference to compute causal probabilities, taking into account factors such as temporal proximity, dependency relationships, and resource-specific likelihoods. This enables teams to quickly pinpoint and address issues in complex, large-scale cloud environments.

## What's Changed

## v1.1.0 — Smarter CI Failure Diagnosis

Major accuracy and usability improvements to the GitHub Actions source adapter and report generator. Validated against Prometheus (75% accuracy, 312 diagnoses) and Radius.

### Highlights

- **Causal domains** — Failures are now classified into independent domains: PR, Scheduled, Manual Dispatch, and Release Validation. Scheduled/LRT test failures are no longer buried under PR noise.
- **Commit ancestry** — For scheduled and dispatch runs, C9K walks the commit history back to the last successful run, creating multiple competing causes with proper temporal decay. No more flat 88% confidence on everything.
- **Historical flaky rates** — Per-workflow pass/fail ratios calibrate the flaky-test prior. A 40%-flaky workflow gets a different diagnosis than a 5%-flaky one.
- **Full log classification** — `--fast` mode removed as default. Failure logs are downloaded and classified into specific signal types (`LintFailure`, `AzureAuthFailure`, `UnitTestFailure`, etc.) instead of generic `TestFailure`.
- **Rich reports** — Per-domain sections, linked SHAs, numbered run links, signal types, and failed step names in all tables. Every failure shows *what broke* alongside *what C9K thinks caused it*.

### New features

- `--exclude-workflow` flag to filter noisy workflows (e.g. PR checklists)
- `WorkflowConfigFailure` latent node for project-specific workflow issues
- `RunnerFailure` latent node for GitHub Actions runner/provisioning failures
- CI retrigger detection (empty commits, "retry", etc.)
- Fallback to GitHub jobs API when failure logs aren't downloadable
- `POST /api/clear` now accepts `{"clear_graph": true}` for full topology reset

### Accuracy improvements

- Azure auth patterns expanded (catches `Login to Azure` step failures)
- Flaky-test timestamp fixed — no longer resets decay clock per failure
- Commit class temporal decay half-life: 30min → 8 hours
- Cross-domain dedup prevents PR and scheduled test failures from hiding each other

### Infrastructure

- Dockerfile: fixed config not available during Rust compile stage
- Release workflow: container build + tags only (Marketplace publish via UI)

### Container

```
docker pull ghcr.io/sylvainsf/causinator9000:1.1.0
```
