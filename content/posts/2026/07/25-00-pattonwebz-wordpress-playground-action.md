---
title: WordPress Playground Link
date: 2026-07-25 00:23:52 +00:00
tags:
  - pattonwebz
  - GitHub Actions
draft: false
repo: https://github.com/pattonwebz/wordpress-playground-action
marketplace: https://github.com/marketplace/actions/wordpress-playground-link
version: v0.1.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action converts an uploaded plugin zip artifact into a publicly accessible WordPress Playground link, allowing developers to easily test and deploy their plugins. It automatically handles private-repo artifacts by failing the action if the repository is private. The action supports various optional configurations such as activating themes and plugins upon installation, and provides options to post the link as a sticky comment on pull requests or in GitHub comments.
---


Version updated for **https://github.com/pattonwebz/wordpress-playground-action** to version **v0.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wordpress-playground-link) to find the latest changes.

## Action Summary

The GitHub Action converts an uploaded plugin zip artifact into a publicly accessible WordPress Playground link, allowing developers to easily test and deploy their plugins. It automatically handles private-repo artifacts by failing the action if the repository is private. The action supports various optional configurations such as activating themes and plugins upon installation, and provides options to post the link as a sticky comment on pull requests or in GitHub comments.

## What's Changed

First public release.

**WordPress Playground Link** turns a plugin zip you've already uploaded as a GitHub Actions artifact into a one-click [WordPress Playground](https://playground.wordpress.net/) link — install, activate, and land straight on the page you want reviewers to see, no manual setup.

### What it does
- Resolves your artifact to a public URL via [nightly.link](https://nightly.link) and builds a Playground blueprint around it
- Installs and (optionally) activates the plugin, with configurable landing page, WP/PHP version, and multisite
- Can install extra plugins or a theme alongside it
- Optionally posts/updates a sticky PR comment with the generated link
- Verifies the artifact actually exists before building a link, if you pass a token — fails loudly in CI instead of shipping a dead link

### Three ways to trigger it
Manual (`workflow_dispatch`), automatic on every PR push, or label-triggered on demand — all three have complete, ready-to-copy example workflows in the [README](https://github.com/pattonwebz/wordpress-playground-action#trigger-modes).

### Requirements
Your repository and artifact must be public — nightly.link can't proxy private-repo artifacts.

**Full Changelog**: https://github.com/pattonwebz/wordpress-playground-action/commits/v0.1.0

