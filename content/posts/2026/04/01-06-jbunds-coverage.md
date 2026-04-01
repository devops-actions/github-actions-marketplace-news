---
title: Go test coverage HTML report
date: 2026-04-01 06:16:16 +00:00
tags:
  - jbunds
  - GitHub Actions
draft: false
repo: https://github.com/jbunds/coverage
marketplace: https://github.com/marketplace/actions/go-test-coverage-html-report
version: v1.0.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jbunds/coverage** to version **v1.0.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-test-coverage-html-report) to find the latest changes.

## Action Summary

This GitHub Action generates a detailed, interactive HTML report from Go test coverage profiles, serving as a replacement for the `go tool cover -html` command. It automates the visualization of test coverage by marking lines as covered or uncovered, organizing the output into a browsable directory tree with light/dark theme toggles. This tool simplifies analyzing test coverage and improves navigation for developers inspecting Go source code coverage.

## What's Changed

- update root README with instructions on using the program in a GitHub Actions workflow (eb730b1)
- updated action definition to expose all outputs defined by gwatts/go-coverage-action via JSON (b6cab75)
- improve some phrasing in the root README doc (4f548da)
- add prerequisite steps (checkout, setup-go) to action.yml (2aaa6eb)
- add some horizontal rules to the root README doc (a298c0a)
- i see lots of green in GitHub. why not blue? (8e5d45f)
- use a more readable name for the action (it is arbitrary and apparently not programmatically referenced (010f6b4)
- add new GitHub Action for jbunds/coverage (26382a6)
- document "margin-right: 8ch" for span.src (2cbc9e9)
- add scc metrics doc (3b9f1b1)
