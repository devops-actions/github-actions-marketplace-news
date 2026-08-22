---
title: GHA OIDC Security Auditor
date: 2026-08-22 14:14:07 +00:00
tags:
  - gamesapeca
  - GitHub Actions
draft: false
repo: https://github.com/gamesapeca/gha-oidc-auditor
marketplace: https://github.com/marketplace/actions/gha-oidc-security-auditor
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action, `gha-oidc-auditor`, analyzes GitHub Actions workflows for vulnerabilities related to OpenID Connect (OIDC) authentication, including privilege leaks, injection sinks, unpinned dependencies, and insecure trigger combinations. It provides a deterministic static analysis tool with context-aware evaluation capabilities, offensive exploit chain synthesis, and automated least-privilege policy generation for AWS, GCP, Azure, HashiCorp Vault, and Kubernetes environments.
---


Version updated for **https://github.com/gamesapeca/gha-oidc-auditor** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gha-oidc-security-auditor) to find the latest changes.

## Action Summary

This GitHub Action, `gha-oidc-auditor`, analyzes GitHub Actions workflows for vulnerabilities related to OpenID Connect (OIDC) authentication, including privilege leaks, injection sinks, unpinned dependencies, and insecure trigger combinations. It provides a deterministic static analysis tool with context-aware evaluation capabilities, offensive exploit chain synthesis, and automated least-privilege policy generation for AWS, GCP, Azure, HashiCorp Vault, and Kubernetes environments.

## What's Changed

# gha-oidc-auditor v0.1.0

> **Static Security Analyzer, Cloud Trust Policy Synthesizer, Remediation-as-Code Engine & Zero-Prerequisite Exploit Chain Generator for GitHub Actions OIDC.**

`gha-oidc-auditor` is an application security posture management (ASPM) and cloud infrastructure entitlement management (CIEM) platform specifically engineered for GitHub Actions Workload Identity Federation / OpenID Connect (OIDC). It bridges the gap between CI/CD workflow security and cloud provider IAM configurations.

---

## 1. Core Capabilities & Architectural Pillars

| Capability | Scope & Functionality |
| :--- | :--- |
| **Static Security Analysis** | Deep polymorphic AST inspection of `.github/workflows` detecting supply-chain and privilege escalation flaws. |
| **Offensive Exploit Chains** | Correlates triggers, missing actor gates, execution primitives, and cloud tokens into deterministic zero-prerequisite attack chains. |
| **Least-Privilege Policy Synthesis** | Mathematical derivation of minimal `sub` and `aud` claims for AWS IAM, GCP WIF, Azure Entra ID, Vault, and Kubernetes. |
| **Remediation-as-Code (Terraform HCL)** | Direct synthesis of production-ready `.tf` modules for AWS IAM (with July 2026 numeric ID claims), GCP WIF, and Azure. |
| **Offline CIEM Trust Policy Validation** | Direct cross-audit of live cloud provider trust policies against workflow claims, detecting wildcards and scope drift. |
| **Multi-Layer Cache Engine** | L1 in-memory and L2 disk cache with SHA256 invalidation for high-scale multi-repository `workflow_call` analysis. |

---

## 2. Complete Rules Matrix (OIDC-001 through OIDC-012)

| Rule ID | Severity | Category | Description |
| :--- | :--- | :--- | :--- |
| `OIDC-001` | HIGH / MEDIUM | Overprivileged Token | Root-level `permissions: id-token: write` granting token minting to unisolated jobs. Severity scales with triggers. |
| `OIDC-002` | CRITICAL / HIGH / MEDIUM | Execution Flow Hijacking | `pull_request_target` event evaluating fork code checkouts and execution primitives against actor/environment guards. |
| `OIDC-003` | HIGH | Supply Chain Risk | Unpinned action references (`@v4`, `@main`) inside OIDC-privileged jobs allowing memory and token theft. |
| `OIDC-004` | CRITICAL / MEDIUM | Command / Code Injection | Direct interpolation of untrusted `${{ }}` expressions in shell steps. Distinguishes external attacker payloads from internal variables across `bash`, `python`, `node`, `ruby`. |
| `OIDC-005` | MEDIUM | Scope Ambiguity | Multi-cloud provider authentications (e.g. AWS + GCP) combined within a single unsegmented job. |
| `OIDC-006` | CRITICAL | Unrestricted Trigger | `workflow_run` triggers without branch filters minting OIDC tokens on untrusted branch executions. |
| `OIDC-007` | HIGH | Infrastructure Exposure | Non-ephemeral self-hosted runners executing privileged OIDC workflows on public triggers without approval gates. |
| `OIDC-008` | HIGH | Credential Leakage | OIDC-privileged jobs delegating all caller secrets to external reusable workflows via `secrets: inherit`. |
| `OIDC-009` | HIGH | Supply Chain Hardening | Mutable tag pinning on high-value supply-chain actions (e.g. `tj-actions`, `docker`, `aws-actions`), addressing the CVE-2025-30066 vector. |
| `OIDC-010` | INFO | Future-Proof Compliance | Advisory check for missing July 2026 immutable numeric IDs (`repo:org@ID/repo@ID:*`) to prevent repository name-squatting risks. |
| `OIDC-011` | CRITICAL / HIGH | Information Disclosure | Secret and OIDC token log dumping (`printenv`, `env -0`, `$ACTIONS_ID_TOKEN_REQUEST_TOKEN`) or deprecated `::set-output::` syntax. |
| `OIDC-012` | HIGH | Wildcard Trust Policy | Cloud IAM configurations with wildcard sub-claims (`repo:org/*`), exposing organization-wide blast radius. |

