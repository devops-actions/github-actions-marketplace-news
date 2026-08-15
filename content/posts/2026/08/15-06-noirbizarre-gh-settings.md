---
title: gh-settings
date: 2026-08-15 06:53:42 +00:00
tags:
  - noirbizarre
  - GitHub Actions
draft: false
repo: https://github.com/noirbizarre/gh-settings
marketplace: https://github.com/marketplace/actions/gh-settings
version: 0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the management of repository settings using the GitHub CLI. It provides a declarative way to define and update repository configuration, including topics, labels, and autolinks. The action computes the difference between the current state and the desired state defined in a `.github/settings.yml` file and applies the necessary changes. It does not require any external services or apps, and it can preview changes before applying them using `gh settings plan`.
---


Version updated for **https://github.com/noirbizarre/gh-settings** to version **0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gh-settings) to find the latest changes.

## Action Summary

This GitHub Action automates the management of repository settings using the GitHub CLI. It provides a declarative way to define and update repository configuration, including topics, labels, and autolinks. The action computes the difference between the current state and the desired state defined in a `.github/settings.yml` file and applies the necessary changes. It does not require any external services or apps, and it can preview changes before applying them using `gh settings plan`.

## What's Changed

### 💫 Features

- **resources** Manage Actions general settings and web commit signoff - ([36e4b9a](https://github.com/noirbizarre/gh-settings/commit/36e4b9a5ec7155f3ffcb55cd8df24a70b9b698eb))

### 🐛 Bug Fixes

- **docs** Add Actions general settings to the Administration: write lists - ([181150f](https://github.com/noirbizarre/gh-settings/commit/181150fd4a6ea16e4a8a0a9e22f37c3ba0fec112))
- **docs** Say the Actions token reaches Pages, not just labels - ([0f9cf82](https://github.com/noirbizarre/gh-settings/commit/0f9cf82c7315dbdb0c740ee6fdbba9ef33f2c554))

### 🔨 Refactor

- **resources** Derive the exported section instead of hand-building it - ([c58b245](https://github.com/noirbizarre/gh-settings/commit/c58b245fdf578ed821a1c6075d750f2aeb2420f5))
- **rulesets** Match the idioms the other resources use - ([d8e88ca](https://github.com/noirbizarre/gh-settings/commit/d8e88caaf4ef9e9407cbbefa1e470966f388e33f))
- State the recreate invariant instead of hiding it in a shared arm - ([27543a2](https://github.com/noirbizarre/gh-settings/commit/27543a2cfdbd0122614addc46597dbc34f04a6e7))

### 📚 Documentation

- **adr** Record what later records changed - ([599250c](https://github.com/noirbizarre/gh-settings/commit/599250c6c3f01ef130088e63ba6899ff6306fe26))
- **roadmap** List Actions general settings as supported - ([7a2bed1](https://github.com/noirbizarre/gh-settings/commit/7a2bed1d3aa10847ed80e884600102bf78947244))
- Correct the small stale statements - ([9e16f93](https://github.com/noirbizarre/gh-settings/commit/9e16f93d89b680e62d1b352b89dc371f3e280dbf))
- Stop saying the action has never been released - ([b927f6d](https://github.com/noirbizarre/gh-settings/commit/b927f6d46de52fc644315950add484d1bce0eb58))

### 🎨 Style

- **resources** One wording for the undecodable-payload panic - ([780dfdf](https://github.com/noirbizarre/gh-settings/commit/780dfdf22385a41178a4a68d48cf832a37c661ea))
- Rustfmt the rewrapped panic messages - ([3125adc](https://github.com/noirbizarre/gh-settings/commit/3125adc70e74e19681a7cfa05fc6d880748b43b9))

### 🔧 CI

- **git-cliff** Avoid `git-cliff` GitHub integration rate limiting by using a token - ([3937314](https://github.com/noirbizarre/gh-settings/commit/3937314007784c5ae46627c04581178bffb95db1))
- **lint** Move actionlint suppressions into a config file - ([60e8b48](https://github.com/noirbizarre/gh-settings/commit/60e8b4828d10dc5570672ff92214815a6ab9bedc))
- **mise** Stop installing artwork tools in every job - ([331610f](https://github.com/noirbizarre/gh-settings/commit/331610f03597876deba1d33d63c7aba51a5dab1d))
- **release** Sign the release commit with a GitHub App - ([9e5ff42](https://github.com/noirbizarre/gh-settings/commit/9e5ff42f84dc4786d1aad863ac37480517bab82a))

