---
title: cuda-toolkit-koboldcpp
date: 2026-03-27 13:57:10 +00:00
tags:
  - LostRuins
  - GitHub Actions
draft: false
repo: https://github.com/LostRuins/cuda-toolkit
marketplace: https://github.com/marketplace/actions/cuda-toolkit-koboldcpp
version: v1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/LostRuins/cuda-toolkit** to version **v1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cuda-toolkit-koboldcpp) to find the latest changes.

## Action Summary

The `cuda-toolkit` GitHub Action automates the installation of the NVIDIA CUDA Toolkit on GitHub-hosted runners, enabling GPU-accelerated development workflows. It sets up environment variables (`CUDA_PATH` and `GITHUB_PATH`) to simplify access to CUDA tools and commands like `nvcc` in subsequent steps. This action addresses the complexity of configuring CUDA environments by offering streamlined installation methods, support for specific CUDA versions, and optional package customization.

## Release notes

cuda toolkit modified for koboldcpp
changes:
- increase nodejs version to solve deprecation issue

Caution: I have not decided if this fork will be maintained! I just need it to update nodejs. DO NOT BLINDLY RELY ON IT 

Forked from https://github.com/Jimver/cuda-toolkit
