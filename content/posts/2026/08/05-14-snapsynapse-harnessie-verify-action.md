---
title: Harnessie Verify
date: 2026-08-05 14:50:47 +00:00
tags:
  - snapsynapse
  - GitHub Actions
draft: false
repo: https://github.com/snapsynapse/harnessie-verify-action
marketplace: https://github.com/marketplace/actions/harnessie-verify
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The harnessie-verify-action claims-by-claim verification of pull requests, automating deterministic checks against actual artifacts and providing a review interface. It solves problems related to ensuring code correctness through automated testing and reduces reliance on untrusted diffs by running verifiers in sandboxed environments. The action is powered by Harnessie and supports OpenAI-compatible endpoints for model inference, ensuring security and compliance with GitHub's protection mechanisms.
---


Version updated for **https://github.com/snapsynapse/harnessie-verify-action** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/harnessie-verify) to find the latest changes.

## Action Summary

The harnessie-verify-action claims-by-claim verification of pull requests, automating deterministic checks against actual artifacts and providing a review interface. It solves problems related to ensuring code correctness through automated testing and reduces reliance on untrusted diffs by running verifiers in sandboxed environments. The action is powered by Harnessie and supports OpenAI-compatible endpoints for model inference, ensuring security and compliance with GitHub's protection mechanisms.

## What's Changed

## What changed

- Pins the Action's tested default to the released `harnessie==0.8.0` package.
- Preserves every public input, output, and fail-closed verdict mapping.
- Extracts the `pull_request_target` refusal into one guard shared by runtime and CI.
- Replaces the previously unreachable conditional refusal job with executable unsafe-trigger and safe-trigger cases.
- Links this adapter's ownership and release boundary to Harnessie's federated ecosystem contract.

## Verification

- Pull request CI: all four Ubuntu jobs passed, including FAILED, CANNOT_VERIFY fail-closed, CANNOT_VERIFY advisory, and unsafe-trigger refusal.
- Exact merge commit CI: all four jobs passed at `7d22949b3feb86f9dd7c00634bb40a48987a1943`.
- Public package smoke: an isolated install reported Harnessie 0.8.0; metadata, import, sandbox probe, and CLI help passed.
- Local Action/YAML contract checks, shell syntax, trigger-guard adversarial cases, and `git diff --check` passed.

## Residuals

- A VERIFIED verdict still requires the consuming repository's configured verifier endpoint and key. Release CI remains intentionally offline through the mock provider.
- Local deterministic-check replication on macOS failed closed because the GitHub Action's bubblewrap setup is Linux-specific. Ubuntu release CI is the executable matrix for check-result mappings.
- GitHub currently forces `actions/checkout@v4` onto Node 24 and emits its Node 20 deprecation warning. All release jobs pass; updating that upstream CI dependency is separate maintenance.

Exact version: `snapsynapse/harnessie-verify-action@v0.1.1`

Stable major after promotion: `snapsynapse/harnessie-verify-action@v0`

