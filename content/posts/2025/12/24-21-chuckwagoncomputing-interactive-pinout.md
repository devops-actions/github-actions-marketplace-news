---
title: Interactive Pinout Generator
date: 2025-12-24 21:11:23 +00:00
tags:
  - chuckwagoncomputing
  - GitHub Actions
draft: false
repo: https://github.com/chuckwagoncomputing/interactive-pinout
marketplace: https://github.com/marketplace/actions/interactive-pinout-generator
version: 2.17
dependentsNumber: "47"
---


Version updated for **https://github.com/chuckwagoncomputing/interactive-pinout** to version **2.17**.
- This action is used across all versions by **47** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/interactive-pinout-generator) to find the latest changes.

## Action Summary

The Interactive Pinout Generator GitHub Action automates the creation of interactive and visually detailed pinout diagrams for electronic device connectors. By processing a connector photo and corresponding YAML metadata, it generates a structured HTML page with searchable and clickable pin mappings, allowing users to easily navigate and understand connector layouts. This tool simplifies the documentation and visualization of pin configurations, helping developers and engineers streamline hardware documentation tasks.

## Release notes

- Added `color-columns` option - an array of columns containing CSS colors for coloring pins. If not provided, the `color` column will still be used if available. Each column provided will get a mode in the color selector.
- The `columns`, `print-columns`, `color-columns`, and `info-column` parameters can now be set in a connector definition YAML's `info` section to override the values passed to the generator.
- Added `highlight` URL parameter, which takes queries to match pins, which are highlighted and added to the info table.
- Improved printing, but made it worse for Firefox due to [this bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1979600).
- Changed `board_url` info option to `url`. `board_url` will continue to work for now.
- Fixed parsing of `colors` parameter so that passing it as a single-line environment variable as in the standalone example actually works.
- Fixed navigating back to the first page state after clicking a pin.
