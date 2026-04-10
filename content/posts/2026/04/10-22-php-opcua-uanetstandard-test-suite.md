---
title: UA-.NETStandard Test Suite
date: 2026-04-10 22:01:05 +00:00
tags:
  - php-opcua
  - GitHub Actions
draft: false
repo: https://github.com/php-opcua/uanetstandard-test-suite
marketplace: https://github.com/marketplace/actions/ua-netstandard-test-suite
version: v1.1.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/php-opcua/uanetstandard-test-suite** to version **v1.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ua-netstandard-test-suite) to find the latest changes.

## Action Summary

The **UA-.NETStandard Test Suite** is a comprehensive testing framework designed for integration testing of OPC UA client libraries. It provides a realistic and feature-rich test environment with pre-configured server instances that support various security policies, authentication methods, communication modes, and a robust address space. By leveraging the OPC Foundation's reference implementation, it ensures protocol behavior and security closely align with the OPC UA specification, enabling developers to validate client interoperability across multiple platforms and programming languages.

## What's Changed

### ECC Security Policies

- **2 new server instances** for Elliptic Curve Cryptography (ECC) security policies (ports 4848-4849).
- **Server 9 — ECC NIST** (`opcua-ecc-nist`, port 4848): ECC_nistP256 and ECC_nistP384 policies with NIST P-256/P-384 curves.
- **Server 10 — ECC Brainpool** (`opcua-ecc-brainpool`, port 4849): ECC_brainpoolP256r1 and ECC_brainpoolP384r1 policies (European BSI standard).
- **ECC certificates auto-generated** by UA-.NETStandard SDK via `ApplicationCertificates` collection with `CertificateType` mapping.
- Updated GitHub Actions composite action (`action.yml`) with `ecc-nist`, `ecc-brainpool` server options.
- Updated CI compose overrides (`docker-compose.ci.yml`) for the 2 new services.
- **Upgraded to .NET 10.0** runtime and SDK.
