---
title: Verify Deployment
date: 2026-04-04 21:41:11 +00:00
tags:
  - KaliCZ
  - GitHub Actions
draft: false
repo: https://github.com/KaliCZ/verify-deployment
marketplace: https://github.com/marketplace/actions/verify-deployment
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KaliCZ/verify-deployment** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verify-deployment) to find the latest changes.

## Action Summary

The `verify-deployment` GitHub Action automates the process of validating that a deployed application is live by repeatedly polling a specified health endpoint until a healthy response is received. It ensures that deployments are complete and functioning correctly before allowing a CI/CD pipeline to proceed, helping to prevent issues caused by incomplete or stale deployments. Key capabilities include customizable retry settings, support for validating HTTP status codes, and optional content verification in the response body.

## What's Changed

A reusable GitHub Action that polls a health endpoint with retries to verify a deployment is live and healthy. Useful for CI/CD pipelines with slot swaps or rolling deployments.

### Features

- Polls a health endpoint until it returns HTTP 200
- Configurable retry count and interval (defaults: 20 attempts, 5s apart)
- Optional `expected-content` — verify that the response body contains a specific string (e.g., a commit SHA), ensuring the newly deployed version is actually serving traffic

### Usage

```yaml
# Basic health check
- uses: KaliCZ/verify-deployment@v1
  with:
    health-url: https://api.example.com/health

# Verify specific commit is deployed
- uses: KaliCZ/verify-deployment@v1
  with:
    health-url: https://api.example.com/health
    expected-content: ${{ github.sha }}
```

### Inputs
Input | Required | Default | Description
-- | -- | -- | --
health-url | Yes | — | Full URL of the health endpoint
expected-content | No | — | String that must appear in the response body
max-attempts | No | 20 | Max attempts before failing
retry-interval | No | 5 | Seconds between retries

**Full changelog:** https://github.com/KaliCZ/verify-deployment/commits/v1.1.0
