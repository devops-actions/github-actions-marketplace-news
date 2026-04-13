---
title: ProtoConsent Validate
date: 2026-04-13 06:27:31 +00:00
tags:
  - ProtoConsent
  - GitHub Actions
draft: false
repo: https://github.com/ProtoConsent/validate-action
marketplace: https://github.com/marketplace/actions/protoconsent-validate
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/ProtoConsent/validate-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/protoconsent-validate) to find the latest changes.

## Action Summary

The **ProtoConsent Validate Action** is a GitHub Action designed to validate `.well-known/protoconsent.json` files against the ProtoConsent specification. It automates the verification of consent declaration files for proper formatting, required fields, and compliance with the specification, ensuring accurate and enforceable user consent data. Key capabilities include error and warning detection, file size checks, and a results summary integrated into the GitHub Actions workflow.

## What's Changed

Validate `.well-known/protoconsent.json` declarations in your CI pipeline.

## Features

- Full schema validation against the ProtoConsent specification (v0.1)
- Checks purposes, legal basis, sharing, data handling, and rights URL
- Errors fail the workflow, warnings appear as annotations
- Job summary with detailed check results table
- Configurable file path (default: `.well-known/protoconsent.json`)

## Usage

```yaml
- uses: ProtoConsent/validate-action@v1
```

See [README](https://github.com/ProtoConsent/validate-action/blob/main/README.md) for full documentation.

Links
- [ProtoConsent](https://protoconsent.org/) - Project website
- [ProtoConsent/ProtoConsent](https://github.com/ProtoConsent/ProtoConsent) - Browser extension and specification
- [Generate your declaration](https://protoconsent.org/generate.html) - Online generator
- [Validate your declaration](https://protoconsent.org/validate.html) - Online validator

