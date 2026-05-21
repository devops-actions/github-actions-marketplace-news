---
title: Wait for Job, Artifact, File
date: 2026-05-21 06:43:07 +00:00
tags:
  - lexbritvin
  - GitHub Actions
draft: false
repo: https://github.com/lexbritvin/wait-action
marketplace: https://github.com/marketplace/actions/wait-for-job-artifact-file
version: v2.0.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lexbritvin/wait-action** to version **v2.0.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wait-for-job-artifact-file) to find the latest changes.

## Action Summary

This GitHub Action automates the process of waiting for specific jobs, artifacts, or files to complete within a workflow, providing advanced matching capabilities such as regex patterns and support for job matrices. It helps streamline complex workflows by enabling synchronization between dependent tasks and ensuring required resources are available before proceeding, all while offering configurable timeouts and detailed feedback. The action is particularly useful for coordinating multi-step pipelines and handling dynamic or parallel job setups.

## What's Changed

**Breaking:** action runtime bumped from Node 20 to Node 24.

Required because GitHub Actions forces the cutover on 2026-06-02 and removes Node 20 from runners on 2026-09-16. Self-hosted runners must have Node 24 available.

Consumers should update `uses: lexbritvin/wait-action@v1` → `@v2`. The `v1` floating tag has been reset back to the pre-Node24 commit so existing pins keep their original behavior.
