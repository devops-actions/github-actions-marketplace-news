---
title: Deploy to Laravel Forge Action
date: 2026-08-27 17:34:24 +00:00
tags:
  - the-trybe
  - GitHub Actions
draft: false
repo: https://github.com/the-trybe/deploy-to-laravel-forge
marketplace: https://github.com/marketplace/actions/deploy-to-laravel-forge-action
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of deploying a Laravel application to Laravel Forge using a declarative YAML configuration file. It solves the problem of managing and deploying Laravel applications on servers hosted by Laravel Forge with minimal manual intervention. The action provides key capabilities such as setting up site configurations, installing dependencies, running custom scripts, and managing background processes, all through user-defined configurations in a `.yaml` file.
---


Version updated for **https://github.com/the-trybe/deploy-to-laravel-forge** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-laravel-forge-action) to find the latest changes.

## Action Summary

This GitHub Action automates the process of deploying a Laravel application to Laravel Forge using a declarative YAML configuration file. It solves the problem of managing and deploying Laravel applications on servers hosted by Laravel Forge with minimal manual intervention. The action provides key capabilities such as setting up site configurations, installing dependencies, running custom scripts, and managing background processes, all through user-defined configurations in a `.yaml` file.

## What's Changed

Fix: sites beyond the first page (30 per page, cursor-paginated) were never fetched by get_all_sites(), causing the action to attempt re-creating already-existing sites and fail with a 422.
