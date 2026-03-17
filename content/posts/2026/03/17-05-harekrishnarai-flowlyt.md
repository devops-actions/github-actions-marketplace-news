---
title: Flowlyt Security Analyzer
date: 2026-03-17 05:52:38 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.0.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.0.9**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed to enhance the security of CI/CD pipelines for GitHub Actions and GitLab workflows. It automates vulnerability detection using advanced Abstract Syntax Tree (AST) analysis and AI-powered verification, reducing false positives and improving scan speed. Key features include context-aware severity adjustments, supply chain security analysis, real-time verification, and support for multiple AI providers, making it a robust solution for identifying and mitigating security risks in CI/CD processes.

## Release notes

## What's New

### Expression Taint Analysis Engine
New `ExprTaintTracker` in `pkg/analysis/ast/taint.go` understands source → transform → sink data flow for `${{ }}` expressions. Env-var indirection (`env: VAR: ${{ expr }}` + `run: echo "$VAR"`) is now correctly classified as safe, eliminating the most common injection false positive.

### 11 New Security Rules

| Rule ID | Severity | Attack Class |
|---|---|---|
| `WORKFLOW_RUN_ENV_INJECTION` | CRITICAL | workflow_run artifact → GITHUB_ENV (CVE-2025-30066 pattern) |
| `WORKFLOW_RUN_ARTIFACT_UNTRUSTED` | CRITICAL | Artifact download without run_id constraint |
| `GITHUB_ENV_UNTRUSTED_WRITE` | CRITICAL | Untrusted `${{ }}` written to `$GITHUB_ENV` |
| `MEMDUMP_EXFILTRATION_SIGNATURE` | CRITICAL | memdump.py process memory exfiltration |
| `WORKFLOW_RUN_ELEVATED_CONTEXT` | HIGH | workflow_run + write permissions + artifact download |
| `INDIRECT_PPE_BUILD_TOOL` | HIGH | Untrusted checkout + npm/pip/make/mvn/gradle |
| `OIDC_WORKFLOW_LEVEL_PERMISSION` | HIGH | `id-token: write` at workflow level exposes all jobs |
| `OIDC_WITHOUT_ENVIRONMENT_SCOPE` | MEDIUM | Job-level `id-token: write` without deployment environment |
| `CACHE_RESTORE_KEYS_TOO_BROAD` | MEDIUM | `restore-keys` without `hashFiles` enables cache poisoning |
| `CACHE_WRITE_IN_PR_WORKFLOW` | LOW | Cache write in PR workflow allows cache poisoning |

### False Positive Fixes
- **Env-var indirection** no longer flagged as `INJECTION_VULNERABILITY`
- **`pull_request_target` without checkout** (labelers, commenters) now produces no findings instead of INFO-per-job noise
- **`GITHUB_TOKEN`** in `pull_request_target` `with:` blocks no longer flagged
- **cmake** invocations no longer matched by the `make` build-tool pattern

### pull_request_target Severity Refinement
| Condition | Severity |
|---|---|
| Checkout of `head.sha` / `head.ref` | CRITICAL |
| Checkout of base branch | MEDIUM |
| No checkout | *(no finding)* |
