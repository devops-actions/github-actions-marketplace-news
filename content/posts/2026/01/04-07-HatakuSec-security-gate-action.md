---
title: Security Gate Action
date: 2026-01-04 07:26:23 +00:00
tags:
  - HatakuSec
  - GitHub Actions
draft: false
repo: https://github.com/HatakuSec/security-gate-action
marketplace: https://github.com/marketplace/actions/security-gate-action
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/HatakuSec/security-gate-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/security-gate-action) to find the latest changes.

## Action Summary

The **Security Gate Action** is a GitHub Action that automates security scanning for repositories by detecting vulnerabilities, misconfigurations, and security risks across areas such as secrets, dependencies, infrastructure as code (IaC), and containers. It streamlines the process of identifying and categorizing security issues, providing actionable annotations, organized findings, and optional GitHub Code Scanning integration. With its configurable and auto-detection capabilities, it simplifies security management while reducing false positives through allowlists.

## Release notes

# Security Gate Action v1.0.0

A comprehensive security scanning GitHub Action that provides multi-scanner security analysis with configurable policy enforcement.

## Features

- 🔐 **Secret Detection** - Detects 15+ secret patterns (AWS keys, GitHub tokens, API keys, etc.)
- 📦 **Dependency Scanning** - Vulnerability detection via OSV.dev API for npm, yarn, pip, and pipenv
- 🐳 **Container Security** - Dockerfile best practices and image vulnerability scanning via Trivy
- 🏗️ **Infrastructure as Code** - Terraform and Kubernetes security analysis via Trivy

## Key Capabilities

- **Configurable Thresholds** - Set severity gates (critical, high, medium, low)
- **Flexible Modes** - Audit mode for visibility, blocking mode for enforcement
- **SARIF Output** - GitHub Code Scanning integration
- **Custom Rules** - Define organization-specific secret patterns
- **Exclusions** - Path-based, CVE-based, and finding-specific exclusions
- **Monorepo Support** - Scan specific paths within large repositories

## Quick Start

```yaml
- uses: HatakuSec/security-gate-action@v1.0.0
  with:
    scanners: 'secrets,dependencies'
