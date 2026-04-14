---
title: WordPress Plugin Attestation
date: 2026-04-14 22:21:30 +00:00
tags:
  - johnbillion
  - GitHub Actions
draft: false
repo: https://github.com/johnbillion/action-wordpress-plugin-attestation
marketplace: https://github.com/marketplace/actions/wordpress-plugin-attestation
version: 0.7.2
dependentsNumber: "18"
actionType: Composite
---


Version updated for **https://github.com/johnbillion/action-wordpress-plugin-attestation** to version **0.7.2**.

- This action is used across all versions by **18** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wordpress-plugin-attestation) to find the latest changes.

## Action Summary

The "WordPress Plugin Attestation" GitHub Action generates a build provenance attestation for WordPress plugin zip files deployed to the wordpress.org plugin directory, enhancing supply chain security by verifying the origin of plugin releases. This action helps protect against unauthorized modifications, such as those from compromised credentials or hostile takeovers, by allowing consumers to confirm that plugins were built and released by the intended author. It integrates seamlessly with deployment workflows, including the WordPress Plugin Deploy action, and supports artifact verification using tools like `gh attestation verify`.

## What's Changed

- Adds the SHA-256 hash of the zip as an output.
- Ensures the zip is fully available prior to attempting to download it.
