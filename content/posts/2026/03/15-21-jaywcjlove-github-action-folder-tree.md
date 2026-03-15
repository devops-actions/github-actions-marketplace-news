---
title: Print folder tree
date: 2026-03-15 21:23:27 +00:00
tags:
  - jaywcjlove
  - GitHub Actions
draft: false
repo: https://github.com/jaywcjlove/github-action-folder-tree
marketplace: https://github.com/marketplace/actions/print-folder-tree
version: v1.3.0
dependentsNumber: "54"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/jaywcjlove/github-action-folder-tree** to version **v1.3.0**.
- This action is used across all versions by **54** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/print-folder-tree) to find the latest changes.

## Action Summary

The provided README primarily showcases a collection of macOS applications, each designed to address specific productivity, media editing, or system utility tasks. It serves as a centralized hub for users to explore and access tools that automate workflows such as video editing, file management, keyboard customization, and screenshot markup, among others. The key functionality of these apps is simplifying common tasks and enhancing user efficiency through specialized software solutions.

## Release notes

[![Buy me a coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-048754?logo=buymeacoffee)](https://jaywcjlove.github.io/#/sponsor)
Documentation v1.3.0: https://raw.githack.com/jaywcjlove/github-action-folder-tree/4e4f3d3/index.html  
Comparing Changes: https://github.com/jaywcjlove/github-action-folder-tree/compare/v1.2.0...v1.3.0 

- 🐞 fix(deps): update dependency @actions/core to ~3.0.0 & @actions/github to ~9.0.0 78e26a6 @jaywcjlove
- 🐞 fix: update Node.js version from 20 to 24 in action.yml 528c8d7 @jaywcjlove


```yml
- name: Print Folder Tree
  uses: jaywcjlove/github-action-folder-tree@main
  with:
    exclude: "node_modules|dist|.git|.husky"
    path: ./src
    depth: 2
```
