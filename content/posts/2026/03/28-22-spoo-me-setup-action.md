---
title: Setup Spoo.me
date: 2026-03-28 22:12:59 +00:00
tags:
  - spoo-me
  - GitHub Actions
draft: false
repo: https://github.com/spoo-me/setup-action
marketplace: https://github.com/marketplace/actions/setup-spoo-me
version: v2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/spoo-me/setup-action** to version **v2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-spoo-me) to find the latest changes.

## Action Summary

The **Spoo.me Setup Action** is a reusable GitHub Action designed to automate the setup of the Spoo.me URL shortener service within CI workflows. It simplifies the process by managing dependencies such as Python, MongoDB, Redis, and FastAPI, while ensuring the service is fully operational through health checks. Ideal for integration testing, it provides a complete, configurable environment with production-grade performance for testing URL shortening functionality efficiently.

## Release notes

## What's Changed

  - **FastAPI + Uvicorn** — updated for the spoo.me Flask → FastAPI migration
  - **Python 3.13** — default Python version bumped from 3.12 to 3.13
  - **Proper health checks** — uses `/health` endpoint with JSON validation, bounded timeouts, and whitelist-only status acceptance
  - **New `health-url` output** — `http://127.0.0.1:8000/health`
  - **Full env config** — JWT (HS256), OAuth placeholders, Sentry, logging, email settings auto-configured for CI
  - **Expanded test coverage** — legacy shorten + redirect, legacy stats, V1 API shorten + redirect, V1 API stats
  - **Hardened CI** — redirect failures and malformed health responses now fail the workflow

  ## Migration from v1

  ```yaml
  # Before
  uses: spoo-me/setup-action@v1

  # After
  uses: spoo-me/setup-action@v2

All inputs and outputs are backward-compatible. New output: health-url.
