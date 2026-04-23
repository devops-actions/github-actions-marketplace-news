---
title: Terraform Security Analysis
date: 2026-04-23 21:43:21 +00:00
tags:
  - klaus82
  - GitHub Actions
draft: false
repo: https://github.com/klaus82/copilot-security-action
marketplace: https://github.com/marketplace/actions/terraform-security-analysis
version: 1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/klaus82/copilot-security-action** to version **1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-security-analysis) to find the latest changes.

## Action Summary

The **Terraform Security Analysis Action** is a GitHub Action designed to automatically analyze changes to Terraform files in pull requests for security misconfigurations using GitHub Copilot. It generates a structured, prioritized security report covering critical areas such as IAM, network exposure, encryption, and secret management, and posts the findings as a pull request comment. This action helps teams identify and address potential security vulnerabilities in their Terraform infrastructure code early in the development lifecycle.

## What's Changed

Terraform Security Analysis Action

Automatically detects security misconfigurations in Terraform pull requests using GitHub Copilot and posts a structured, prioritized report directly as a PR comment.

### Features

- **Deep static analysis** across 10 security categories: IAM, network exposure, data encryption, public access, logging & monitoring, hardcoded secrets, Kubernetes/EKS, compute, container registry, and Terraform state backend security
- **Severity classification** — findings rated CRITICAL / HIGH / MEDIUM / LOW / INFO with concrete attack scenarios for each
- **Compliance mapping** — findings mapped to CIS AWS Foundations Benchmark, SOC 2 Type II, NIST SP 800-53, and PCI DSS where applicable
- **Ready-to-apply remediations** — every finding includes the insecure HCL snippet and a corrected replacement block
- **Smart diffing** — works on `pull_request`, `push`, and `workflow_dispatch` events; scopes analysis to changed files only
- **PR comment management** — creates a comment on first run, updates it on subsequent runs (no duplicate comments)
- **Configurable** — override the analysis directory, file limit, model, or bring a fully custom prompt

### Inputs

| Input | Default | Description |
|---|---|---|
| `github-token` | `github.token` | Token for Copilot API and PR comments |
| `terraform-directory` | `.` | Directory to scope Terraform file scanning |
| `max-files` | `10` | Max changed files to include in one analysis |
| `model` | `gpt-5` | GitHub Models model ID |
| `post-pr-comment` | `true` | Whether to post results as a PR comment |
| `custom-prompt` | — | Override the built-in security agent prompt |

### Outputs

| Output | Description |
|---|---|
| `report` | Full security report in Markdown |
| `changed-files` | Newline-separated list of analyzed files |

### Requirements

- GitHub Copilot enabled for the organization or repository
- `contents: read` and `pull-requests: write` permissions
- Checkout with `fetch-depth: 0` for pull request events
