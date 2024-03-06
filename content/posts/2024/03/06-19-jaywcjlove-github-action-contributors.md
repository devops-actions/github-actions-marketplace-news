---
title: Github Contributors Icon Generator
date: 2024-03-06 19:24:12 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-contributors
marketplace: https://github.com/marketplace/actions/github-contributors-icon-generator
version: v2.0.1
dependentsNumber: "270"
---


Version updated for **jaywcjlove/github-action-contributors** to version **v2.0.1**.
- This action is used across all versions by **270** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-contributors-icon-generator) to find the latest changes.

## Release notes

Documentation v2.0.1: https://raw.githack.com/jaywcjlove/github-action-contributors/fa2468b/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-contributors/compare/v2.0.0...v2.0.1 

- 🐞 fix: modify html template. e272f64 @jaywcjlove
- 💢 ci: update workflows config. e305536 @jaywcjlove

```yml
- run: mkdir -p build
- name: Generate Contributors Images
  uses: jaywcjlove/github-action-contributors@main
  with:
    token: xxxxxxx
    filter-author: renovate\[bot\]
    output: build/CONTRIBUTORS.svg

- name: Deploy
  uses: peaceiris/actions-gh-pages@v3
  with:
    github_token: xxxxxxx
    publish_dir: ./build
```

<a href="https://github.com/jaywcjlove/github-action-contributors/graphs/contributors">
  <img src="https://jaywcjlove.github.io/github-action-contributors/CONTRIBUTORS.svg" />
</a>