---

## 3. Offensive Exploit Chains (Bug Bounty Mode)

Execute with `--bounty-mode --generate-poc` to produce submission-ready reports complete with CVSS 3.1 scoring, vulnerability classifications, reproduction steps, and deterministic cloud token exfiltration commands:

* **`CHAIN-001` (Pwn-Request RCE via `pull_request_target`)** `[CWE-94 - CVSS 9.8 Critical]`
* **`CHAIN-002` (Public Trigger Shell Command Injection)** `[CWE-78 - CVSS 9.8 Critical]`
* **`CHAIN-003` (JavaScript Code Injection in `actions/github-script`)** `[CWE-94 - CVSS 9.8 Critical]`
* **`CHAIN-004` (Privilege Escalation via `workflow_run` Artifact Poisoning)** `[CWE-494 - CVSS 9.3 Critical]`
* **`CHAIN-005` (Token Write Privilege Escalation via `pull_request_target`)** `[CWE-269 - CVSS 9.1 Critical]`
* **`CHAIN-006` (Repository Secrets Exfiltration via `secrets: inherit`)** `[CWE-522 - CVSS 8.6 High]`
* **`CHAIN-007` (Runner Environment Hijacking via `$GITHUB_ENV`)** `[CWE-78 - CVSS 9.8 Critical]`
* **`CHAIN-008` (Self-Hosted Runner Infrastructure Takeover)** `[CWE-284 - CVSS 9.8 Critical]`

---

## 4. Remediation-as-Code (Terraform / OpenTofu HCL)

Synthesize complete, production-ready `.tf` modules for cloud providers:

```bash
# Output Terraform HCL to stdout
gha-oidc --path .github/workflows --generate-hcl --format hcl

# Write modular .tf files directly to your infrastructure directory
gha-oidc --path .github/workflows --generate-hcl --hcl-output ./terraform/modules/gha_oidc
```

### Generated AWS IAM OIDC Module Example (with July 2026 Immutable Format):
```hcl
data "aws_iam_policy_document" "my_service_gha_oidc_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::123456789012:oidc-provider/token.actions.githubusercontent.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values = [
        "repo:my-org/my-service:ref:refs/heads/main",
        "repo:my-org@*/my-service@*:ref:refs/heads/main" # July 2026 Immutable Numeric ID
      ]
    }
  }
}

resource "aws_iam_role" "my_service_gha_deploy_role" {
  name               = "my-service-gha-deploy"
  assume_role_policy = data.aws_iam_policy_document.my_service_gha_oidc_assume_role.json
  tags = {
    ManagedBy = "gha-oidc-auditor"
    Security  = "Least-Privilege-OIDC"
  }
}
```

---

## 5. Offline Cloud Trust Policy Verification (CIEM Mode)

Cross-audit existing live IAM trust policies against least-privilege standards:

```bash
# Verify AWS IAM Trust Relationship
gha-oidc --verify-policy aws_trust_policy.json --cloud-provider aws --repo my-org/my-service

# Verify GCP Workload Identity Pool Provider
gha-oidc --verify-policy gcp_wif_config.json --cloud-provider gcp --repo my-org/my-service
```

---

## 6. Official GitHub Action Usage

Integrate directly into CI/CD pipelines in 3 lines of YAML:

```yaml
- name: Run GHA OIDC Security Audit
  uses: gamesapeca/gha-oidc-auditor@v0.1.0
  with:
    path: .github/workflows
    fail-on: critical
```

---

## 7. Multiplatform Standalone Binaries

Every binary is cross-compiled with stripped debug symbols and verified via `checksums.txt` (SHA256):

* `gha-oidc-linux-amd64` (Linux 64-bit x86)
* `gha-oidc-linux-arm64` (Linux 64-bit ARM)
* `gha-oidc-darwin-amd64` (macOS Intel)
* `gha-oidc-darwin-arm64` (macOS Apple Silicon)
* `gha-oidc-windows-amd64.exe` (Windows 64-bit)
* `checksums.txt` (Cryptographic verification file)
