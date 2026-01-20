---
title: Run AER Tests
date: 2026-01-20 21:42:05 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.91
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.91**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate and test Salesforce Apex code in a lightweight, local runtime environment without deploying to a Salesforce org. It automates Apex test execution in CI/CD pipelines, ensuring fast, reproducible test cycles and providing capabilities like metadata imports, interactive debugging, and namespace-specific testing. This action streamlines development workflows by eliminating dependencies on scratch orgs or sandboxes for testing.

## Release notes

Version v0.0.91

- Add Registration Keys And Prefixed License Handling

- Fix Namespace Handling for SObject Field Names and Subquery Relationships

- Fix Lookup Field Derivation, Collection Type Resolution, and Property Getter Context

- Return Canonical Field Names From DescribeFieldResult.getName()

- Fix Namespace Regressions

- Add Pagination Cursor APIs And Limits

- Fix Parent vs Child Relationship Handling and Formula Field Dependencies

- Fix Additive Permission Model For Object Permissions

- Preserve Decimal Field Scale When Converting to String

- Implement After-Trigger Retry And Too Many Retries Error
-----BEGIN PGP SIGNATURE-----

iHAEABECADAWIQTLH9BNp/hHgEyNHOhdIng5TveXoAUCaW9ywRIcY3dhcmRlbkB4
ZXJ1cy5vcmcACgkQXSJ4OU73l6DB4QCfS7wGsvgH78QPI6C9pGvC/sLUz1wAoIwi
K3sYeeEfI+/YFadJdlIEU5UB
=V+QN
-----END PGP SIGNATURE-----
