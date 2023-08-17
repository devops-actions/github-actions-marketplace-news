---
title: rs-fmt-check
date: 2023-08-17 18:57:57 +00:00
tags:
  - clechasseur
  - GitHub Actions
draft: false
repo: clechasseur/rs-fmt-check
marketplace: https://github.com/marketplace/actions/rs-fmt-check
version: v1.1.0
dependentsNumber: '?'
---


Version updated for **clechasseur/rs-fmt-check** to version **v1.1.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rs-fmt-check) to find the latest changes.

## Release notes

Minor release with some changes and fixes:

* All `rustfmt` suggestions are now included in the job summary report. This helps if there are more than 10 annotations to add to a PR, because GitHub currently limits this to 10 (a note about this limitation has been added to the readme).
* If `rustfmt` has suggestions, the action will fail, allowing it to be used to detect unformatted code in a CI process. (This is a bugfix as that was the original intended behavior 😅)
