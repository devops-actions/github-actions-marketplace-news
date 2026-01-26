---
title: IAM Validator
date: 2026-01-26 21:46:05 +00:00
tags:
  - boogy
  - GitHub Actions
draft: false
repo: https://github.com/boogy/iam-policy-validator
marketplace: https://github.com/marketplace/actions/iam-validator
version: v1.15.1
dependentsNumber: "?"
---


Version updated for **https://github.com/boogy/iam-policy-validator** to version **v1.15.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iam-validator) to find the latest changes.

## Action Summary

The IAM Policy Validator GitHub Action automates the validation of AWS IAM policies to identify security issues, such as overprivileged permissions, dangerous wildcards, privilege escalation risks, and configuration errors before deployment. It helps enforce organizational IAM requirements, catch vulnerabilities, and ensure adherence to least privilege principles, solving the problem of manual and inefficient policy review. Key capabilities include detecting syntax errors, privilege escalation chains, missing security controls, and enabling custom detection configurations for specific organizational needs.

## Release notes

- fix: correctly validate aws:RequestTag and aws:ResourceTag as action/… (#65) (29bbfb0)
- docs: add changelog entry for v1.15.0 (25de3c8)


## What's Changed
* fix: correctly validate aws:RequestTag and aws:ResourceTag as action/… by @boogy in https://github.com/boogy/iam-policy-validator/pull/65


**Full Changelog**: https://github.com/boogy/iam-policy-validator/compare/v1...v1.15.1
