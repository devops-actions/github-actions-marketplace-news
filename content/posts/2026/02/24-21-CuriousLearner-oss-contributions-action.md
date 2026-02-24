---
title: OSS Contributions Generator
date: 2026-02-24 21:42:16 +00:00
tags:
  - CuriousLearner
  - GitHub Actions
draft: false
repo: https://github.com/CuriousLearner/oss-contributions-action
marketplace: https://github.com/marketplace/actions/oss-contributions-generator
version: v1
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/CuriousLearner/oss-contributions-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-contributions-generator) to find the latest changes.

## Action Summary

The OSS Contributions Action is a GitHub Action designed to automate the process of generating and updating a section in a repository's README file that lists a user's open-source contributions (merged pull requests in repositories they do not own). It helps users easily showcase their contributions to various open-source projects without manual updates by querying GitHub for relevant PRs and formatting the results in a customizable markdown format. This action simplifies maintaining an up-to-date record of contributions, making it ideal for developers who want to highlight their work in open-source communities.

## Release notes

## OSS Contributions Generator v1.0.0                                                                               
                                                                  
  Automatically generate a markdown section listing your open-source contributions (merged PRs in repos you don't own)
   and update your README.

  ### Features

  - Fetches all merged PRs via GitHub Search API with pagination and rate limit handling
  - Include/exclude filtering by repo or org (exclude takes precedence)
  - Custom display names and descriptions via `repo_overrides`
  - Auto-updates README between configurable HTML comment markers
  - Runs as a Docker-based GitHub Action — no setup beyond adding the workflow
  - `GITHUB_TOKEN` is automatically provided, no secrets to configure

  ### Quick Start

  Add markers to your README:

  ```markdown
  <!-- OSS_CONTRIBUTIONS_START -->
  <!-- OSS_CONTRIBUTIONS_END -->
  ```

  Add the workflow:

  ```yaml
  - uses: CuriousLearner/oss-contributions-action@v1
    with:
      config_file: ".contributions.yml"
  ```

  See the [README](https://github.com/CuriousLearner/oss-contributions-action#readme) for full configuration options.

