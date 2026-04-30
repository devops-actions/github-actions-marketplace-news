---
title: Rabbit Automation Action
date: 2026-04-30 21:53:17 +00:00
tags:
  - udx
  - GitHub Actions
draft: false
repo: https://github.com/udx/github-rabbit-action
marketplace: https://github.com/marketplace/actions/rabbit-automation-action
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/udx/github-rabbit-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rabbit-automation-action) to find the latest changes.

## Action Summary

Rabbit Automation Action is a GitHub composite action that automates the discovery and deployment of cloud infrastructure defined in YAML files within a `.rabbit/` directory, leveraging Terraform to manage resources across AWS, GCP, and Kubernetes. It simplifies infrastructure as code workflows by enabling tasks such as plan previews, automatic deployments, and environment tear-downs directly from GitHub events like PRs, pushes, and branch deletions. The action provides built-in safety checks, cloud authentication support, and seamless integration with CI/CD pipelines for streamlined infrastructure management.

## What's Changed

Declare cloud infrastructure in YAML. Deploy to AWS, GCP, and Kubernetes with `git push`.

### Features

- 24 Terraform modules across AWS (Route53, ACM, WAF, CloudFront), GCP (Cloud SQL, GKE, Networking, Monitoring, Secret Manager, Storage), and Kubernetes (Deployments, Services, Gateway Routes, HPA, PDB,
Memcached, ConfigMaps, Secrets, RBAC)
- Environment auto-detection from branch names (`production`, `staging`, `develop-*`)
- Safety guardrails — blocks manual production apply and production destroy
- PR plan comments — automatic Terraform plan summary posted to pull requests
- Deep-merge configs — YAML files in `.rabbit/` are merged by `module::id` across lifecycle directories
- Ephemeral environments — branch deletion triggers automatic `terraform destroy`
- Multi-repo support — per-repo Terraform state isolation
- Drift detection — scheduled runs detect infrastructure drift
- Slack notifications — deployment status and failure alerts

### Quick Start

```yaml
- uses: udx/github-rabbit-action@v1
  with:
    project_id: ${{ vars.GCP_PROJECT_ID }}
    gcp_auth_provider: ${{ vars.GCP_AUTH_PROVIDER }}
    gcp_service_account: ${{ vars.GCP_SERVICE_ACCOUNT }}
```

