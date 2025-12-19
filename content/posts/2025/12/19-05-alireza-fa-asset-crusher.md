---
title: Asset Crusher
date: 2025-12-19 05:32:19 +00:00
tags:
  - alireza-fa
  - GitHub Actions
draft: false
repo: https://github.com/alireza-fa/asset-crusher
marketplace: https://github.com/marketplace/actions/asset-crusher
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/alireza-fa/asset-crusher** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/asset-crusher) to find the latest changes.

## Release notes

**Asset Crusher just got smarter.** 🧠

In previous versions, converting `logo.png` to `logo.webp` would break your website because the code still pointed to the old `.png` file. **Not anymore.**

### ✨ New in v1.1.0: **Auto-Refactor Protocol**

Now, when Asset Crusher optimizes an image, it automatically hunts down references to that file in your source code and updates them.

- **📝 Smart Search & Replace:** Automatically updates references in `.html`, `.css`, `.js`, `.jsx`, `.ts`, `.tsx`, `.vue`, `.svelte`, `.php`, and `.json` files.
- **🔄 Seamless Transition:** Your `<img>` tags and CSS `background-image` rules are updated to point to the new `.webp` versions instantly.

### 🔥 Core Features:
- **WebP Conversion:** Reduces image size by up to 80%.
- **H.265 Video:** Optimizes video assets efficiently.
- **Nuclear History Rewrite:** Keeps your `.git` folder tiny by amending commits (Default).

### 📦 Quick Update

```yaml
- name: Crush Assets
  uses: alireza/asset-crusher@v1.1.0  # Updated to v1.1.0
  with:
    quality: '80'
```

Check the [README](https://github.com/alireza-fa/github-asset-crusher/blob/main/README.md) for full documentation.
