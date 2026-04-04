---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-04 21:40:20 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.12.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the creation of robust CI/CD DevSecOps pipelines by detecting the project's tech stack, generating appropriate workflows, and opening a pull request with the changes. It simplifies the process of implementing security and quality assurance measures by integrating tools for static analysis (SAST), secret scanning, vulnerability assessments, and more. This action helps teams quickly adopt best practices for secure and efficient software delivery.

## What's Changed

## What's new

### Governance and community files

Three new files establish the project's governance structure:

- **`GOVERNANCE.md`** — documents the project roles, decision-making process, and continuity
  measures (MIT license, public registry artifacts, self-contained repo)
- **`CODE_OF_CONDUCT.md`** — Contributor Covenant 2.1 adopted as the project code of conduct
- **`DECISIONS.md`** expanded with an architecture overview (component structure, data flow,
  trust boundaries) and a formal assurance case (threat model, secure design principles,
  common CWEs countered)

### DCO enforcement

All commits must now include a `Signed-off-by` line (`git commit -s`), asserting legal
authorization to contribute under the MIT license per the
[Developer Certificate of Origin v1.1](https://developercertificate.org/).

A new `dco.yml` reusable workflow checks for the sign-off on every push and PR,
called from `ci.yml` alongside the existing lint, test, and security jobs.

### Cosign image signing

ShieldCI's own Docker image is now signed with
[Cosign](https://github.com/sigstore/cosign) in keyless mode (GitHub OIDC) immediately
after each build. The signature is stored in the public Rekor transparency log.

This makes the Signed-Releases check in OpenSSF Scorecard detectable directly on the
registry, in addition to the existing SLSA Level 3 provenance.

### Scorecard publishing

The `scorecard.yml` workflow now sets `publish_results: true`, sending results to the
public [securityscorecards.dev](https://securityscorecards.dev) API. The live Scorecard
badge in the README now reflects the current project score.

### SBOM attached to GitHub Releases

The `sbom.yml` workflow now triggers on published releases in addition to pushes to main.
The Syft-generated SBOM is automatically attached as a downloadable asset to each GitHub
Release.

### CI coverage reporting

`test.yml` now runs with `-coverprofile` and reports statement coverage for the core
packages (`detect`, `generate`) in the CI summary on every run.

### Contributing documentation

`CONTRIBUTING.md` updated with:
- DCO sign-off requirement and instructions
- Explicit coding standards (gofmt, golangci-lint, Effective Go)
- Developer quick setup section (`go test`, `go build`, `act`)

