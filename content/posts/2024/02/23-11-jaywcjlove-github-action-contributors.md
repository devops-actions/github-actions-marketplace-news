---
title: Github Contributors Icon Generator
date: 2024-02-23 11:08:40 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-contributors
marketplace: https://github.com/marketplace/actions/github-contributors-icon-generator
version: v2.0.0
dependentsNumber: "267"
---


Version updated for **jaywcjlove/github-action-contributors** to version **v2.0.0**.
- This action is used across all versions by **267** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-contributors-icon-generator) to find the latest changes.

## Release notes

Documentation v2.0.0: https://raw.githack.com/jaywcjlove/github-action-contributors/480d5c4/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-contributors/compare/v1.3.6...v2.0.0 

- 💄 chore: bump node16 to node20 d7781cd @jaywcjlove

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
