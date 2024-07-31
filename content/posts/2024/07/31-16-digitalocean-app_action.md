---
title: DigitalOcean App Platform deployment
date: 2024-07-31 16:47:35 +00:00
tags:
  - digitalocean
  - GitHub Actions
draft: false
repo: digitalocean/app_action
marketplace: https://github.com/marketplace/actions/digitalocean-app-platform-deployment
version: v2.0.0
dependentsNumber: "257"
---


Version updated for **digitalocean/app_action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **257** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/digitalocean-app-platform-deployment) to find the latest changes.

## Release notes

This is a complete rewrite with the goal of being more orchestratable in a broader GitHub Actions context.

## 🚀 New Features

- Rewritten to use `godo` instead of shelling out to `doctl` for better error handling and overall control of the process.
- Supports picking up an in-repository (or filesystem really) `app.yaml` (defaults to `.do/app.yaml`, configurable via the `app_spec_location` input) to create the app from instead of having to rely on an already existing app that's then downloaded (though that is still supported). The in-filesystem app spec can also be templated with environment variables automatically (see examples below).
- Prints the build and deploy logs into the Github Action log (configurable via `print_build_logs` and `print_deploy_logs`) and surfaces them as outputs `build_logs` and `deploy_logs`.
- Provides the app's metadata as the output `app`.

## Breaking changes:

- The `images` input is no longer supported. Instead, use env-var-substitution for an in-repository app spec or the `IMAGE_DIGEST_$component-name`/`IMAGE_TAG_$component-name` environment variables to change the respective fields of images in an existing app.

## 👨🏼‍💻 Contributors

@markusthoemmes

