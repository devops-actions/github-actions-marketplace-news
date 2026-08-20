---
title: Delivery Autopilot Runner
date: 2026-08-20 22:36:25 +00:00
tags:
  - Tekunda
  - GitHub Actions
draft: false
repo: https://github.com/Tekunda/autopilot-runner
marketplace: https://github.com/marketplace/actions/delivery-autopilot-runner
version: v1.0.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Delivery Autopilot Runner GitHub Action automates the process of creating pull requests from tickets in a tracker to reviewed code, using an AI pipeline. It requires a Delivery Autopilot subscription and works by checking out the repository on GitHub's runners, running quality checks, and opening pull requests. The action does not send source code to Tekunda servers but uses your chosen model provider for coding.
---


Version updated for **https://github.com/Tekunda/autopilot-runner** to version **v1.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delivery-autopilot-runner) to find the latest changes.

## Action Summary

The Delivery Autopilot Runner GitHub Action automates the process of creating pull requests from tickets in a tracker to reviewed code, using an AI pipeline. It requires a Delivery Autopilot subscription and works by checking out the repository on GitHub's runners, running quality checks, and opening pull requests. The action does not send source code to Tekunda servers but uses your chosen model provider for coding.

## What's Changed

A hit turn limit no longer fails the build job; the produced PR flows to the gate.
