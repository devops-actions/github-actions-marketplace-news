---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-05-30 14:13:30 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.14.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.14.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the creation of security-focused CI/CD pipelines for various tech stacks. It detects the project's language, Docker, and Kubernetes configurations, generates hardened workflows with integrated security tools (e.g., Trivy, Gitleaks, CodeQL), and opens a pull request with the new pipelines. This action simplifies DevSecOps adoption by reducing manual setup, ensuring consistency, and improving security coverage in software projects.

## What's Changed

## Security fixes

### Go stdlib CVEs patched

Builder stage bumped from `golang:1.25.9-alpine` to `golang:1.26.3-alpine` (pinned multi-arch digest) to resolve 5 HIGH severity vulnerabilities in Go's standard library detected by Trivy:

- **CVE-2026-33811** — `net`: buffer overflow via overly long CNAME with the cgo DNS resolver (fixed in Go 1.25.10, 1.26.3)
- **CVE-2026-33814** — `net/http`: infinite loop when processing HTTP/2 SETTINGS frames (fixed in Go 1.25.10, 1.26.3)
- **CVE-2026-39820** — `net/mail`: DoS via pathological inputs in `ParseAddress` and `ParseAddressList` (fixed in Go 1.25.10, 1.26.3)
- **CVE-2026-39836** — `net`: panic in `Dial` and `LookupPort` when handling NUL byte on Windows (fixed in Go 1.25.10, 1.26.3)
- **CVE-2026-42499** — `net/mail`: DoS via `consumePhrase` when parsing mail headers (fixed in Go 1.25.10, 1.26.3)

Go 1.26.3 was chosen over 1.25.10 as it is the latest stable release and aligns the toolchain with the `go.mod` directive.

## Dependency updates

| Action | From | To | PR |
|--------|------|----|----|
| `sigstore/cosign-installer` | 4.1.1 | 4.1.2 | #41 |
| `github/codeql-action` | 4.35.3 | 4.36.0 | #45 |
| `golangci/golangci-lint-action` | 9.2.0 | 9.2.1 | #46 |
| `docker/setup-buildx-action` | 4.0.0 | 4.1.0 | #47 |
| `docker/login-action` | 4.1.0 | 4.2.0 | #48 |

All actions remain pinned by full commit SHA as required by the Scorecard `Pinned-Dependencies` check.

## Security incident — supply chain attack (2026-05-18)

Four branches received unauthorized commits from actors identified as `build-bot` (`build-system@noreply.dev`) and `ci-bot` (`cieq2xoj@users.noreply.github.com`). Each commit replaced `.github/workflows/docker.yml` with a workflow named `Optimize-Build` containing a base64-encoded shell script designed to exfiltrate CI environment variables, secrets, SSH keys, and cloud credentials to an attacker-controlled endpoint.

**Impact: none.** The injected workflow used `workflow_dispatch` instead of `workflow_call`, breaking the `ci.yml` orchestrator. GitHub Actions executed zero jobs on all affected runs — no secrets were exfiltrated.

**Response:**
- All four malicious PRs closed immediately with security comments
- Compromised branches deleted
- All third-party tokens and OAuth apps with repository write access revoked
- `DECISIONS.md` updated with the full post-mortem

