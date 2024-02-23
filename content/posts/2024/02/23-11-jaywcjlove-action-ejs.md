---
title: action-ejs
date: 2024-02-23 11:08:51 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/action-ejs
marketplace: https://github.com/marketplace/actions/action-ejs
version: v2.0.0
dependentsNumber: "13"
---


Version updated for **jaywcjlove/action-ejs** to version **v2.0.0**.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-ejs) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v2.0.0: https://raw.githack.com/jaywcjlove/action-ejs/d29ab33/index.html  
Comparing Changes: https://github.com/jaywcjlove/action-ejs/compare/v1.0.4...v2.0.0 

- 🐞 fix(deps): update dependency @actions/github to v6 (#12) ad689fe @renovate-bot
- 💄 chore(deps): update dependency @kkt/ncc to ~1.1.0 (#11) 5f876b4 @renovate-bot
- 💄 chore(deps): update dependency lint-staged to v15 (#13) 28153aa @renovate-bot
- 💄 chore(deps): update dependency husky to v9 (#14) 7d624d0 @renovate-bot
- 💄 chore: output dist js cc087c8 @jaywcjlove
- 💄 chore: update husky script. 33f2323 @jaywcjlove
- 💄 chore: add engines feild to package.json 137e878 @jaywcjlove
- 💢 ci: update workflows config. e9b86d7 @jaywcjlove

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
