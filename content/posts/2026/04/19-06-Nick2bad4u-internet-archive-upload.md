---
title: Upload files to an archive.org item w/ Metadata
date: 2026-04-19 06:44:46 +00:00
tags:
  - Nick2bad4u
  - GitHub Actions
draft: false
repo: https://github.com/Nick2bad4u/internet-archive-upload
marketplace: https://github.com/marketplace/actions/upload-files-to-an-archive-org-item-w-metadata
version: v2.0.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/Nick2bad4u/internet-archive-upload** to version **v2.0.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/upload-files-to-an-archive-org-item-w-metadata) to find the latest changes.

## Action Summary

The Internet Archive Upload Action is a GitHub Action designed to automate the process of uploading files or directories to the Internet Archive (archive.org) with support for adding metadata to describe the content. It simplifies tasks like managing file uploads, handling multiple paths, and configuring metadata fields, making it ideal for archiving and preserving digital assets. The action provides key capabilities such as flexible file selection, detailed metadata configuration, and generating a direct link to the uploaded item's details page.

## What's Changed

## Release notes

### 🚨 Breaking changes
- Stricter metadata input validation is now enforced at runtime in upload.py.
- Enum-like fields now reject unsupported values:
  - `closed_captioning`: `yes` | `no`
  - `color`: `color` | `black and white`
  - `page-progression`: `lr` | `rl`
  - `sound`: `sound` | `silent`
- Numeric/boolean-like metadata values are validated and normalized:
  - booleans: `adaptive_ocr`, `betterpdf`
  - integers: `fixed-ppi`, `ppi`, `year`
  - float: `size`

### ✨ New
- Added action output:
  - `item-url` → `https://archive.org/details/<identifier>`
- Added CI guardrails:
  - Input parity checker (check_input_parity.py)
  - Workflow to enforce action/input parity
  - Workflow for `typesafegithub/github-actions-typing`
- Added full action-types.yml coverage with richer schema metadata:
  - enums, lists, integers, floats, and output typing

### 🔒 Hardening / reliability
- Composite steps use strict shell mode (`-euo pipefail`).
- Upload script now validates log level values (`DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`).
- Improved metadata handling consistency (including comma-separated field normalization).

### 📦 Dependency updates
- Confirmed latest `internetarchive` support and pinned dependencies:
  - `internetarchive==5.8.0`
  - `pre-commit==4.5.1`
- Refreshed Pipfile.lock for Python 3.13 alignment.

### 📘 Documentation updates
- README refreshed for:
  - modern workflow examples (`actions/checkout@v6`)
  - SHA pinning guidance
  - new `item-url` output usage
  - typed/validated input behavior
- Added Google Tag Manager snippet for GitHub Pages docs site (`GTM-T8J6HPLF`).

### ✅ Migration notes
- If you pass loose/legacy values for enum-like fields, update them to supported values listed above.
- If you used free-form booleans/numbers, ensure they are valid (`true/false`, numeric strings, etc.).
- Consumers can now use `${{ steps.<id>.outputs.item-url }}` for downstream automation/notifications.

