---
title: Docker Compose Cache
date: 2026-05-28 22:57:12 +00:00
tags:
  - seijikohara
  - GitHub Actions
draft: false
repo: https://github.com/seijikohara/docker-compose-cache-action
marketplace: https://github.com/marketplace/actions/docker-compose-cache
version: v1.8.6
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/seijikohara/docker-compose-cache-action** to version **v1.8.6**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-compose-cache) to find the latest changes.

## Action Summary

The **Docker Compose Cache Action** is a GitHub Action designed to optimize CI/CD workflows by caching Docker images specified in Docker Compose files. It automates the process of parsing Compose files, caching images as tarballs, verifying their freshness using digests, and selectively pulling only outdated or missing images. This action reduces workflow execution time by minimizing redundant image pulls and efficiently managing Docker image caching and validation.

## What's Changed

## What's Changed
* test: migrate to true ESM Jest and consume ESM-only @actions/* by @seijikohara in https://github.com/seijikohara/docker-compose-cache-action/pull/279


**Full Changelog**: https://github.com/seijikohara/docker-compose-cache-action/compare/v1.8.5...v1.8.6
