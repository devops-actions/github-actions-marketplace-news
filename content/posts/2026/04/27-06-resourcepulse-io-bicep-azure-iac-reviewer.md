---
title: Azure IaC Reviewer
date: 2026-04-27 06:36:23 +00:00
tags:
  - resourcepulse-io
  - GitHub Actions
draft: false
repo: https://github.com/resourcepulse-io/bicep-azure-iac-reviewer
marketplace: https://github.com/marketplace/actions/azure-iac-reviewer
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/resourcepulse-io/bicep-azure-iac-reviewer** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/azure-iac-reviewer) to find the latest changes.

## Action Summary

ResourcePulse — Bicep IaC Reviewer is a GitHub Action designed to analyze Azure Bicep files in pull requests, providing automated cost impact estimates and best-practice findings. It helps developers optimize infrastructure as code by identifying potential cost changes, missing tags, and configuration improvements. The action operates securely by anonymizing resource metadata and offers scalable access plans, including a free option requiring no signup.

## What's Changed

The first public release. Drop this action into any repo and every pull
  request that touches a `.bicep` or `.bicepparam` file gets an automated
  review — cost estimate, SKU recommendations, and policy checks — posted
  straight to the PR. No Azure credentials, no setup wizard, no account
  required to get started.

  ### What it does

  **💰 Real cost estimates, not guesses.**
  Every PR shows the monthly cost delta of your IaC changes, broken down per
  resource and per region, sourced from the live Azure Retail Prices API.

<img width="800" height="415" alt="cropA_hero_proof" src="https://github.com/user-attachments/assets/9cac68a1-79a3-434a-9bdc-39a273e856a9" />

  **🧠 Smart SKU suggestions.**
  The reviewer scans your diff and surfaces newer-generation and cheaper
  alternatives, with a one-line rationale for each option so you can decide
  in seconds.

<img width="815" height="498" alt="image" src="https://github.com/user-attachments/assets/f4fe7b58-12fc-4816-86f3-25e9d428382d" />

  **🛡️  Policy guardrails.**
  Configure named policies in the dashboard — allowed regions, required tags,
  forbidden SKUs, cost thresholds — and assign them to repos. Violations show
  up as PR findings.

<img width="808" height="193" alt="image" src="https://github.com/user-attachments/assets/3db3d36b-55a7-4ab2-b4d6-8a5fcdc4757c" />

  **✏️  Update-in-place comments.**
  Push a new commit and the existing comment updates. No PR comment spam.

  **🔍 Resource-level diffing.**
  Only the resources you actually changed are analyzed and shown. Adds,
  removals, and SKU swaps are called out clearly.

 ### Try it in 30 seconds

      name: Azure IaC Review
      on:
        pull_request:
          paths:
            - '**/*.bicep'
            - '**/*.bicepparam'

      permissions:
        contents: read
        pull-requests: write

      jobs:
        review:
          runs-on: ubuntu-latest
          steps:
            - uses: actions/checkout@v4
            - uses: resourcepulse-io/azure-iac-reviewer@v1
              with:
                param_file: infra/params/main.bicepparam
              env:
                GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

  That's it. Open a PR that changes a Bicep file and the comment will appear.

  ### Tiers

  |                                      | Free (no API key) | Starter | Team |
  |--------------------------------------|:-----------------:|:-------:|:----:|
  | Cost estimates                       | ✅                | ✅      | ✅   |
  | Resource diffing                     | ✅                | ✅      | ✅   |
  | Multi-region pricing                 | —                 | ✅      | ✅   |
  | Rulesets                             | —                 | ✅      | ✅   |
  | SKU opportunities (AI)               | —                 | ✅      | ✅   |
  | Currency selection                   | —                 | ✅      | ✅   |
  | Org policies & per-repo enforcement  | —                 | —       | ✅   |

  **Free** gets you cost estimates on every PR.
  **Starter** adds best-practice rulesets, SKU recommendations, multi-region pricing, and currency selection.
  **Team** adds named policies, per-repo enforcement, and required tag rules.

  Pick a plan at [resourcepulseapp.com/pricing](https://www.resourcepulseapp.com/pricing).

  ### Inputs

  | Input | Required | Description |
  |---|---|---|
  | `param_file` | no | Path to a `.bicepparam` file used to resolve regions and parameters |
  | `main_region` | no | Fallback region when no param file is supplied |
  | `api_key` | no | Unlocks Starter/Team features (rulesets, SKU suggestions, multi-region pricing, policies) |
  | `comment_mode` | no | `update` (default) or `new` |
  | `env` | no | Environment hint for env-scoped policies (e.g. `prod`) |

  ### Supported resources

  Cost estimation works today for the most common Azure services: Virtual
  Machines, App Service, Functions, Container Apps, AKS, Storage, SQL Database,
  PostgreSQL, Cosmos DB, Redis, API Management, Container Registry, Key Vault,
  Application Insights, and Service Bus. More on the way.

  ### Links

  - 🌐 Dashboard & docs: <https://www.resourcepulseapp.com>
  - 🐛 Issues & feedback: <https://github.com/resourcepulse-io/azure-iac-reviewer/issues>
  - 💬 Found a mispriced SKU or a missing resource type? Open an issue — we
    read every one.

  Thanks for trying it out. This is v1 — it'll get sharper fast.
