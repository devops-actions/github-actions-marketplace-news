---
title: Docker Scout
date: 2024-04-16 03:32:13 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: docker/scout-action
marketplace: https://github.com/marketplace/actions/docker-scout
version: v1.7.0
dependentsNumber: "275"
---


Version updated for **docker/scout-action** to version **v1.7.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **275** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-scout) to find the latest changes.

## Release notes

## Highlights

- Allow to specify format (`json`, `list`, `spdx`) and output file on `sbom` command
  ```yaml
  uses: docker/scout-action@v1
  with:
      command: sbom
      image: alpine
      format: list
      output: alpine_package_list.txt
  ```

## Bug Fixes / Improvements

- Fix adding attestation (like vex statements) to a private image
- fix image processing for `scratch` "images"
- Add classifier for Joomla

---

## Contributors

[![@cdupuis](https://avatars.githubusercontent.com/u/206707?s=64&amp;v=4)](https://github.com/cdupuis) [![@eunomie](https://avatars.githubusercontent.com/u/1542321?s=64&amp;v=4)](https://github.com/eunomie) [![@chrispatrick](https://avatars.githubusercontent.com/u/1906514?s=64&amp;v=4)](https://github.com/chrispatrick) [![@LaurentGoderre](https://avatars.githubusercontent.com/u/1090826?s=64&amp;v=4)](https://github.com/LaurentGoderre)  [![@pnorton5432](https://avatars.githubusercontent.com/u/141742655?s=64&amp;v=4)](https://github.com/pnorton5432)

