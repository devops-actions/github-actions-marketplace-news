---
title: Setup Sparkle framework tools
date: 2023-11-04 19:14:16 +00:00
tags:
  - jozefizso
  - GitHub Actions
draft: false
repo: jozefizso/setup-sparkle
marketplace: https://github.com/marketplace/actions/setup-sparkle-framework-tools
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **jozefizso/setup-sparkle** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-sparkle-framework-tools) to find the latest changes.

## Release notes

Setup the [Sparkle framework](https://github.com/sparkle-project/Sparkle) tools in workflow.

### Usage

```yml
- name: setup sparkle
  uses: jozefizso/setup-sparkle@v1
  with:
    version: 2.5.1

- name: generate appcast
  run: generate_appcast /path/to/your/updates_folder/
```

List of Sparkle releases: https://github.com/sparkle-project/Sparkle/releases
