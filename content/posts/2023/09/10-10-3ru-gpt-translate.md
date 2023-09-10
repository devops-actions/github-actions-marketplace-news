---
title: GPT Translate
date: 2023-09-10 10:59:12 +00:00
tags:
  - 3ru
  - GitHub Actions
draft: false
repo: 3ru/gpt-translate
marketplace: https://github.com/marketplace/actions/gpt-translate
version: v1.1.6
dependentsNumber: 35
---


Version updated for **3ru/gpt-translate** to version **v1.1.6**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **35** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-translate) to find the latest changes.

## Release notes

# Improved input file specification method

Input file specification can now also be a directory, as shown below.
```sh
/gpt-translate website/**/*.md website/**/*.ja.md Japanese
```
This command translates all `md` files under the `website/` directory as `.ja.md`.

<br/>

[tips] 👆In this case, we can make our output file specification concise.
```sh
/gpt-translate website/**/*.md **/*.ja.md Japanese
```

<br/>

The `glob` library is used to search for files. 
For details, please check the[ `glob` repository](https://github.com/isaacs/node-glob).

---

**Full Changelog**: https://github.com/3ru/gpt-translate/compare/v1.1.5...v1.1.6
