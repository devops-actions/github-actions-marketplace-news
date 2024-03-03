---
title: Bage Code Lines Count
date: 2024-03-03 19:18:47 +00:00
tags:
  - MikhailEpatko
  - GitHub Actions
draft: false
repo: MikhailEpatko/code-lines-counter-action
marketplace: https://github.com/marketplace/actions/bage-code-lines-count
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **MikhailEpatko/code-lines-counter-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bage-code-lines-count) to find the latest changes.

## Release notes

![Generated Button](https://github.com/MikhailEpatko/code-lines-counter-action/blob/image-data/total-lines.svg)

In this version, you use [posix-egrep](https://www.gnu.org/software/findutils/manual/html_node/find_html/posix_002degrep-regular-expression-syntax.html) to pass a regular expression to the action to exclude or include file lines counts.
In next releases it will be simplified. 
To install action copy the workflow code into a .github/workflows/main.yml file in your repository

```
on: [push]

jobs:
  lines_counter_job:
    runs-on: ubuntu-latest
    name: A job to count lines of code and generate badge
    steps:
      - uses: actions/checkout@v4
      - id: counting
        uses: ./                   # write the action name instead
        with:
          include-files: '.*\.sh'  # default value - include all files
          exclude-files: ''        # default value - exclude no files
```

See [README.md](https://github.com/MikhailEpatko/code-lines-counter-action/blob/main/README.md) for more regex examples.
The badge will be generated in image-data branche of your repository. For this you need to configure [Setting the permissions of the GITHUB_TOKEN for your repository](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository#setting-the-permissions-of-the-github_token-for-your-repository).
