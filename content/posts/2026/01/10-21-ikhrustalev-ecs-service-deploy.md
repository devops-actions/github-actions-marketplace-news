---
title: ECS Service Deploy
date: 2026-01-10 21:23:48 +00:00
tags:
  - ikhrustalev
  - GitHub Actions
draft: false
repo: https://github.com/ikhrustalev/ecs-service-deploy
marketplace: https://github.com/marketplace/actions/ecs-service-deploy
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ikhrustalev/ecs-service-deploy** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecs-service-deploy) to find the latest changes.

## Action Summary

The ECS Service Deploy GitHub Action simplifies redeploying Amazon ECS services by allowing users to trigger deployments without managing task definitions manually. It automates tasks such as forcing new deployments to pull the latest image, rolling back to specific task definitions, and scaling services during deployment. This action is ideal for lightweight redeploy scenarios, offering a faster and more straightforward alternative to full CI/CD pipelines.

## Release notes

Lightweight GitHub Action for ECS service redeployment without full task definition management.

## Features

- Force redeploy to pull `:latest` images
- Deploy specific task definition ARN (rollbacks)
- Scale service during deployment
- Optional wait for service stability

## Usage
```yaml
- uses: ikhrustalev/ecs-service-deploy@v1
  with:
    cluster_arn: arn:aws:ecs:us-east-1:123456789012:cluster/my-cluster
    service_name: my-service
```

See [README](https://github.com/ikhrustalev/ecs-service-deploy#readme) for full documentation.
