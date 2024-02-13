---
title: action-ejs
date: 2024-02-13 19:27:00 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: jaywcjlove/action-ejs
marketplace: https://github.com/marketplace/actions/action-ejs
version: v1.0.4
dependentsNumber: "13"
---


Version updated for **jaywcjlove/action-ejs** to version **v1.0.4**.
- This action is used across all versions by **13** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/action-ejs) to find the latest changes.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor) 

Documentation v1.0.4: https://raw.githack.com/jaywcjlove/action-ejs/4ecabe9/index.html  
Comparing Changes: https://github.com/jaywcjlove/action-ejs/compare/v1.0.3...v1.0.4 

- 🐞 fix: github action using node20 (#15) 79b6090 @poessl

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
