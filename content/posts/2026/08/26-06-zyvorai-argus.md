---
title: Zyvor QA
date: 2026-08-26 06:15:33 +00:00
tags:
  - zyvorai
  - GitHub Actions
draft: false
repo: https://github.com/zyvorai/argus
marketplace: https://github.com/marketplace/actions/zyvor-qa
version: v1.1.1-ent-trial
dependentsNumber: "?"
actionType: Docker
actionSummary: |
  This GitHub Action automates several tasks related to software quality assurance and testing:
  
  1. It reads requirements, scores them for quality.
  2. It generates Playwright tests based on the requirements.
  3. It runs these tests after every deploy.
  4. It provides detailed feedback on what broke and why.
  5. It includes authorized security testing features.
  6. It offers a live operations console for monitoring.
  
  The action solves problems related to manual QA, repetitive testing, and ensures that quality assurance processes are automated and efficient.
---


Version updated for **https://github.com/zyvorai/argus** to version **v1.1.1-ent-trial**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zyvor-qa) to find the latest changes.

## Action Summary

This GitHub Action automates several tasks related to software quality assurance and testing:

1. It reads requirements, scores them for quality.
2. It generates Playwright tests based on the requirements.
3. It runs these tests after every deploy.
4. It provides detailed feedback on what broke and why.
5. It includes authorized security testing features.
6. It offers a live operations console for monitoring.

The action solves problems related to manual QA, repetitive testing, and ensures that quality assurance processes are automated and efficient.

## What's Changed

Self-contained compiled (Nuitka) executable — no Python source ships. Signed 30-day trial.token included.

```
tar xzf argus-enterprise-1.1.1-ent-trial-linux-amd64.tar.gz
cd argus-enterprise-1.1.1-ent-trial-linux-amd64
./install.sh
curl http://127.0.0.1:8090/health
```
