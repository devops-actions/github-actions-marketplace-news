---
title: llms-txt-check
date: 2026-08-09 13:58:11 +00:00
tags:
  - portdeveloper
  - GitHub Actions
draft: false
repo: https://github.com/portdeveloper/llms-txt-check-action
marketplace: https://github.com/marketplace/actions/llms-txt-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The llms-txt-check action validates a website's `llms.txt` file against what it serves by checking each listed URL. It helps prevent serving-layer breakage by failing the deploy if any URL is not accessible or returns HTML instead of markdown. The action wraps the llms-txt-check tool and provides an easy-to-use GitHub Action for continuous integration purposes.
---


Version updated for **https://github.com/portdeveloper/llms-txt-check-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llms-txt-check) to find the latest changes.

## Action Summary

The llms-txt-check action validates a website's `llms.txt` file against what it serves by checking each listed URL. It helps prevent serving-layer breakage by failing the deploy if any URL is not accessible or returns HTML instead of markdown. The action wraps the llms-txt-check tool and provides an easy-to-use GitHub Action for continuous integration purposes.

## What's Changed

Initial release: wraps llms-txt-check 0.1.4 as a composite action.
