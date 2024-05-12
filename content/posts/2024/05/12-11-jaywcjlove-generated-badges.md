---
title: Generated Badges
date: 2024-05-12 11:30:58 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/generated-badges
marketplace: https://github.com/marketplace/actions/generated-badges
version: v1.0.13
dependentsNumber: "2"
---


Version updated for **jaywcjlove/generated-badges** to version **v1.0.13**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generated-badges) to find the latest changes.

## Release notes

Documentation v1.0.13: https://raw.githack.com/uiwjs/react-codemirror/25d8378/index.html  
Comparing Changes: https://github.com/jaywcjlove/generated-badges/compare/v1.0.12...v1.0.13  

- 💢 ci: update workflows config. f7953ae @jaywcjlove
- 💄 chore: bump node16 to node20 986931a @jaywcjlove
- 💢 ci: update workflows config. 81ec709 @jaywcjlove
- 💄 chore(deps): update dependency husky to v9 #22 a30be8c @jaywcjlove

```yml
- run: mkdir -p build

- name: Generate Badges
  uses: jaywcjlove/generated-badges@main
  with:
    label: color
    status: cyan
    output: build/cyan.svg

- name: Deploy
  uses: peaceiris/actions-gh-pages@v3
  with:
    github_token: xxxxxxx
    publish_dir: ./build
```

![blue badges](https://jaywcjlove.github.io/generated-badges/blue.svg) ![cyan badges](https://jaywcjlove.github.io/generated-badges/cyan.svg) ![green badges](https://jaywcjlove.github.io/generated-badges/green.svg) ![yellow badges](https://jaywcjlove.github.io/generated-badges/yellow.svg) ![red badges](https://jaywcjlove.github.io/generated-badges/red.svg) ![pink badges](https://jaywcjlove.github.io/generated-badges/pink.svg) ![purple badges](https://jaywcjlove.github.io/generated-badges/purple.svg) ![grey badges](https://jaywcjlove.github.io/generated-badges/grey.svg) ![black badges](https://jaywcjlove.github.io/generated-badges/black.svg) ![gradient badges](https://jaywcjlove.github.io/generated-badges/gradient.svg)
