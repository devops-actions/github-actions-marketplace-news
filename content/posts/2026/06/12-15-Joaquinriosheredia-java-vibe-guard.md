---
title: java-vibe-guard
date: 2026-06-12 15:28:37 +00:00
tags:
  - Joaquinriosheredia
  - GitHub Actions
draft: false
repo: https://github.com/Joaquinriosheredia/java-vibe-guard
marketplace: https://github.com/marketplace/actions/java-vibe-guard
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Joaquinriosheredia/java-vibe-guard** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/java-vibe-guard) to find the latest changes.

## What's Changed

Automatically scan Spring Boot projects for runtime anti-patterns on every PR.

## What it detects
- Blocking calls in @Async, @KafkaListener, @Scheduled
- @Transactional + @Async conflicts
- Controller → Repository direct access
- Kafka consumers without groupId
- Endpoints without structured logging

## Usage
- uses: Joaquinriosheredia/java-vibe-guard@v1
  with:
    path: '.'
    fail-on: 'critical'

Fails the build on CRITICAL findings. Zero configuration required.

## Requirements
- Java project to scan
- No installation needed
