---
title: rs-clippy-check
date: 2023-08-13 10:54:51 +00:00
tags:
  - clechasseur
  - GitHub Actions
draft: false
repo: clechasseur/rs-clippy-check
marketplace: https://github.com/marketplace/actions/rs-clippy-check
version: v2.0.0
dependentsNumber: 2
---


Version updated for **clechasseur/rs-clippy-check** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rs-clippy-check) to find the latest changes.

## Release notes

Major release with two new features:

* New `working-directory` parameter allowing running the `cargo clippy` command in a subdirectory
* Summary now implemented using the [GitHub job summary API](https://github.blog/2022-05-09-supercharging-github-actions-with-job-summaries/) (see an example [here](https://github.com/clechasseur/rs-clippy-check/actions/runs/5845860248))

Note that the latter point makes the old action parameters `token` and `name` obsolete, so they have been removed. Also, it is no longer necessary to give the `rs-clippy-check` job special permissions to run properly.
