---
title: OSS Security Policy as Code
date: 2026-06-19 07:08:57 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v8.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v8.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v8.0.0

**Breaking release.** The applicability engine and ATTESTED resolution are now **on by default**: controls for a technology a repository does not use are reported as `NOT_APPLICABLE` instead of `UNKNOWN`/`FAIL`, and verified build-provenance passes surface as `ATTESTED`. 220 controls across 56 profiles.

---

## ⚠ Breaking changes

`evaluate` / `evaluate-many` now default the **applicability engine** and **ATTESTED** resolution to **ON** (ADR-041):

- Controls for a technology the repo does not use resolve to **`NOT_APPLICABLE`** by default — Terraform/Bicep controls that were `UNKNOWN`, and GitLab/Azure/AWS pipeline-presence controls that were `FAIL`, now correctly drop out of scoring when that technology is absent.
- A control whose pass is anchored on a **verified build-provenance attestation** surfaces as **`ATTESTED`** instead of `PASS`.
- **No `PASS` is migrated and no `FAIL` is relaxed.** `reports/2.0` already enumerates all five states, so the report contract is unchanged.
- Only the CLI default flips; the programmatic `run_evaluation()` default is unchanged (off) for backward compatibility.

**Opt out for one deprecation cycle:** `--no-applicability-engine` and/or `--no-enable-attested` restore pre-v8.0.0 behavior.

## Migration

Read **[docs/v8.0.0-migration-guide.md](https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/blob/master/docs/v8.0.0-migration-guide.md)**, and measure the exact impact on your repos first:

```
python scripts/v8-applicability-impact.py --target .
```

It prints, per profile, which controls change status under the new defaults. CI consumers that branch on exact status strings should account for `NOT_APPLICABLE` / `ATTESTED` appearing by default (or pass the opt-out flags).

## Highlights

- **Applicability is first-class:** 42 file-based controls (Terraform, Bicep, GitLab CI, Azure Pipelines, AWS CodeBuild/CodePipeline) declare inspectable preconditions and resolve to `NOT_APPLICABLE` when their technology is absent (ADR-041).
- **Verified provenance → `ATTESTED`** by default, anchored on `PROV-VERIFY-061`.

## Supply chain

PyPI Trusted Publishing + registry attestations; release artifacts carry GitHub Artifact Attestations; the container image is built from the release source tree, signed with cosign keyless, and attested. Verification commands: [docs/supply-chain-verification.md](https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/blob/master/docs/supply-chain-verification.md).

---

**Install:** `pip install oss-policy-kit==8.0.0` — **License:** Apache-2.0

