---
title: rex - Universal Project Runner
date: 2026-05-23 06:14:09 +00:00
tags:
  - rexrun-dev
  - GitHub Actions
draft: false
repo: https://github.com/rexrun-dev/rex
marketplace: https://github.com/marketplace/actions/rex-universal-project-runner
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rexrun-dev/rex** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rex-universal-project-runner) to find the latest changes.

## Action Summary

**Summary:** The `rex` GitHub Action automatically detects the technology stack of a project and provides predefined commands for common tasks like testing, building, running, dependency management, and cleaning, across various programming languages and frameworks (e.g., Go, Node.js, Python, Rust, etc.). It eliminates the need for manual configuration and reduces the effort of memorizing or looking up project-specific commands, streamlining development workflows and simplifying onboarding for new projects. Additionally, it supports generating CI workflows and diagnosing environment issues, enhancing productivity and consistency across teams.

## What's Changed

## What's new

- **rex watch** — file watcher that re-runs commands on change
- **rex ci** — generates GitHub Actions CI from detected stack
- **GitHub Marketplace Action** — one step to test/build any project

## Usage as GitHub Action

Replace your entire CI test step with:

    - uses: rexrun-dev/rex@v0.4.0
      with:
        command: test

Works for Go, Node, Python, Rust, Java, Ruby, PHP, Zig, Elixir — zero config.

## Install

    brew tap rexrun-dev/tap && brew install rex
    # or
    go install rexrun.dev/rex/cmd/rex@latest



