---
title: Setup ROS environment
date: 2024-04-22 03:33:50 +00:00
tags:
  - ros-tooling
  - GitHub Actions
draft: false
repo: ros-tooling/setup-ros
marketplace: https://github.com/marketplace/actions/setup-ros-environment
version: 0.7.2
dependentsNumber: "1,573"
---


Version updated for **ros-tooling/setup-ros** to version **0.7.2**.
- This action is used across all versions by **1,573** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ros-environment) to find the latest changes.

## Release notes

* Add Ubuntu 24.04 Noble support (#658)
    * This should not affect existing workflows.
    * Since the [`ubuntu-24.04` runner is not available yet](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners/about-github-hosted-runners#supported-runners-and-hardware-resources), you must use Docker to use Ubuntu 24.04 Noble, e.g.:
        ```diff
         jobs:
           build:
        -    runs-on: ubuntu-22.04
        +    runs-on: ubuntu-latest  # Doesn't really matter
        +    container:
        +      image: ubuntu:24.04
             # ...
        ```
* Remove python3-flake8 workaround for Noble (#669)
