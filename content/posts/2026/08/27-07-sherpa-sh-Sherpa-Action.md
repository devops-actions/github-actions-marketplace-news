---
title: Sherpa.sh
date: 2026-08-27 07:50:11 +00:00
tags:
  - sherpa-sh
  - GitHub Actions
draft: false
repo: https://github.com/sherpa-sh/Sherpa-Action
marketplace: https://github.com/marketplace/actions/sherpa-sh
version: v1.0.0-alpha.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Sherpa.sh is an AI-driven platform that automates the deployment of applications across various cloud providers by understanding developers' intent through natural language prompts. It simplifies infrastructure management, allowing developers to focus on their code without needing technical expertise in YAML or DevOps. The action can be integrated into GitHub Actions and Claude Code for seamless deployment workflows.
---


Version updated for **https://github.com/sherpa-sh/Sherpa-Action** to version **v1.0.0-alpha.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sherpa-sh) to find the latest changes.

## Action Summary

Sherpa.sh is an AI-driven platform that automates the deployment of applications across various cloud providers by understanding developers' intent through natural language prompts. It simplifies infrastructure management, allowing developers to focus on their code without needing technical expertise in YAML or DevOps. The action can be integrated into GitHub Actions and Claude Code for seamless deployment workflows.

## What's Changed

 AI-powered deployments in plain English

  Sherpa transforms any cloud provider into a deployment platform. Just describe what you want and let the AI handle the infrastructure.

  prompt: "Deploy my Next.js app on AWS Lambda with CloudFront CDN"

  ## Highlights

  - **Plain English Infrastructure** - No YAML configs, no Terraform, no DevOps expertise required
  - **Multi-Cloud** - AWS and Cloudflare supported, with more providers coming
  - **GitHub Actions Integration** - Push-to-deploy workflows with memory persistence
  - **Claude Code CLI Support** - Test locally before committing

  ## Supported Features

  | Category | Status |
  |----------|--------|
  | Next.js deployments | ✅ |
  | Static site hosting | ✅ |
  | Serverless functions | ✅ |
  | VM provisioning (EC2) | ✅ |
  | SSL certificates | ✅ |
  | CDN configuration | Partial |

  ## Quick Start

  ```yaml
  - uses: sherpa-sh/sherpa-action@v1.0.0-alpha
    with:
      anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
      prompt: "Deploy my app to Cloudflare"
    env:
      CLOUDFLARE_API_TOKEN: ${{ secrets.CLOUDFLARE_API_TOKEN }}

  Alpha Notice

  This is an early release. Expect breaking changes and rough edges. We'd love your feedback—please https://github.com/sherpa-sh/sherpa-action/issues or https://discord.com/invite/Pn7N2Wwbjy.
