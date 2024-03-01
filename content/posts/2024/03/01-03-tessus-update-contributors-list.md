---
title: Update CONTRIBUTORS List
date: 2024-03-01 03:23:42 +00:00
tags:
  - tessus
  - GitHub Actions
draft: false
repo: tessus/update-contributors-list
marketplace: https://github.com/marketplace/actions/update-contributors-list
version: v1
dependentsNumber: "?"
---


Version updated for **tessus/update-contributors-list** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/update-contributors-list) to find the latest changes.

## Release notes

# What does it do?

This action retrieves a list of people who contributed to the repo and updates the `CONTRIBUTORS` text file in the root of the project.
The commit is done by `github-actions[bot] <github-actions[bot]@users.noreply.github.com>`.

The list of contributors will look like this:

```text
Contributor A <email-of-a@example.com>
Contributor B <email-of-b@example.com>
```

The list will be sorted alphabetically in a case-insensitive manner. Users with `[bot]` in their username or email will be omitted.

# How to use it?

```yaml
name: Update CONTRIBUTORS file
on:
  schedule:
    - cron: "0 0 1 * *"
  workflow_dispatch:
jobs:
  update_contributors:
    runs-on: ubuntu-latest
    steps:
      - name: update
        uses: tessus/update-contributors-list@v1
```
