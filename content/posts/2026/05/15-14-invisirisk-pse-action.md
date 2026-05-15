---
title: InvisiRisk PSE Security Proxy
date: 2026-05-15 14:59:45 +00:00
tags:
  - invisirisk
  - GitHub Actions
draft: false
repo: https://github.com/invisirisk/pse-action
marketplace: https://github.com/marketplace/actions/invisirisk-pse-security-proxy
version: v1.0.39
dependentsNumber: "51"
actionType: Composite
---


Version updated for **https://github.com/invisirisk/pse-action** to version **v1.0.39**.

- This action is used across all versions by **51** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/invisirisk-pse-security-proxy) to find the latest changes.

## Action Summary

This GitHub Action provides real-time security and compliance enforcement for software supply chains by implementing a zero-trust model within CI/CD pipelines. It automates tasks such as open-source component detection, accurate SBOM generation, policy enforcement, and protection against modern threats like typosquatting and supply chain attacks. Key capabilities include a build application firewall, automated compliance with security standards, enhanced SBOM analysis, and network traffic inspection to secure and streamline software development workflows.

## What's Changed

Enhanced Certificate & Environment Support
To ensure seamless integration with a wider array of build tools, the system now provides native handling for environment-specific certificate variables. This ensures that secure communication is maintained without manual overhead when using specialized runtimes.

Expanded Tool Support: Added support for DENO_CERT and CARGO_HTTP_CAINFO across setup and cleanup phases.
Consistency: These variables are now automatically managed in scripts/mode_intercept.sh and cleanup.sh, ensuring that Deno and Cargo-based tools inherit the correct CA configurations.

PSE Proxy Image Management
The configuration logic for the invisirisk/pse-proxy container has been modernized to balance flexibility with ease of use. By moving away from hardcoded references, the system now supports dynamic versioning while defaulting to the most current stable release.
