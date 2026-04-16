---
title: Outline Security Reporter
date: 2026-04-16 14:13:33 +00:00
tags:
  - narthanaj
  - GitHub Actions
draft: false
repo: https://github.com/narthanaj/outline-uploader
marketplace: https://github.com/marketplace/actions/outline-security-reporter
version: 1.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/narthanaj/outline-uploader** to version **1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/outline-security-reporter) to find the latest changes.

## Action Summary

The *Outline Security Scan & Upload Action* is a GitHub Action that automates security scanning of your repository using **Checkov** and **Trivy**, identifying vulnerabilities, misconfigurations, and secrets. It then formats the scan results into Markdown and uploads them to a specified collection in a self-hosted [Outline](https://www.getoutline.com/) instance. This action streamlines security assessments and documentation by integrating scanning, reporting, and centralized result storage into your CI/CD workflows.

## What's Changed

Removed --require-hashes from pip install. The flag requires hashes for every transitive dependency, which is impractical for checkov (100+ transitive deps). Dependencies remain version-pinned in requirements.txt.
