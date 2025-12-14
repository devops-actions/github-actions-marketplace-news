---
title: ecs-blue-green-deploy
date: 2025-12-14 05:38:08 +00:00
tags:
  - chuka2003
  - GitHub Actions
draft: false
repo: https://github.com/chuka2003/aws-ecs-blue-green
marketplace: https://github.com/marketplace/actions/ecs-blue-green-deploy
version: 1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/chuka2003/aws-ecs-blue-green** to version **1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ecs-blue-green-deploy) to find the latest changes.

## Release notes

# 🌟 ecs-blue-green-deploy — v1.0.0 Release Notes

## 🚀 Overview
This is the first official release of **ecs-blue-green-deploy**, a GitHub Action for performing **zero-downtime blue-green deployments** to Amazon ECS behind an Application Load Balancer (ALB).  
It updates your ECS task definition, deploys the new revision, waits for stabilization, and performs safe, progressive, weighted traffic shifting from BLUE → GREEN.

No CodeDeploy. No complex pipelines. Pure AWS native APIs.

---

## ✨ Features Included in v1.0.0

### 🔧 Task Definition Management
- Automatically generates a new task definition revision.
- Optional image override (`image` + `container-name`).
- Preserves all roles, compatibilities, volumes, and container config.

### 🚢 ECS Deployment
- Updates the ECS service with the new task definition.
- Waits for service stabilization using `ecs wait services-stable`.

### 🔄 Blue-Green Traffic Shifting
- Uses ALB weighted target groups to shift traffic safely and gradually.
- Configurable shift steps (`shift-steps`) and interval (`shift-interval-seconds`).
- Moves from 100% BLUE → 100% GREEN with no downtime.

### ☁️ AWS Native Integration
- Uses AWS CLI + jq (simple, predictable, fully transparent).
- No reliance on CodeDeploy or external orchestrators.

### 🧪 Included CI Pipeline
- Shellcheck linting
- Bash syntax validation
- Composite Action dry-run testing
- Mocked AWS CLI + jq for safe execution in CI

---

## 📁 Repo Enhancements
- Complete README with architecture diagrams, examples, and usage.
- MIT License (or alternative as desired).
- GitHub Actions CI workflow.
- Versioned CHANGELOG introduced.
- Marketplace-ready formatting and badges.

---

## 🏷️ Breaking Changes
None — this is the first stable release.

---

## 🎯 Next Planned Features
- Automatic detection of BLUE/GREEN target groups  
- Rollback triggers  
- Dry-run validation mode  
- Extended ALB/target-group validation  


