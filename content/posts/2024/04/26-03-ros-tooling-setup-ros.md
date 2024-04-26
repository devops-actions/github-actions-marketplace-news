---
title: Setup ROS environment
date: 2024-04-26 03:06:17 +00:00
tags:
  - ros-tooling
  - GitHub Actions
draft: false
repo: ros-tooling/setup-ros
marketplace: https://github.com/marketplace/actions/setup-ros-environment
version: 0.7.3
dependentsNumber: "1,584"
---


Version updated for **ros-tooling/setup-ros** to version **0.7.3**.
- This action is used across all versions by **1,584** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-ros-environment) to find the latest changes.

## Release notes

* Add support for Jazzy (#673)
    * Jazzy binaries on Ubuntu are [only available from the testing apt repository](https://docs.ros.org/en/jazzy/Installation/Alternatives/Ubuntu-Development-Setup.html#enable-required-repositories) since Jazzy hasn't been released yet. To use the testing repository, use the [`use-ros2-testing` option](https://github.com/ros-tooling/setup-ros#Use-pre-release-ROS-2-binaries-for-testing):
        ```yaml
        - uses: ros-tooling/setup-ros@v0.7
          with:
            required-ros-distributions: jazzy
            use-ros2-testing: true
        ```
