---
title: cargo-rail
date: 2026-04-09 22:02:50 +00:00
tags:
  - loadingalias
  - GitHub Actions
draft: false
repo: https://github.com/loadingalias/cargo-rail-action
marketplace: https://github.com/marketplace/actions/cargo-rail
version: v4.0.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/loadingalias/cargo-rail-action** to version **v4.0.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-rail) to find the latest changes.

## Action Summary

The `cargo-rail-action` GitHub Action automates the process of running `cargo rail plan` to analyze code changes and determine which CI jobs (e.g., build, test, docs) need to be executed based on project-specific rules defined in `.config/rail.toml`. It ensures alignment between local and CI workflows by publishing "gates" (boolean outputs) and detailed scope information (e.g., affected packages) that can be used to conditionally execute tasks, optimizing CI pipelines and reducing unnecessary work. Key capabilities include deterministic job gating, configurable rules for different code surfaces, and enhanced transparency with debug outputs.

## What's Changed

**Full Changelog**: https://github.com/loadingalias/cargo-rail-action/compare/v3...v4.0.0
