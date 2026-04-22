---
title: Regis Security Analysis
date: 2026-04-22 21:24:10 +00:00
tags:
  - trivoallan
  - GitHub Actions
draft: false
repo: https://github.com/trivoallan/regis
marketplace: https://github.com/marketplace/actions/regis-security-analysis
version: v0.29.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/trivoallan/regis** to version **v0.29.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/regis-security-analysis) to find the latest changes.

## Action Summary

Regis is a GitHub Action designed for container security and compliance in CI/CD pipelines, providing automated analysis of container images from OCI-compliant registries. It integrates multiple industry-standard tools to perform vulnerability scanning, metadata inspection, and policy enforcement, while generating both machine-readable (JSON) and interactive (HTML) reports. By offering customizable playbooks, efficient caching, and seamless integration into CI/CD workflows, it simplifies security, compliance, and best practices enforcement for production-ready environments.

## What's Changed

## [0.29.0](https://github.com/trivoallan/regis/compare/v0.28.6...v0.29.0) (2026-04-22)


### Features

* **ci:** integrate pip-audit severity gate, SBOM artifacts, and provenance attestation ([#458](https://github.com/trivoallan/regis/issues/458)) ([5a64588](https://github.com/trivoallan/regis/commit/5a64588cfa2af0e3fdf9d4d897c4073cfbb130aa))
* **ci:** Sprint 1 — M001 deliverables (snapshot retention, snapshot date, action dogfooding, docs) ([#494](https://github.com/trivoallan/regis/issues/494)) ([16dd6af](https://github.com/trivoallan/regis/commit/16dd6af523421aae618f6bd28108f70c7771e47d))
* **cli:** add create-playbook OMC skill ([#435](https://github.com/trivoallan/regis/issues/435)) ([987ca3a](https://github.com/trivoallan/regis/commit/987ca3ac63a15bf29cec5f651105bee4cd639b61))
* **playbook:** playbook bundles with metadata validation and --rerun support ([#438](https://github.com/trivoallan/regis/issues/438)) ([01622e2](https://github.com/trivoallan/regis/commit/01622e203425d49ae0679e3f144588bfc281921c))


### Bug Fixes

* **deps:** cap webpack below 5.106.0 to fix Docusaurus build ([#416](https://github.com/trivoallan/regis/issues/416)) ([cb2f93c](https://github.com/trivoallan/regis/commit/cb2f93cbf50033f99dabaffce721cfabfe18c078))
