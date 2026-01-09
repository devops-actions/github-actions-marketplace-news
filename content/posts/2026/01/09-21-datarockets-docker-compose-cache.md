---
title: Docker Compose Volumes Cache
date: 2026-01-09 21:21:21 +00:00
tags:
  - datarockets
  - GitHub Actions
draft: false
repo: https://github.com/datarockets/docker-compose-cache
marketplace: https://github.com/marketplace/actions/docker-compose-volumes-cache
version: 1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/datarockets/docker-compose-cache** to version **1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-volumes-cache) to find the latest changes.

## Action Summary

The "Docker Compose Cache Action" is a GitHub Action designed to optimize development and CI workflows by caching Docker Compose volumes and image layers across builds. It addresses performance bottlenecks, such as slow bind mount volumes on macOS, and avoids repetitive setup steps by preserving dependencies like app libraries and databases between runs. This action simplifies and accelerates the process of running setup scripts, improving CI efficiency and ensuring smoother developer onboarding.

## Release notes

🎉 Initial Release

A GitHub Action that enables caching of Docker Compose volumes and images across CI builds.

## Features

* **Volume Caching** — Cache Docker volumes (e.g., node_modules, vendor/bundle) with hash-based cache keys
* **Image Layer Caching** — Caches images built by docker compose using Docker Buildx and GitHub Actions cache (`type=gha`)
* **Automatic Restore & Save** — Restores volumes before build, saves them after

## Usage

```yaml
- uses: docker/setup-buildx-action@v3
- uses: docker/setup-compose-action@v1
- uses: datarockets/docker-compose-cache@v1
  with:
    volumes: |
      node_modules: ${{ hashFiles('package-lock.json') }}
```
