---
title: Markdown dead link checker
date: 2024-03-04 11:17:43 +00:00
tags:
  - AlexanderDokuchaev
  - GitHub Actions
draft: false
repo: AlexanderDokuchaev/md-dead-link-check
marketplace: https://github.com/marketplace/actions/markdown-dead-link-checker
version: 0.3
dependentsNumber: "2"
---


Version updated for **AlexanderDokuchaev/md-dead-link-check** to version **0.3**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/markdown-dead-link-checker) to find the latest changes.

## Release notes


- Multi-platform support: Added support for Windows and macOS.
- Enhanced pre-commit hook: Set `always_run: True` for the pre-commit hook to ensure consistent detection of links to removed files before commit.
- Improved output: Added coloring to the output for better readability. Disable coloring with the --no-color argument.
- Verbose mode: Added the `--verbose` argument to display the status of all detected links, not just the first instance.
- Automatic proxy detection: Uses `trust_env=True` for `aiohttp.ClientSession` to automatically detect proxy settings.
- Extended configuration options:
  - Supports `fnmatch` syntax for pattern matching in configuration files.
  - Added new configuration options `force_get_requests_for_links`, `validate_ssl`, `catch_response_codes`.
- Detect relative links to files that is not within repository.
- Enhanced link detection: Improved detection of links in various formats, including:
  - `[![img](img_link)](link)`
  - `<a href="link"></a>`
  - `[text](link "title")`

