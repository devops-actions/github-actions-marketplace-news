---
title: Deploy Hugo to S3
date: 2026-03-08 05:50:49 +00:00
tags:
  - AlbertMorenoDEV
  - GitHub Actions
draft: false
repo: https://github.com/AlbertMorenoDEV/deploy-hugo-to-s3-action
marketplace: https://github.com/marketplace/actions/deploy-hugo-to-s3
version: v0.0.15
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/AlbertMorenoDEV/deploy-hugo-to-s3-action** to version **v0.0.15**.
- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deploy-hugo-to-s3) to find the latest changes.

## Action Summary

The "Deploy Hugo To S3 Action" is a GitHub Action designed to automate the process of building and deploying Hugo static websites to AWS S3. It simplifies tasks like authentication (supporting secure OpenID Connect or AWS Access Keys), Hugo build management, and S3 deployment, offering features such as automatic Hugo binary caching for faster builds and cross-platform compatibility. This action addresses the need for an efficient and secure way to deploy Hugo sites to S3 with minimal manual intervention.

## Release notes

   1. Fix #4: Pathing Consistency – Updated the Hugo binary location to ${{ runner.temp }}/hugo-bin for better compatibility and permission management.
   2. Feature #1: Hugo Binary Caching – Integrated actions/cache to speed up subsequent workflow runs by caching the Hugo binary.
   3. Feature #2 & #3: Build & Deployment Flags – Added build-args and deploy-args inputs, allowing users to pass custom flags like --minify or --gc.
   4. Feature #4: Output Directory – Added a destination input (defaulting to public) to specify where Hugo should build the site.
   5. Feature #5: Dependabot – Created .github/dependabot.yml to keep the action's own dependencies up to date.
   6. Feature #6: Branding – Updated the action's icon to zap and color to orange for better visual identity.
   7. QA #1: Input Validation – Added a semver format check for the hugo-version input.
   8. QA #2: Verification Step – Added an explicit hugo version check to verify the installation before proceeding with the build.
   9. Documentation – Updated the README.md to document the new inputs and features.
