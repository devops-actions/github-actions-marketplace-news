---
title: Game of Life GIF Generator
date: 2026-01-21 13:46:21 +00:00
tags:
  - apoupon
  - GitHub Actions
draft: false
repo: https://github.com/apoupon/gh-game-of-life
marketplace: https://github.com/marketplace/actions/game-of-life-gif-generator
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/apoupon/gh-game-of-life** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/game-of-life-gif-generator) to find the latest changes.

## Action Summary

The `gh-game-of-life` GitHub Action transforms your GitHub contribution graph into an animated representation of Conway's Game of Life, showcasing evolving patterns based on the Quad-Life variant. It automates the creation and daily updating of a GIF, allowing users to visually display dynamic, colorful simulations in their repositories. This action simplifies the process of generating creative, engaging visuals from contribution data.

## Release notes

# 🚀 gh-game-of-life v1.1.0

**Transform your contribution graph into a living ecosystem.**

This action fetches your real contribution data and uses it as the starting seed for a cellular automata simulation, generating a dynamic GIF that evolves right in your README.

### **✨ Features**

* **Quad-Life Variant:** Uses a 4-color symmetry rule where offspring inherit colors from their "parents," creating complex patterns.
* **Fully Automated:** Set it up once and let GitHub Actions refresh your simulation daily.
* **Customizable:** Control delays, output paths and more via simple workflow inputs.

### **🛠 Quick Start**

Add this to your `.github/workflows/update-game.yml`:

```yaml
name: Update Game of Life Game

on:
  schedule:
    - cron: '0 0 * * *'  # Daily at midnight UTC
  workflow_dispatch:  # Allow manual trigger

permissions:
  contents: write

jobs:
  update-game:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: apoupon/gh-game-of-life@v1.1.0
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          output-path: 'game.gif'
          strategy: 'loop'
```

**Full Documentation:** [View Repository](https://github.com/apoupon/gh-game-of-life)
