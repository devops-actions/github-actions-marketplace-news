---
title: Bage Code Lines Count
date: 2024-03-04 11:17:23 +00:00
tags:
  - MikhailEpatko
  - GitHub Actions
draft: false
repo: MikhailEpatko/code-lines-counter-badge
marketplace: https://github.com/marketplace/actions/bage-code-lines-count
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **MikhailEpatko/code-lines-counter-badge** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bage-code-lines-count) to find the latest changes.

## Release notes

**GitHub action to generate Liines-of-Code badge with lines of code count**

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
          include-files: '.*\**'  # default value - include all files
          exclude-files: ''        # default value - exclude no files
```

See [README.md](https://github.com/MikhailEpatko/code-lines-counter-badge/blob/main/README.md) for more regex examples.

**Changes**:
The badge will be generated into ./output/total-lines.svg file. Use whatever tool you prefer to upload it somewhere.
