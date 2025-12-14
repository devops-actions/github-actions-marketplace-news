---
title: SRI Check
date: 2025-12-14 05:38:05 +00:00
tags:
  - cobacoch
  - GitHub Actions
draft: false
repo: https://github.com/cobacoch/sri-check
marketplace: https://github.com/marketplace/actions/sri-check
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/cobacoch/sri-check** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sri-check) to find the latest changes.

## Release notes

# SRI Check v1.0.0

Initial release of SRI Check - A GitHub Action to validate Subresource Integrity (SRI) attributes in Pull Request changes.

## Features

- Automatically detect HTML/HTM/PHP files changed in PRs
- Check for `integrity` attributes on external `<script>` and `<link rel="stylesheet">` tags
- Validate `integrity` attribute format (sha256/sha384/sha512)
- Optionally fetch resources and verify hash values
- Check for `crossorigin` attributes
- Display inline annotations on GitHub PR diff view
- Support disabling checks via comments

See [README](https://github.com/cobacoch/sri-check#readme) for full documentation.
