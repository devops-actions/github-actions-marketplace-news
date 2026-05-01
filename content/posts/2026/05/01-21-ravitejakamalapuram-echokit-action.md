---
title: EchoKit Mock Server
date: 2026-05-01 21:49:43 +00:00
tags:
  - ravitejakamalapuram
  - GitHub Actions
draft: false
repo: https://github.com/ravitejakamalapuram/echokit-action
marketplace: https://github.com/marketplace/actions/echokit-mock-server
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ravitejakamalapuram/echokit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/echokit-mock-server) to find the latest changes.

## Action Summary

The EchoKit GitHub Action enables automated testing of integration scenarios using API mocks recorded with EchoKit. It simplifies the process of running tests against mock servers, tracks API coverage, and optionally posts coverage reports as comments on pull requests. Key features include starting/stopping mock servers, unmatched request detection, and support for generating coverage reports in JSON or Markdown format.

## What's Changed

## 🚀 Features

- Start/stop EchoKit mock server in GitHub Actions
- Automatic coverage tracking with detailed metrics
- PR coverage comments with collapsible sections
- Strict mode to fail on unmatched requests
- JSON and markdown report formats
- Zero-config setup - just point to your EchoKit export JSON

## 📦 Installation

Add this to your workflow:

- uses: ravitejakamalapuram/echokit-action@v1
  with:
    mocks-file: tests/fixtures/echokit-export.json

## 📚 Documentation

See README.md for complete usage examples: https://github.com/ravitejakamalapuram/echokit-action#readme

## 🔗 Related

- EchoKit Extension: https://github.com/ravitejakamalapuram/echokit
- echokit-server on npm: https://www.npmjs.com/package/echokit-server

## 📖 Full Changelog

https://github.com/ravitejakamalapuram/echokit-action/commits/v1.0.0
