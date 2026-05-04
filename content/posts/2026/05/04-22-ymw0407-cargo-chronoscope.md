---
title: cargo-chronoscope
date: 2026-05-04 22:20:28 +00:00
tags:
  - ymw0407
  - GitHub Actions
draft: false
repo: https://github.com/ymw0407/cargo-chronoscope
marketplace: https://github.com/marketplace/actions/cargo-chronoscope
version: v0.1.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/ymw0407/cargo-chronoscope** to version **v0.1.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-chronoscope) to find the latest changes.

## Action Summary

`cargo-chronoscope` is a tool for monitoring and analyzing Rust build performance by consuming Cargo's build event stream and storing the data in a SQLite database. It automates the tasks of live build observation, historical build tracking, performance comparison between builds, and anomaly detection to identify crates compiling slower or faster than usual. Key features include a real-time TUI dashboard, build history listing, build diffing, and baseline-aware anomaly classification, making it a valuable resource for improving and understanding Rust project build efficiency.

## What's Changed

## What's Changed
* docs(readme): refresh Status section with current platform coverage by @fatima836 in https://github.com/ymw0407/cargo-chronoscope/pull/52
* [Chore] Fix .gitignore typo (.cargo-chrono -> .cargo-chronoscope) by @q404365631 in https://github.com/ymw0407/cargo-chronoscope/pull/53
* chore(ci): bump action default version by @txhno in https://github.com/ymw0407/cargo-chronoscope/pull/54
* fix(ci): post perf sticky comment on fork PRs via workflow_run by @ymw0407 in https://github.com/ymw0407/cargo-chronoscope/pull/59
* refactor: drop skeleton-phase #![allow(dead_code)] and unused items by @ymw0407 in https://github.com/ymw0407/cargo-chronoscope/pull/61
* docs(readme): embed watch dashboard demo GIF by @ymw0407 in https://github.com/ymw0407/cargo-chronoscope/pull/62
* chore(release): add Windows target and cross-compile macOS Intel by @ymw0407 in https://github.com/ymw0407/cargo-chronoscope/pull/64

## New Contributors
* @fatima836 made their first contribution in https://github.com/ymw0407/cargo-chronoscope/pull/52
* @q404365631 made their first contribution in https://github.com/ymw0407/cargo-chronoscope/pull/53
* @txhno made their first contribution in https://github.com/ymw0407/cargo-chronoscope/pull/54

**Full Changelog**: https://github.com/ymw0407/cargo-chronoscope/compare/v0.1.6...v0.1.7
