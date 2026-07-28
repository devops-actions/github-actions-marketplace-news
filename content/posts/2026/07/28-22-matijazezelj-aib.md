---
title: AIB Infra Scan
date: 2026-07-28 22:54:01 +00:00
tags:
  - matijazezelj
  - GitHub Actions
draft: false
repo: https://github.com/matijazezelj/aib
marketplace: https://github.com/marketplace/actions/aib-infra-scan
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scanning and analysis of infrastructure as code (IaC) using multiple parsers, including Terraform, Kubernetes, Ansible, Docker Compose, CloudFormation, and Pulumi. It builds a dependency graph from IaC configurations, enabling users to inspect blast radius, drift, certificate expiry, and security findings in one tool. The action supports scanning different sources such as local or remote state files and can also perform live cluster scans.
---


Version updated for **https://github.com/matijazezelj/aib** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aib-infra-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the scanning and analysis of infrastructure as code (IaC) using multiple parsers, including Terraform, Kubernetes, Ansible, Docker Compose, CloudFormation, and Pulumi. It builds a dependency graph from IaC configurations, enabling users to inspect blast radius, drift, certificate expiry, and security findings in one tool. The action supports scanning different sources such as local or remote state files and can also perform live cluster scans.

## What's Changed

## What's Changed
* chore: remove unused parser and graph code by @matijazezelj in https://github.com/matijazezelj/aib/pull/27
* Fix Fable audit findings: graph perf, CLI tests, config and server hardening by @matijazezelj in https://github.com/matijazezelj/aib/pull/29
* Fix/ansible credential redaction by @matijazezelj in https://github.com/matijazezelj/aib/pull/35
* Fix/security hardening by @matijazezelj in https://github.com/matijazezelj/aib/pull/36


**Full Changelog**: https://github.com/matijazezelj/aib/compare/v1.4.5...v1
