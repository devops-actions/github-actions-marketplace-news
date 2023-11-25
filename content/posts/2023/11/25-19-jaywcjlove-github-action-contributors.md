---
title: Github Contributors Icon Generator
date: 2023-11-25 19:14:18 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/github-action-contributors
marketplace: https://github.com/marketplace/actions/github-contributors-icon-generator
version: v1.3.6
dependentsNumber: "250"
---


Version updated for **jaywcjlove/github-action-contributors** to version **v1.3.6**.
- This action is used across all versions by **250** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-contributors-icon-generator) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor)

Documentation v1.3.6: https://raw.githack.com/jaywcjlove/github-action-contributors/99f8459/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-contributors/compare/v1.3.5...v1.3.6 

- 📖 doc: Update README.md 28f8caa @jaywcjlove
- 📖 doc: update README.md. 18683a2 @github-actions-bot
- 💢 ci: update workflows config. 69ee32b @jaywcjlove
- 📖 doc: update README.md. 8e2eb47 @github-actions-bot
- 💄 chore: add log. 3ac72f2 @jaywcjlove
- 📖 doc: update README.md. 62ea470 @github-actions-bot
- 📖 doc: update README.md. d65cf87 @github-actions-bot
- 💄 chore(deps): update dependency lint-staged to v14 (#18) 56db364 @renovate-bot
- 💄 chore(deps): update dependency @kkt/ncc to ~1.1.0 (#19) 8ffbf34 @renovate-bot
- 💄 chore: update sponsor badge. 472778c @jaywcjlove

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
