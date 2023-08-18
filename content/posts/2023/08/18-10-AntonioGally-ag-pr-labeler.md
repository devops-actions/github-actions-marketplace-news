---
title: PR labeler - commit based
date: 2023-08-18 10:55:42 +00:00
tags:
  - AntonioGally
  - GitHub Actions
draft: false
repo: AntonioGally/ag-pr-labeler
marketplace: https://github.com/marketplace/actions/pr-labeler-commit-based
version: v0.1.0
dependentsNumber: 1
---


Version updated for **AntonioGally/ag-pr-labeler** to version **v0.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-labeler-commit-based) to find the latest changes.

## Release notes

### Usage
Include this action in your workflow file. Here is an example:

```yml
on:
  pull_request:
    types: [opened] #only closed pr

jobs:
  labeler:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Run label CI
        uses: AntonioGally/ag-pr-labeler/@main
        with:
          createRepoLabels: true
          githubToken: ${{ secrets.GITHUB_TOKEN }} #Github default token, PATs are recomended
```

### Observations
This action uses the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) guideline to add labels. The code read all commits inside the PR and with regex, extract the type of each commit. For each commit type, one label is added. Besides that, if you're merging a branch with the prefix `itsm` or `hotfix`, will be added labels for those as well. 

### Example

<img width="800" alt="image" src="https://github.com/AntonioGally/ag-pr-labeler/assets/68209906/cda7e0cb-7c02-46de-8055-4ef1c5fc96ad">
<br/>
<img width="190" alt="image" src="https://github.com/AntonioGally/ag-pr-labeler/assets/68209906/88daca4a-0e5b-46e1-8429-ac8fe8fcc2dc">
