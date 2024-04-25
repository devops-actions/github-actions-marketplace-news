---
title: Docker Scout
date: 2024-04-25 19:27:35 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: docker/scout-action
marketplace: https://github.com/marketplace/actions/docker-scout
version: v1.8.0
dependentsNumber: "297"
---


Version updated for **docker/scout-action** to version **v1.8.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **297** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docker-scout) to find the latest changes.

## Release notes

## Highlights

- Add new `attestation-add` command to GHA
   This can be used to add Vex documents to images for instance. See the documentation on how to [suppress image vulnerabilities with VEX](https://docs.docker.com/scout/guides/vex/)
   ```yaml
   uses: docker/scout-action@v1
   with:
     command: attestation-add
     image: IMAGE
     file: in-toto.vex.json
     predicate-type: https://openvex.dev/ns/v0.2.0
   ```

## Bug Fixes / Improvements

- Improve format of EPSS score and percentile
  - Before:
     ```
     EPSS Score      : 0.000440
     EPSS Percentile : 0.092510
     ```
  - After:
     ```
     EPSS Score      : 0.04%
     EPSS Percentile : 9th percentile
     ```
- Fix `cves` command when used to analyse a local file system with a markdown output

---

## Contributors

[![@cdupuis](https://avatars.githubusercontent.com/u/206707?s=64&amp;v=4)](https://github.com/cdupuis) [![@LaurentGoderre](https://avatars.githubusercontent.com/u/1090826?s=64&amp;v=4)](https://github.com/LaurentGoderre) [![@eunomie](https://avatars.githubusercontent.com/u/1542321?s=64&amp;v=4)](https://github.com/eunomie)

