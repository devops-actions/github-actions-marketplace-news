---
title: Setup Sparkle framework tools
date: 2024-05-07 03:32:06 +00:00
tags:
  - jozefizso
  - GitHub Actions
draft: false
repo: jozefizso/setup-sparkle
marketplace: https://github.com/marketplace/actions/setup-sparkle-framework-tools
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **jozefizso/setup-sparkle** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-sparkle-framework-tools) to find the latest changes.

## Release notes

Setup the [Sparkle framework](https://github.com/sparkle-project/Sparkle) tools in workflow.

### Usage

```yml
- name: setup sparkle
  uses: jozefizso/setup-sparkle@v1
  with:
    version: 2.6.2

- name: generate appcast
  run: generate_appcast /path/to/your/updates_folder/
```

List of Sparkle releases: https://github.com/sparkle-project/Sparkle/releases

> [!IMPORTANT]  
> Sparkle v2.6.2 is an important security update. Please, ensure you are using
> the latest version.

