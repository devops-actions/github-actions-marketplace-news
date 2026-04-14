---
title: SVGSketch Render
date: 2026-04-14 22:20:16 +00:00
tags:
  - SVGSketch
  - GitHub Actions
draft: false
repo: https://github.com/SVGSketch/render-action
marketplace: https://github.com/marketplace/actions/svgsketch-render
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/SVGSketch/render-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/svgsketch-render) to find the latest changes.

## Action Summary

The SVGSketch Render Action is a GitHub Action designed to automate the rendering of `.svgs` files into deterministic SVG outputs in CI/CD workflows. It eliminates the need for browser or network dependencies by leveraging `@svgsketch/core`, ensuring consistent results without runtime surprises. Key capabilities include rendering `.svgs` files, customizing output with template variables, generating multiple design variants, and automating tasks like committing rendered outputs or uploading artifacts.

## What's Changed

Initial public release of the SVGSketch Render Action.

## Features

- Render `.svgs` documents to SVG in CI/CD via `@svgsketch/core`
- Glob-based batch rendering (`input: designs/**/*.svgs`)
- Template variable overrides via `variables:` input (JSON object or `KEY=VALUE` pairs)
- Canvas width/height overrides
- Optional background color injection
- `fail-on-warnings` mode for strict builds
- Per-file `::error::` annotations + job summary
- Outputs: `files` (JSON array of rendered paths) and `count`

## Usage

```yaml
- uses: svgsketch/render-action@v1
  with:
    input: designs/**/*.svgs
    output-dir: rendered
```

See the [README](https://github.com/SVGSketch/render-action#usage) for full examples and the [examples/](https://github.com/SVGSketch/render-action/tree/main/examples) directory for sample .svgs files.

## Runtime
Runs on node24. No browser required, no network calls, fully deterministic output.
