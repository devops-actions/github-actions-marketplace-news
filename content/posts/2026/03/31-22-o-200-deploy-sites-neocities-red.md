---
title: Deploy to Neocities (using neocities-red gem)
date: 2026-03-31 22:12:41 +00:00
tags:
  - o-200
  - GitHub Actions
draft: false
repo: https://github.com/o-200/deploy-sites-neocities-red
marketplace: https://github.com/marketplace/actions/deploy-to-neocities-using-neocities-red-gem
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/o-200/deploy-sites-neocities-red** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-to-neocities-using-neocities-red-gem) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment of website files to Neocities, a static site hosting platform. It simplifies the process of publishing updates for static sites built with frameworks like Hugo, Jekyll, or plain HTML/CSS/JS, ensuring efficient and consistent deployment. Key capabilities include seamless integration with GitHub workflows and secure API token management for authentication.

## What's Changed

# Deploy to Neocities

A GitHub Action for deploying a folder to [Neocities](https://neocities.org) using [`neocities-red`](https://github.com/o-200/neocities-red).

This action is useful for giant website, static sites built with tools like Hugo, Jekyll, Eleventy, Astro, VitePress, or plain HTML/CSS/JS projects.

## Usage

### Basic example

1) place this code in .github/workflows

```yaml
name: Deploy to neocities.org

on:
  push:
    branches:
      - main

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Run your action
        uses: o-200/deploy-sites-neocities-red@v1
        with:
          key: ${{ secrets.NEOCITIES_API_TOKEN }}
```

2) place your neocities api token into github secrets

3) Now, it ready to work!

### How to get API TOKEN? 
1) Open your account settings in neocities
2) Open "Manage Site Settings" in "Sites"
3) Go to "API" and take your API token

### How to place api token in github secrets?
1) Open your website's github repository 
2) Settings 
3) Secrets And Variables 
4) New Repository Secret
5) Name - "NEOCITIES_API_TOKEN" (without quotes), put your api key in Secret
6) Done!

**Full Changelog**: https://github.com/o-200/deploy-sites-neocities-red/compare/v1...v1
