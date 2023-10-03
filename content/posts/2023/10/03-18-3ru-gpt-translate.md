---
title: GPT Translate
date: 2023-10-03 18:54:56 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: 3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.1.8
dependentsNumber: "42"
---


Version updated for **3ru/gpt-translate** to version **v1.1.8**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **42** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

# Support multiple extension specification

```sh
/gpt-translate website/**/*.{md,mdx} website/**/*.ja.{md,mdx} Japanese
```

It is now possible to specify multiple extensions and translate them.

#### Note
The output extension is basically that of the input file side.

inputPath: `website/**/*.{md,mdx}`
outputPath `website/**/*.ja.md`

This is not an ideal input command, though; even if specified in this way, `mdx` files are not converted to `md`, and the extension specified on the input file side is retained (`.md` -> `.md`, `.mdx` -> `.mdx`) .

---
**Full Changelog**: https://github.com/3ru/gpt-translate/compare/v1.1.7...v1.1.8
