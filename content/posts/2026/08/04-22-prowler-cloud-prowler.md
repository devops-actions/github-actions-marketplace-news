---
title: Prowler Security Scan
date: 2026-08-04 22:29:17 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.37.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Prowler is an Open Source Cloud Security Platform designed to automate security and compliance across any cloud environment, offering over 3,000 checks and integrations with leading compliance frameworks. The action automates Prowler's functionality into GitHub Actions workflows, simplifying the integration of security audits into CI/CD pipelines. It supports various cloud providers and provides detailed reports on potential security issues.
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.37.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## Action Summary

Prowler is an Open Source Cloud Security Platform designed to automate security and compliance across any cloud environment, offering over 3,000 checks and integrations with leading compliance frameworks. The action automates Prowler's functionality into GitHub Actions workflows, simplifying the integration of security audits into CI/CD pipelines. It supports various cloud providers and provides detailed reports on potential security issues.

## What's Changed

## UI


### 🐞 Fixed

- Fixed image optimization in the production container: Next.js standalone tracing omitted `sharp`'s native `libvips` library, so every image was served unoptimized [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)

### 🔐 Security

- The UI container image now patches musl and zlib alongside OpenSSL, and `sharp` is pinned to 0.35.3, clearing the image's remaining CVEs [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)



## API


### 🐞 Fixed

- Entra Conditional Access guest-user checks no longer report false FAILs in M365 scans: microsoft-kiota packages overridden to 1.9.10 so `guestOrExternalUserTypes` (a flags enum Graph serializes as a comma-separated string) deserializes correctly instead of returning an empty list [(#12315)](https://github.com/prowler-cloud/prowler/pull/12315)

### 🔐 Security

- The API container image now builds on Debian 13 (trixie), taking its critical CVE count from 18 to 4 [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- Bumped PowerShell, Trivy and uv in the API container image, clearing 14 high-severity CVEs [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- Bumped `workos` and `pyopenssl` so the API can move to `cryptography` 48.0.1 [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- Removed `gnupg` and `apt-transport-https` from the API container image [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- The API container image no longer ships `git`; removing it also dropped `perl`, `perl-modules`, `libperl` and `liberror-perl`, clearing 12 critical CVEs. Only `perl-base` remains, which Debian marks Essential and cannot be removed [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- Removed `pip` from the API container image, clearing two high-severity CVEs in the vendored copies of `setuptools` and `msgpack` [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)
- Bumped `pillow` to 12.3.0, `httplib2` to 0.32.0 and `pyasn1` to 0.6.4 to resolve known CVEs [(#12311)](https://github.com/prowler-cloud/prowler/pull/12311)



## SDK


### 🔄 Changed

- Huawei Cloud exception codes moved from `19000`-`19007` to `20000`-`20007`, resolving a collision with E2E Networks which reserves `19000`-`19999` [(#12306)](https://github.com/prowler-cloud/prowler/pull/12306)

### 🐞 Fixed

- Checks registered through the `prowler.checks.<provider>` entry-point group can now run against built-in providers. The built-in probe in `_resolve_check_module` used a bare `find_spec`, which imports the parent package to search it and so raised `ModuleNotFoundError` for a plug-in check instead of returning `None`, aborting the lookup before the entry points were consulted. Such a check was discovered, listed and selected for execution, then silently produced no findings. [(#12312)](https://github.com/prowler-cloud/prowler/pull/12312)
- Entra Conditional Access guest-user checks no longer report false FAILs: microsoft-kiota packages bumped to 1.9.10 so `guestOrExternalUserTypes` (a flags enum Graph serializes as a comma-separated string) deserializes correctly instead of returning an empty list [(#12315)](https://github.com/prowler-cloud/prowler/pull/12315)

### 🔐 Security

- Bumped the Compose `postgres` and `valkey` images, clearing 10 critical CVEs [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- Bumped PowerShell, Trivy, uv and `joserfc` in the container images, clearing 14 high-severity CVEs from the SDK and API images [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- Bumped `httplib2` to 0.32.0 and `pyasn1` to 0.6.4 to resolve known CVEs [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- The SDK container image now builds on Debian 13 (trixie), clearing the unfixable `libsqlite3-0` and `zlib1g` criticals [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- Bumped `cryptography` to 48.0.1 to resolve GHSA-537c-gmf6-5ccf, along with the `oci`, `alibabacloud-tea-openapi`, `darabonba-core` and `py-ocsf-models` bumps it requires [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- Removed `pip` from the SDK container image, clearing two high-severity CVEs in the vendored copies of `setuptools` and `msgpack` [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)
- Removed `wget`, `gnupg` and `apt-transport-https` from the SDK runtime image [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)



## MCP


### 🔐 Security

- Bumped `fastmcp` and pinned `cryptography`, `joserfc`, `mcp` and `python-multipart`, clearing all 7 high-severity CVEs from the MCP image [(#12307)](https://github.com/prowler-cloud/prowler/pull/12307)




