---
title: SonarQube Scan Action
date: 2025-11-18 05:14:19 +00:00
tags:
  - chetanbothra
  - GitHub Actions
draft: false
repo: https://github.com/chetanbothra/sonarqube-scan-action
marketplace: https://github.com/marketplace/actions/sonarqube-scan-action
version: v2
dependentsNumber: "?"
---


Version updated for **https://github.com/chetanbothra/sonarqube-scan-action** to version **v2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sonarqube-scan-action) to find the latest changes.

## Release notes

First release of SonarQube Scan GitHub Action.

✅ Runs SonarQube scanner
✅ Validates Quality Gate status
✅ Fails pipeline if Quality Gate fails
✅ Works with self-hosted SonarQube

Inputs:
- sonar_host
- sonar_token
- project_key

Usage:

```yaml
- name: Run SonarQube Scan
  uses: chetanbothra/sonarqube-scan-action@v1
  with:
    sonar_host: ${{ secrets.SONAR_HOST }}
    sonar_token: ${{ secrets.SONAR_TOKEN }}
    project_key: my-project

