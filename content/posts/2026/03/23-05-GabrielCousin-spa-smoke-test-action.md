---
title: spa-smoke-test-action
date: 2026-03-23 05:54:26 +00:00
tags:
  - GabrielCousin
  - GitHub Actions
draft: false
repo: https://github.com/GabrielCousin/spa-smoke-test-action
marketplace: https://github.com/marketplace/actions/spa-smoke-test-action
version: v1.0.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/GabrielCousin/spa-smoke-test-action** to version **v1.0.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spa-smoke-test-action) to find the latest changes.

## Action Summary

The "SPA smoke-test action" is a GitHub Action designed to verify the successful rendering of a single-page application (SPA) after deployment. It uses a headless browser to navigate to a specified URL and checks for the presence of a key CSS selector to ensure the app has loaded correctly, addressing issues like silent failures in JavaScript hydration or missing elements. This action automates basic post-deployment validation, ensuring that SPAs are functioning as expected with minimal setup.

## Release notes

## What's Changed

- test: replace ts-node with swc
- breaking: drop HTTP basic auth
- ci: add manual action for testing
- refactor: add engine factory
- ci: update eslint
- fix: minify build


**Full Changelog**: https://github.com/GabrielCousin/spa-smoke-test-action/commits/v1.0.0
