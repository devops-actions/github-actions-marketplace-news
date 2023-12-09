---
title: Set up OCaml
date: 2023-12-09 19:16:19 +00:00
tags:
  - ocaml
  - GitHub Actions
draft: false
repo: ocaml/setup-ocaml
marketplace: https://github.com/marketplace/actions/set-up-ocaml
version: v2.2.0
dependentsNumber: "1,077"
---


Version updated for **ocaml/setup-ocaml** to version **v2.2.0**.
- This action is used across all versions by **1,077** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-ocaml) to find the latest changes.

## Release notes

### Breaking Change

This release contains a breaking change for `ocaml/setup-ocaml/deploy-doc@2`. (As it is still marked as experimental, it is not relevant to the major version bump.)

Since decent official support is now available to deploy natively to GitHub Pages, the action has been deprecated and removed.

For native support, make sure your repository has Pages enabled and configured to build using GitHub Actions: `https://github.com/[USERNAME]/[REPO]/settings/pages`

Actual example is as follows:

```yml
name: Deploy odoc to GitHub Pages

on:
  push:
    branches:
      - main

permissions: read-all

concurrency:
  group: deploy-odoc
  cancel-in-progress: true

jobs:
  deploy-odoc:
    name: Deploy odoc to GitHub Pages

    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}

    permissions:
      contents: read
      id-token: write
      pages: write

    runs-on: ubuntu-latest

    steps:
      - name: Checkout tree
        uses: actions/checkout@v4

      - name: Set-up OCaml
        uses: ocaml/setup-ocaml@v2
        with:
          ocaml-compiler: "5.1"

      - name: Install dependencies
        run: opam install . --deps-only --with-doc

      - name: Build documentation
        run: opam exec -- dune build @doc

      - name: Set-up Pages
        uses: actions/configure-pages@v4

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: _build/default/_doc/_html

      - name: Deploy odoc to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v3
```

---

### Added

- Add opam support for the Dependency submission API.
- Set `HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK` to `1` on the runner while installing OCaml.

### Removed

- Since decent official support is now available to deploy natively to GitHub Pages, `deploy-doc` has been deprecated and removed.
