---
title: GitHub Action for Perls DistZilla
date: 2023-12-24 11:15:08 +00:00
tags:
  - jonasbn
  - GitHub Actions
draft: false
repo: jonasbn/github-action-perl-dist-zilla
marketplace: https://github.com/marketplace/actions/github-action-for-perl-s-dist-zilla
version: 0.3.0
dependentsNumber: "12"
---


Version updated for **jonasbn/github-action-perl-dist-zilla** to version **0.3.0**.
- This action is used across all versions by **12** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-action-for-perl-s-dist-zilla) to find the latest changes.

## Release notes

## 0.3.0 2022-09-03 Feature release, update not required

- Bumped [Ebirah](https://github.com/jonasbn/ebirah) requirement from version 0.6.0 to 0.7.0. Please see [Ebirah](https://github.com/jonasbn/ebirah) change log for details

- This release holds a set of enhancements by @glasswalk3r via PR: [#22](https://github.com/jonasbn/github-action-perl-dist-zilla/pull/22)
  - Allows repositories that does not have a `cpanfile` to have their dependencies installed
  - Does optional configuration of the [CPAN](https://metacpan.org/pod/CPAN) client, since it might be required by some distributions
  - Changed to use of Bash, since it is available in the Docker image
  - Fixed entry point so it can be tested outside GitHub eco-system
