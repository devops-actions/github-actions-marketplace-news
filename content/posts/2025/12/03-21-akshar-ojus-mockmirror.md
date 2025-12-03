---
title: MockMirror Preview
date: 2025-12-03 21:03:44 +00:00
tags:
  - akshar-ojus
  - GitHub Actions
draft: false
repo: https://github.com/akshar-ojus/mockmirror
marketplace: https://github.com/marketplace/actions/mockmirror-preview
version: v1.0.4
dependentsNumber: "?"
---


Version updated for **https://github.com/akshar-ojus/mockmirror** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mockmirror-preview) to find the latest changes.

## Release notes

##  Bug Fixes & Improvements

* **Fixed Rate Limiting :** Added a smart delay (4s) between file analyses to respect the Gemini API free tier limits. This prevents crashes when multiple files are changed in a single PR.
* **Fixed Router Dependencies:** Added explicit Vite aliases for `react-router-dom`, `react-router`, and `@remix-run/router`. This ensures previews work even if the user hasn't strictly defined these dependencies in their own `package.json`.
