---
title: FHIR Validator
date: 2026-05-05 20:54:03 +00:00
tags:
  - medvertical
  - GitHub Actions
draft: false
repo: https://github.com/medvertical/records-fhir-validator
marketplace: https://github.com/marketplace/actions/fhir-validator
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/medvertical/records-fhir-validator** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fhir-validator) to find the latest changes.

## Action Summary

The **Records FHIR Validator** GitHub Action is designed to validate FHIR (Fast Healthcare Interoperability Resources) JSON resources in CI/CD pipelines or standalone Node.js applications. It automates the verification of FHIR resource compliance with specified versions (e.g., R4, R5) and optional custom profiles, helping developers ensure their healthcare data conforms to FHIR standards before deployment. Key capabilities include support for multiple FHIR versions, validation against custom profiles, and integration into CI workflows for streamlined resource validation.

## What's Changed

GitHub Action release for the Records FHIR Validator.

Use in workflows:

```yaml
- uses: medvertical/records-fhir-validator@v0.1.0
  with:
    paths: resources/**/*.json
    fhir-version: R4
```

This action installs @records-fhir/validator from npm and validates FHIR JSON resources for R4, R4B, R5, and R6. The npm package release is also tagged as validator-v0.1.0.
