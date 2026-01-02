---
title: Repository Insights Hoarder
date: 2026-01-02 07:49:36 +00:00
tags:
  - carceneaux
  - GitHub Actions
draft: false
repo: https://github.com/carceneaux/repository-insights-hoarder
marketplace: https://github.com/marketplace/actions/repository-insights-hoarder
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/carceneaux/repository-insights-hoarder** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repository-insights-hoarder) to find the latest changes.

## Action Summary

This GitHub Action, "Repository Insights Hoarder," automates the collection and long-term storage of repository insights, such as stargazers, commits, contributors, traffic views, and clones, which are otherwise only available for 14 days through GitHub. It retrieves insights using the GitHub REST and GraphQL APIs, saves them in JSON or CSV format, and commits the data to a specified branch, enabling ongoing analysis and archival of repository metrics.

## Release notes

This action gathers insights about your GitHub repository, including stargazers, commits, contributors, traffic views, and clones over time, such that the data is stored for longer than GitHub's 14 day history. The collected data can be stored in either JSON or CSV format and committed directly to a specified branch in your repository, enabling easy tracking and analysis of repository metrics over time.

Features:

* Collects stargazers count, commits count, contributor count, traffic views and clones.
* JSON and CSV Support: Choose between JSON or CSV format for storing the collected data.
* Supports processing of multiple repositories using the `all_repos` input
* Automated File Management: Automatically commits the insights file to a specified branch in your repository, ensuring historical data is preserved.
* Configurable Directory Structure: Allows you to specify the root directory for storing the insights file, with additional directories based on the repository owner and name.
* Supports using a different token for (1) retrieving insights and (2) committing insights to a repository for least privilege access

Bug Reporting and Feedback:

Please report any bugs or provide feedback via the [issues page](https://github.com/carceneaux/repository-insights-hoarder/issues/new/choose) on GitHub.

Thanks to @PolygeneLubricants for the inspiration!
