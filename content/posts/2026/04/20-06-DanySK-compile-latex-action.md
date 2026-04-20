---
title: Compile All LaTeX
date: 2026-04-20 06:27:23 +00:00
tags:
  - DanySK
  - GitHub Actions
draft: false
repo: https://github.com/DanySK/compile-latex-action
marketplace: https://github.com/marketplace/actions/compile-all-latex
version: 2.3.1
dependentsNumber: "30"
actionType: Composite
---


Version updated for **https://github.com/DanySK/compile-latex-action** to version **2.3.1**.

- This action is used across all versions by **30** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compile-all-latex) to find the latest changes.

## Action Summary

The **Compile LaTeX Action** is a GitHub Action designed to automate the compilation of LaTeX documents with minimal configuration. It scans the repository for `.tex` files, identifies root documents (based on file structure or magic comments), and compiles them into PDFs using the Rubber toolchain by default. This action simplifies LaTeX workflows by automating the build process, providing lists of successfully compiled files and generated PDFs for further integration, such as deployment to GitHub Releases.

## What's Changed

## [2.3.1](https://github.com/DanySK/compile-latex-action/compare/2.3.0...2.3.1) (2026-04-19)

### Dependency updates

* **deps:** update node.js to 24.15 ([#290](https://github.com/DanySK/compile-latex-action/issues/290)) ([ab9c7bd](https://github.com/DanySK/compile-latex-action/commit/ab9c7bdacee61b7fb4f8f0714474986b3c3b34c4))

### Bug Fixes

* escape isntructions string ([79f597f](https://github.com/DanySK/compile-latex-action/commit/79f597ff402b18ca34052a23b1114d7fd12c891e))

### Documentation

* document `env-vars` ([#292](https://github.com/DanySK/compile-latex-action/issues/292)) ([7013f70](https://github.com/DanySK/compile-latex-action/commit/7013f70594fa955eced256764162c4ba7cb12970))
* fix readme ([10af74c](https://github.com/DanySK/compile-latex-action/commit/10af74c2d9b917bb2dd003e912ec01a68992d857))

### Build and continuous integration

* fail fast when release remote is not ssh ([d29950b](https://github.com/DanySK/compile-latex-action/commit/d29950b85659b4b4093cc289772faf7299f08f49))
* try to release using a deploy key ([c3c8095](https://github.com/DanySK/compile-latex-action/commit/c3c8095fa0fb0cd84d56bdef5be21f8c8cbc03d5))

