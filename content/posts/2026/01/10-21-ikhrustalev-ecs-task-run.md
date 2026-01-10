---
title: ECS Task Run
date: 2026-01-10 21:23:45 +00:00
tags:
  - ikhrustalev
  - GitHub Actions
draft: false
repo: https://github.com/ikhrustalev/ecs-task-run
marketplace: https://github.com/marketplace/actions/ecs-task-run
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ikhrustalev/ecs-task-run** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecs-task-run) to find the latest changes.

## Action Summary

The "ECS Task Run" GitHub Action allows users to run one-off tasks on Amazon ECS by reusing the configuration of an existing ECS service. It simplifies running ad-hoc commands, such as database migrations or health checks, by automating the setup of task definitions, network configurations, and launch types. Key features include real-time CloudWatch log streaming, timeout management, and failure detection based on task exit codes.

## Release notes

Run one-off ECS tasks using configuration from an existing service. Perfect for migrations, scripts, and ad-hoc commands.

## Features

- Inherits task definition, networking, and launch type from existing service
- Real-time CloudWatch log streaming in GitHub Actions output
- Timeout support with automatic task termination
- Shell wrapper options (sh, bash, or direct execution)
- Exit code propagation — fails workflow if task fails
- Fire-and-forget mode for async tasks

## Usage
```yaml
- uses: ikhrustalev/ecs-task-run@v1
  with:
    cluster_arn: arn:aws:ecs:us-east-1:123456789012:cluster/prod
    service_name: api-service
    command: rails db:migrate
```

See [README](https://github.com/ikhrustalev/ecs-task-run#readme) for full documentation.

## Related

- [ecs-service-deploy](https://github.com/ikhrustalev/ecs-service-deploy) — Lightweight ECS service redeployment
