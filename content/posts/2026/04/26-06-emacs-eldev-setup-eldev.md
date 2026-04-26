---
title: Set up Eldev
date: 2026-04-26 06:14:06 +00:00
tags:
  - emacs-eldev
  - GitHub Actions
draft: false
repo: https://github.com/emacs-eldev/setup-eldev
marketplace: https://github.com/marketplace/actions/set-up-eldev
version: v1.5
dependentsNumber: "60"
actionType: Composite
---


Version updated for **https://github.com/emacs-eldev/setup-eldev** to version **v1.5**.

- This action is used across all versions by **60** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-eldev) to find the latest changes.

## Action Summary

The `setup-eldev` GitHub Action facilitates the installation and optional bootstrapping of Eldev, a build system for Emacs projects, within GitHub Actions workflows. It supports Linux, macOS, and Windows, and helps streamline continuous integration processes by automating Eldev setup and optionally caching its global package archive between workflow runs for improved efficiency. This action is particularly useful for projects that rely on Eldev for testing, linting, and building Emacs-based software across multiple environments.

## What's Changed

This release bumps version `actions/checkout` to 6 and of `actions/cache` to 5, to use newer NodeJS. There are no other changes.
