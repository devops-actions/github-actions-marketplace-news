---
title: Papyrus Diagram Export
date: 2026-05-15 14:58:02 +00:00
tags:
  - thomas-worm
  - GitHub Actions
draft: false
repo: https://github.com/thomas-worm/papyrus-export-diagrams
marketplace: https://github.com/marketplace/actions/papyrus-diagram-export
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/thomas-worm/papyrus-export-diagrams** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/papyrus-diagram-export) to find the latest changes.

## Action Summary

The `papyrus-export-diagrams` GitHub Action automates the process of exporting diagrams from a Papyrus model (*.di files) into image files in various formats (e.g., SVG, PNG, JPEG). It supports both GMF and Sirius representations, ensuring compatibility and accurate diagram rendering. This action simplifies workflows by generating visual outputs of diagrams and optionally committing them back to the repository, making it ideal for teams working with model-based designs and documentation.

## What's Changed

# papyrus-export-diagrams

This initial release provides a GitHub action that can export diagrams from Papyrus projects to images. It iterates over all diagrams (GMF based as well as Sirius based) it finds in the projects and exports the images.

## Prerequisites

You need to run `thomas-worm/setup-papyrus` before this action in your workflow.

## Sample workflow

This workflow would export images on every model push and push the images to an model_image folder:

```yaml
name: Export Papyrus diagrams
on:
  push:
    paths: ['model/**']
permissions:
  contents: write
jobs:
  export:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - id: papyrus
        uses: thomas-worm/setup-papyrus@v1
      - uses: thomas-worm/papyrus-export-diagrams@v1
        with:
          papyrus-home: ${{ steps.papyrus.outputs.papyrus-home }}
          model-dir:    model
          output-dir:   model_images
      - run: |
          git config user.name  "github-actions[bot]"
          git config user.email "github-actions[bot]@users.noreply.github.com"
          git add model_images
          git diff --staged --quiet || \
            (git commit -m "chore: re-export diagrams [skip ci]" && \
             git push origin HEAD:${GITHUB_REF#refs/heads/})
```
## Inputs

| Input            | Default | Description |
| ---------------- | ------- | --- |
| `papyrus-home`   | —       | From `setup-papyrus`. |
| `model-dir`      | —       | Scanned recursively for `*.di` files. |
| `output-dir`     | —       | Created if missing. |
| `format`         | `SVG`   | One of `SVG`, `PNG`, `JPEG`, `BMP`, `GIF`. |
| `naming`         | `xmiId` | `xmiId` (notation `xmi:id`, always unique, cryptic) or `name` (user-facing diagram name; you keep them unique). |
| `fail-on-error`  | `true`  | If `true`, the step fails when any single diagram fails to export. Set to `false` if you'd rather get partial output. |

## Outputs

| Output           | Description |
| ---------------- | --- |
| `exported-count` | Number of diagrams successfully exported. |
| `failed-count`   | Number of diagrams that could not be exported. |




