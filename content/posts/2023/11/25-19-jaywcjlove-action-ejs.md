---
title: action-ejs
date: 2023-11-25 19:14:31 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/action-ejs
marketplace: https://github.com/marketplace/actions/action-ejs
version: v1.0.3
dependentsNumber: "11"
---


Version updated for **jaywcjlove/action-ejs** to version **v1.0.3**.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-ejs) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v1.0.3: https://raw.githack.com/jaywcjlove/action-ejs/5078afc/index.html  
Comparing Changes: https://github.com/jaywcjlove/action-ejs/compare/v1.0.2...v1.0.3 

- 📖 doc: Update README.md 31e0fea @jaywcjlove
- 💄 chore(deps): update dependency lint-staged to ~13.1.0 (#8) a0b1e2f @renovate-bot
- 💄 chore(deps): update  dependencies. 4e8766e @jaywcjlove
- 💄 chore: update workflows config. a52d478 @jaywcjlove
- 💄 chore: add sponsor badge. 34e53e8 @jaywcjlove

```yml
- name: action-ejs
  uses: jaywcjlove/action-ejs@main
  with:
    template: <h1><%= name %> <span><%= conclusion %></span></h1>
    vars: |
      { "name": "jaywcjlove/action-ejs", "conclusion": "" }
```

```yml
- name: action-ejs
  uses: jaywcjlove/action-ejs@main
  with:
    template: <div><%= LICENSE %></div><div><%= markdown %></div>
    output: build/demo.html
    vars-file: |
      {
        "markdown": "./README.md",
        "LICENSE": "./LICENSE"
      }
```

<a href="https://github.com/jaywcjlove/action-ejs/graphs/contributors">
  <img src="https://jaywcjlove.github.io/action-ejs/CONTRIBUTORS.svg" />
</a>
