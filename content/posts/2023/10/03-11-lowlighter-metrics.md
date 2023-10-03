---
title: Metrics embed
date: 2023-10-03 11:14:47 +00:00
tags:
  - lowlighter
  - GitHub Actions
draft: false
repo: lowlighter/metrics
marketplace: https://github.com/marketplace/actions/metrics-embed
version: v3.34
dependentsNumber: "9,201"
---


Version updated for **lowlighter/metrics** to version **v3.34**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **9,201** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/metrics-embed) to find the latest changes.

## Release notes

## 📦 New features

* **👨‍💻 Lines of code changed**
  * Add `plugin_lines_delay` option to mitigate empty results on first query #1530 
    * *(Use this option to automatically perform a second request if you encounter zeroed-diffs values)*
 
## 🧰 Fixes and documentation

**chore**: upgrade dependencies
**docs(steam)**: correct `plugin_steam_user` example (#1413, @CCXXXI)
**fix(community/template)**: quickstart
**fix(plugins/achievements)**: update total data acquisition method (#1487, @TonyCrane)
**fix(plugins/achievements)**: find pre-2007 activity (#1493, @LucasLarson)
**fix(plugins/achievements)**: fix progress of rank A (#1430, @TonyCrane)
**fix(app/utils)**: don't die on undefined file type buffer
**fix(app/utils)**: pie graph when less than 3 values
**fix(plugin/achievements)**: use graphql first for initial setup and fix regex

## 🪦 Deprecations

[🐤 Latest tweets<sub><code>tweets</code></sub>](https://github.com/lowlighter/metrics/blob/master/source/plugins/tweets/README.md) has been deprecated as [Twitter](https://twitter.com) removed the ability to fetch tweets from their free API as part of their new [pricing policy](https://developer.twitter.com/en/docs/twitter-api/getting-started/about-twitter-api). This plugin will no longer maintained.

## 💕 Sponsors
<img src="https://raw.githubusercontent.com/lowlighter/metrics/examples/metrics.sponsors.svg">

<details><summary><a href="https://github.com/sponsors/lowlighter"><code>♥️ Become a sponsor</code></a></summary>

> *project maintained by @lowlighter*

</details>
