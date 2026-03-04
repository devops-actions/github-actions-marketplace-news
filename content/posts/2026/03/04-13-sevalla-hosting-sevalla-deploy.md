---
title: Sevalla Deploy
date: 2026-03-04 13:31:35 +00:00
tags:
  - sevalla-hosting
  - GitHub Actions
draft: false
repo: https://github.com/sevalla-hosting/sevalla-deploy
marketplace: https://github.com/marketplace/actions/sevalla-deploy
version: v2.0.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sevalla-hosting/sevalla-deploy** to version **v2.0.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sevalla-deploy) to find the latest changes.

## Action Summary

The Sevalla GitHub Action automates the deployment and promotion of Sevalla applications and static sites directly from GitHub workflows. It enables tasks such as deploying applications, promoting pipelines, and managing static site deployments through Sevalla's API, with optional polling to track completion. This action streamlines continuous delivery processes by integrating with Sevalla's infrastructure, reducing manual intervention and improving deployment efficiency.

## Release notes

Migrated all API calls from Sevalla v2 to v3.                                                                                                                                                                                                                                                                           

  - Applications: `POST /v3/applications/{id}/deployments`, `GET /v3/applications/{id}/deployments/{deployment_id}`
  - Static Sites: `POST /v3/static-sites/{id}/deployments`, `GET /v3/static-sites/{id}/deployments/{deployment_id}`
  - Promotions: Moved from `/applications/promote` to `POST /v3/pipelines/{id}/promote` - new pipeline-id input required
  - Resource IDs now passed as URL path parameters instead of request body

  New input: `pipeline-id` (required for promote-app action).

  Full API reference: https://api-docs.sevalla.com
