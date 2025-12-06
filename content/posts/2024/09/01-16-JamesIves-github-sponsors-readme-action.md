---
title: Add GitHub Sponsors to Readme
date: 2024-09-01 16:46:17 +00:00
tags:
  - JamesIves
  - GitHub Actions
draft: false
repo: JamesIves/github-sponsors-readme-action
marketplace: https://github.com/marketplace/actions/add-github-sponsors-to-readme
version: v1.5.0
dependentsNumber: "7"
---


Version updated for **JamesIves/github-sponsors-readme-action** to version **v1.5.0**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/add-github-sponsors-to-readme) to find the latest changes.

## Release notes

<!-- Release notes generated using configuration in .github/release.yml at releases/v1 -->

## What's Changed
### New Features 🎉
* feat: ✨ Adds ability to display anonymized private sponsors. Private sponsors will be displayed in the list, however any identifying information will be redacted. This can be useful if you want to display all sponsors, regardless of their privacy settings. To enable this feature, you can set `include-private` to `true` in your workflow.

* feat: ✨ Adds the ability to use `avatarUrl` in a sponsorship template. This is an exposed field from the GitHub API and typically matches `https://github.com/{username}.png` (unless `include-private` is set to `true` that is)

```yml
      - name: Generate Sponsors 💖
        uses: JamesIves/github-sponsors-readme-action@v1
        with:
          token: ${{ secrets.PAT }}
          file: 'README.md'
          minimum: 2500
          template: '<a href="https://github.com/{{{ login }}}"><img src="{{{ avatarUrl }}}" width="80px" alt="{{{ login }}}" /></a>&nbsp;&nbsp;'
          marker: 'real-premium'
          active-only: false
          include-private: true
```

[All of the above features have been documented in the README](https://github.com/JamesIves/github-sponsors-readme-action) 📖 

**Full Changelog**: https://github.com/JamesIves/github-sponsors-readme-action/compare/v1...v1.5.0
