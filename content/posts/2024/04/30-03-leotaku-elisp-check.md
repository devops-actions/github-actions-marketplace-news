---
title: Emacs Lisp check
date: 2024-04-30 03:26:19 +00:00
tags:
  - leotaku
  - GitHub Actions
draft: false
repo: leotaku/elisp-check
marketplace: https://github.com/marketplace/actions/emacs-lisp-check
version: v1.4.0
dependentsNumber: "189"
---


Version updated for **leotaku/elisp-check** to version **v1.4.0**.
- This action is used across all versions by **189** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/emacs-lisp-check) to find the latest changes.

## Release notes

This is a minor release with some fixes resulting in a few user-facing changes.

* Improve how certain errors raised during dependency installation and `load-file` checks are shown to the user. Thanks to @sbougerel for raising the issue that lead to this change!
* Use node20 instead of node16, the latter of which is slowly being depreciated in the GitHub Actions ecosystem.
* Change how `package-lint-main-file` is interpreted for multi-file packages, leading to more intuitive behavior in most cases. Thanks to @chaosemer for raising the issue that lead to this change!
* Disable signature checking while downloading dependencies on old Emacs versions below `27`. This was done to work around expired keys distributed with old versions of Emacs, and should be fine for running checks in isolated CI environments. Thanks to @gvol for raising the issue that lead to this change!

I hope this Action will continue to be useful to the Emacs community!
