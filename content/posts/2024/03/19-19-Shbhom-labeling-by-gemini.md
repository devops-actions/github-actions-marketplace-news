---
title: Labeling by Gemini
date: 2024-03-19 19:25:33 +00:00
tags:
  - Shbhom
  - GitHub Actions
draft: false
repo: Shbhom/labeling-by-gemini
marketplace: https://github.com/marketplace/actions/labeling-by-gemini
version: v1
dependentsNumber: "2"
---


Version updated for **Shbhom/labeling-by-gemini** to version **v1**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/labeling-by-gemini) to find the latest changes.

## Release notes

Get your newly created, edited issues to be labelled automatically using Gemini and octokit

here's an example workflow
## Example

```yaml
on:
  issues:
    types: [opened, edited]

jobs:
  test:
    name: test
    runs-on: ubuntu-latest

    steps:
      - uses: shbhom/labeling-by-gemini@main
        with:
          gemini-api-key: ${{ secrets.GEMINI_API_KEY }}
```

