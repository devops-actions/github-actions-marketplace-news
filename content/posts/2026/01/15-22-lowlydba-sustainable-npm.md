---
title: sustainable-npm
date: 2026-01-15 22:03:36 +00:00
tags:
  - lowlydba
  - GitHub Actions
draft: false
repo: https://github.com/lowlydba/sustainable-npm
marketplace: https://github.com/marketplace/actions/sustainable-npm
version: v2.0.0
dependentsNumber: "2"
---


Version updated for **https://github.com/lowlydba/sustainable-npm** to version **v2.0.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sustainable-npm) to find the latest changes.

## Action Summary

The `sustainable-npm` GitHub Action optimizes npm workflows by globally applying eco-friendly configurations. It disables non-essential npm features, such as audit and update notifications, to improve installation speed, reduce CI resource usage, and lower the environmental impact of development pipelines. This action is lightweight, dependency-free, and integrates seamlessly with Node.js LTS versions.

## Release notes


## 🚀 What's New

**Breaking Change**: Debug-Only Configuration Output

The npm configuration output step now only executes when debug logging is enabled (RUNNER_DEBUG == 'true'). This change reduces unnecessary CPU processing and log noise in standard CI runs, further aligning with sustainable-npm's core mission.


## 🌱 Sustainability Improvements

By eliminating the automatic printing of npm configs on every run, we reduce:

* CPU cycles spent on unnecessary output generation
* Log storage overhead in CI systems
* Network bandwidth for log transmission and storage
* This small optimization contributes to lower energy consumption across thousands of CI runs.

## 📋 Migration Guide
If you were relying on the npm config output from previous versions, you can enable debug logging at the workflow or step level to revert to previous behavior. 


