---
title: PR emote generator
date: 2023-10-25 03:10:01 +00:00
tags:
  - rcmtcristian
  - GitHub Actions
draft: false
repo: rcmtcristian/gitemote
marketplace: https://github.com/marketplace/actions/pr-emote-generator
version: Community
dependentsNumber: "?"
---


Version updated for **rcmtcristian/gitemote** to version **Community**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-emote-generator) to find the latest changes.

## Release notes

# GitEmote GitHub Action

GitEmote is a GitHub Action that adds an emote reaction to new pull requests based on their titles. It's a fun way to express your emotions and engagement with incoming changes!

## Usage

To use GitEmote in your repository, follow these steps:

1. Create a `.github/workflows/gitemote.yml` file in your repository.

2. Add the following code to the `gitemote.yml` file:

```yaml
name: GitEmote

on:
  pull_request:
    types:
      - opened

jobs:
  gitemote:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2

      - name: Run GitEmote
        uses: rcmtcristian/gitemote@main
        with:
          with:
        	GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

Now, whenever someone creates a new pull request in your repository with a title containing the specified keywords, GitEmote will react with the chosen emote.
