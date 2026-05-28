---
title: Environment/Output Setter
date: 2026-05-28 22:56:39 +00:00
tags:
  - somaz94
  - GitHub Actions
draft: false
repo: https://github.com/somaz94/env-output-setter
marketplace: https://github.com/marketplace/actions/environment-output-setter
version: v1.7.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/somaz94/env-output-setter** to version **v1.7.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/environment-output-setter) to find the latest changes.

## Action Summary

The **GitHub Environment/Output Setter** is a GitHub Action designed to automate the process of setting multiple key-value pairs as environment variables (`$GITHUB_ENV`) and output values (`$GITHUB_OUTPUT`) within workflows. It simplifies dynamic variable management across workflow steps while providing features like value transformation, JSON support, and sensitive data masking. This action is ideal for streamlining tasks that require organized handling of environment variables and outputs.

## What's Changed


### Bug Fixes
- use rune-aware truncation and masking for UTF-8 safety by @somaz94
- buffer payload before append and propagate Close error by @somaz94

### Build
- bump dependabot/fetch-metadata from 2 to 3 by @dependabot[bot]
- bump softprops/action-gh-release from 2 to 3 by @dependabot[bot]
- bump actions/github-script from 8 to 9 by @dependabot[bot]

### CI/CD
- use go-docker-action-ci-action@v1 (replace inline prelude) by @somaz94
- add concurrency guards to recurring workflows by @somaz94

### Refactoring
- stop mutating caller slices in ValidateInputs by @somaz94
- align DEBUG_MODE input name and apply gofmt by @somaz94
- drop dead status var and emit action_status output key by @somaz94
- route library warnings to stderr and guard empty varType by @somaz94

**Full Changelog**: https://github.com/somaz94/env-output-setter/compare/v1.7.0...v1.7.1

