---
title: setup-conda-standalone
date: 2026-04-01 06:17:10 +00:00
tags:
  - conda-incubator
  - GitHub Actions
draft: false
repo: https://github.com/conda-incubator/setup-conda-standalone
marketplace: https://github.com/marketplace/actions/setup-conda-standalone
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/conda-incubator/setup-conda-standalone** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-conda-standalone) to find the latest changes.

## Action Summary

The `setup-conda-standalone` GitHub Action automates the setup of the `conda-standalone` binary, enabling users to manage `conda` environments without requiring a full Miniconda or Miniforge installation. It simplifies workflows by downloading the `conda-standalone` binary from specified `conda` channels and configuring the environment for immediate use. This action is particularly useful for lightweight and portable environment management in CI pipelines or other automated processes.

## What's Changed

Initial release: `setup-conda-standalone` is a GitHub action to download and make available a [conda-standalone](https://github.com/conda/conda-standalone) binary without requiring a conda environment to install the package.

it downloads and extracts conda-standalone and only keeps the files needed to run conda. The location is exposed both as a build output and, optionally, as an environment variable.
