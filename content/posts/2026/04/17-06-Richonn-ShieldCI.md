---
title: ShieldCI — DevSecOps Pipeline Generator
date: 2026-04-17 06:32:39 +00:00
tags:
  - Richonn
  - GitHub Actions
draft: false
repo: https://github.com/Richonn/ShieldCI
marketplace: https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator
version: v1.13.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Richonn/ShieldCI** to version **v1.13.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shieldci-devsecops-pipeline-generator) to find the latest changes.

## Action Summary

ShieldCI is a GitHub Action designed to automate the creation of secure CI/CD pipelines by detecting the project stack, generating hardened workflows tailored to the stack, and opening a pull request with the generated configurations. It addresses the need for streamlined DevSecOps integration, saving time and ensuring best practices for security and compliance in software development. Key capabilities include support for multiple programming languages, Docker/Kubernetes workflows, static analysis (SAST), secret detection, container vulnerability scanning, and SBOM generation.

## What's Changed

## Bug fixes

### Base image CVEs remediated

Updated the Docker build to resolve 3 HIGH severity vulnerabilities detected by Trivy:

- **CVE-2026-32280** — Go stdlib: chain building excessive work (fixed in Go 1.25.9)
- **CVE-2026-32282** — Go stdlib: `Root.Chmod` follows symlinks out of the root (fixed in Go 1.25.9)
- **CVE-2026-40200** — musl libc: arbitrary code execution via stack-based buffer overflow (fixed in musl 1.2.5-r11)
- **CVE-2026-28390** — OpenSSL: denial of service via NULL pointer dereference in CMS (fixed in openssl 3.3.7-r0)
- **CVE-2026-22184** — zlib: arbitrary code execution via buffer overflow in untgz utility (fixed in zlib 1.3.2-r0)

### Changes

- Builder stage bumped from `golang:1.25-alpine` to `golang:1.25.9-alpine` (pinned multi-arch digest)
- Final stage bumped from `alpine:3.19` to `alpine:3.21` (pinned multi-arch digest)
- Added `apk upgrade --no-cache` in the final stage to ensure all system packages are patched at build time regardless of the base image version
