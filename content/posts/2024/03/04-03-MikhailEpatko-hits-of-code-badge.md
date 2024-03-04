---
title: Hits of Code Bage
date: 2024-03-04 03:07:42 +00:00
tags:
  - MikhailEpatko
  - GitHub Actions
draft: false
repo: MikhailEpatko/hits-of-code-badge
marketplace: https://github.com/marketplace/actions/hits-of-code-bage
version: v2.0.0
dependentsNumber: "?"
---


Version updated for **MikhailEpatko/hits-of-code-badge** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hits-of-code-bage) to find the latest changes.

## Release notes

GitHub action to generate Hits-of-Code badge with hoc calculated metric.

**hoc** - is a command line tool to calculate Hits-of-Code metric in a source code repository (at the moment it supports Git 2+ and Subversion 1.7+). 
 You can read more about Hits-of-Code metric in this blog post: [Hits-of-Code Instead of SLoC](http://www.yegor256.com/2014/11/14/hits-of-code.html).

[**hoc** project page](https://github.com/yegor256/hoc/tree/master)

To install action copy the workflow code into a .github/workflows/main.yml file in your repository

```
on: [push]

jobs:
  lines_counter_job:
    runs-on: ubuntu-latest
    name: A job to count hits of code
    steps:
      - uses: actions/checkout@v4
      - id: badge-generator
        uses: ./                  # write the action name instead
        with:
          before: '2024-03-03'    # default value - now day
          dir: '.'                # default value - include all files
          exclude: 'vendor/**'    # no default value 
          since: '2000-01-01'     # default value - '2000-01-01'
```

**Changes:**
The badge will be generated in ./output/hits.svg file. Use whatever tool you prefer to upload it somewhere.
