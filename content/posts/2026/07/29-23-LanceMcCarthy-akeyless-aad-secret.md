---
title: Akeyless AAD Dynamic Secret
date: 2026-07-29 23:08:00 +00:00
tags:
  - LanceMcCarthy
  - GitHub Actions
draft: false
repo: https://github.com/LanceMcCarthy/akeyless-aad-secret
marketplace: https://github.com/marketplace/actions/akeyless-aad-dynamic-secret
version: v1.0.2
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  This GitHub Action generates and fetches an Azure Active Directory dynamic secret using the Akeyless REST API. It automates tasks such as obtaining necessary authentication credentials, specifying the secret path in the Akeyless vault, and retrieving key details from the generated secret. The action provides outputs for various secret attributes like appId, tenantId, secretText, keyId, and displayName.
---


Version updated for **https://github.com/LanceMcCarthy/akeyless-aad-secret** to version **v1.0.2**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/akeyless-aad-dynamic-secret) to find the latest changes.

## Action Summary

This GitHub Action generates and fetches an Azure Active Directory dynamic secret using the Akeyless REST API. It automates tasks such as obtaining necessary authentication credentials, specifying the secret path in the Akeyless vault, and retrieving key details from the generated secret. The action provides outputs for various secret attributes like appId, tenantId, secretText, keyId, and displayName.

## What's Changed

## What's Changed

- No functionality or feature changes. 
- Added stronger error handling to action.yml script. 
- The smoketest workflow, main.yml, was updated to use a new Akeyless vault and node24 actions. 
- The README was updated to include links to relevant Akeyless documentation and a couple local test options.

**Full Changelog**: https://github.com/LanceMcCarthy/akeyless-aad-secret/compare/v1...v1.0.2
