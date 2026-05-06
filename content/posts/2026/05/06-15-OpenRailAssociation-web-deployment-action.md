---
title: Website Preview and Deployment via SSH
date: 2026-05-06 15:05:05 +00:00
tags:
  - OpenRailAssociation
  - GitHub Actions
draft: false
repo: https://github.com/OpenRailAssociation/web-deployment-action
marketplace: https://github.com/marketplace/actions/website-preview-and-deployment-via-ssh
version: v1.3.1
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/OpenRailAssociation/web-deployment-action** to version **v1.3.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/website-preview-and-deployment-via-ssh) to find the latest changes.

## Action Summary

The **Website Preview and Deployment Action** automates the deployment of a built website artifact to both production and preview environments via SSH, with an optional link-checking feature. It streamlines the process of handling website deployments by supporting automated preview deployments for pull requests, conditional production deployments, and enhanced GitHub integration through PR comments and step summaries. This action is ideal for teams looking to simplify and standardize their website deployment workflows while ensuring link integrity.

## What's Changed

## [1.3.1](https://github.com/OpenRailAssociation/web-deployment-action/compare/v1.3.0...v1.3.1) (2026-05-06)


### 🔥 Bug Fixes

* previews not cleaned up after merge ([#59](https://github.com/OpenRailAssociation/web-deployment-action/issues/59)) ([e612557](https://github.com/OpenRailAssociation/web-deployment-action/commit/e612557671929b735b376f8b263c0c79528da092))


### 📦 CI Improvements

* add zizmor workflow ([#55](https://github.com/OpenRailAssociation/web-deployment-action/issues/55)) ([b26121b](https://github.com/OpenRailAssociation/web-deployment-action/commit/b26121b8bd8a4a78a06e8adf9bb60166fb28ffdf))
* restrict some workflows to only run upstream ([#58](https://github.com/OpenRailAssociation/web-deployment-action/issues/58)) ([551d30b](https://github.com/OpenRailAssociation/web-deployment-action/commit/551d30b432e76d34944a4f2a218e25316133e16c))


### ⚙️ Chores

* **config:** update renovate preset name ([debe1d9](https://github.com/OpenRailAssociation/web-deployment-action/commit/debe1d9f31aa8e3d8382dc2a57bb31a16ed87368))
* **deps:** pin dependencies ([#57](https://github.com/OpenRailAssociation/web-deployment-action/issues/57)) ([5e70db8](https://github.com/OpenRailAssociation/web-deployment-action/commit/5e70db8c781d902810450a7e37f61ba8a641ae87))
* **deps:** update googleapis/release-please-action action to v5 ([#53](https://github.com/OpenRailAssociation/web-deployment-action/issues/53)) ([3356619](https://github.com/OpenRailAssociation/web-deployment-action/commit/3356619bf4a17a10baf3a8f19f927ba64f0afa96))
* improve workflow for proper version/digest in README ([#56](https://github.com/OpenRailAssociation/web-deployment-action/issues/56)) ([0aa692a](https://github.com/OpenRailAssociation/web-deployment-action/commit/0aa692a56c6797dba52b20590399a44b4a52dbf6))
