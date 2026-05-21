---
title: OSS Security Policy as Code
date: 2026-05-21 06:43:03 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v6.0.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v6.0.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## Action Summary

The "OSS Security Policy as Code Starter Kit" GitHub Action evaluates open-source software (OSS) repositories against predefined security policy profiles, integrating repository governance, CI/CD hardening, release posture, and evidence-based assurance grading. It automates the generation of detailed security reports in Markdown, JSON, and SARIF formats for manual review or CI gate enforcement, while offering framework mapping and waiver management for tailored compliance needs. This tool streamlines security policy enforcement but does not replace vulnerability scanning or serve as a legal compliance guarantee.

## What's Changed

## OSS Security Policy as Code Starter Kit v6.0.1

This release is a maintenance and supply-chain hardening release for the v6.x line: tagged releases now attach the wheel, sdist, CycloneDX SBOM, and a build-provenance bundle to the GitHub Release; the container base image is pinned by digest; Dependabot now covers Docker; and the release-readiness guardrails were realigned. No changes to the policy engine, controls, or report contracts.

---

## Highlights

- _No feature-level changes in this release._

---

## Improvements

- harden container image and clear IaC scanner gate findings
- make SARIF deep-nesting guard portable (deterministic depth pre-scan)

---

## Notes

- release 6.0.1 (#20)
- harden v6.0.1 release maturity (release assets, image digest, CI fix) (#21)
- trim repository layout
- keep release process notes local
- keep roadmap local only
- simplify README structure
- pin ruff and move remaining actions off Node 20
- accept apt-pin finding via exclude_queries (inline disable unreliable)
- drop redundant top-level read-all permissions
- apply ruff format to src, scripts, and tests
- bump sigstore/cosign-installer from 3.9.2 to 3.10.1 (#17)
- bump docker/setup-buildx-action from 3.10.0 to 3.12.0 (#16)
- bump docker/build-push-action from 6.9.0 to 6.19.2 (#15)
- bump docker/setup-qemu-action from 3.6.0 to 3.7.0 (#13)
- bump step-security/harden-runner from 2.19.0 to 2.19.3 (#14)
- deps(deps): update click requirement from <8.4,>=8.1.8 to >=8.1.8,<8.5 (#12)
- bump release-please-action v4.1.3 -> v5.0.0 (Node 24)
- use create-github-app-token client-id input (app-id deprecated)
- add releasing guide (release-please + release.yml flow)
- add release-please (version-bump PR + tag) composing with release.yml
- add OpenSSF Scorecard workflow + automated release-notes workflow

---

**License:** Apache-2.0.

