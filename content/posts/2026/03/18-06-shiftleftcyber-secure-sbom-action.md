---
title: Secure SBOM Action
date: 2026-03-18 06:04:08 +00:00
tags:
  - shiftleftcyber
  - GitHub Actions
draft: false
repo: https://github.com/shiftleftcyber/secure-sbom-action
marketplace: https://github.com/marketplace/actions/secure-sbom-action
version: v2.0.0
dependentsNumber: "3"
actionType: Docker
---


Version updated for **https://github.com/shiftleftcyber/secure-sbom-action** to version **v2.0.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secure-sbom-action) to find the latest changes.

## Action Summary

The **Secure SBOM GitHub Action** automates the signing and verification of Software Bill of Materials (SBOMs) and cryptographic digests using the SecureSBOM API by ShiftLeftCyber. It ensures the integrity and authenticity of SBOMs in CI/CD pipelines, enabling organizations to cryptographically attest to their validity. Key features include signing SBOMs or digests, verifying signed SBOMs, and support for CycloneDX formats and multiple API versions, with backward compatibility for legacy inputs.

## Release notes

# Secure SBOM GitHub Action v2

This release introduces several improvements to the Secure SBOM GitHub Action, including support for the SecureSBOM v2 API, improved response handling, digest signing, and better input naming.

# New Features

## SecureSBOM API v2 Support

The action now supports the SecureSBOM v2 signing API.

When using the v2 API, the action extracts the signed_sbom field from the API response and writes it as the signed SBOM file, ensuring the output file remains a valid standalone SBOM.

## Digest Signing Support

The action can now sign SHA256 digests without sending the entire SBOM to the SecureSBOM API.

This is useful for environments where sending full SBOMs to third-party services is not feasible.

Example:

```
- name: Sign Digest
  uses: shiftleftcyber/secure-sbom-action@v2
  with:
    secure_sbom_api_key: ${{ secrets.SECURE_SBOM_API_KEY }}
    secure_sbom_signing_key_id: ${{ secrets.SECURE_SBOM_KEY_ID }}
    secure_sbom_action: sign_digest
    digest: ${{ steps.generate_digest.outputs.digest }}
```

Signed digest responses are written to files named: `signed-digest-<timestamp>.json`

# Improvements

## Cleaner Environment Variables
New environment variables provide clearer naming and better consistency:

- `SECURE_SBOM_API_KEY` replaces `API_KEY`
- `SECURE_SBOM_SIGNING_KEY_ID` replaces `KEY_ID`
-`SECURE_SBOM_ACTION` replaces `ACTION`
- `SECURE_SBOM_API_URL` replaces `API_URL`

Legacy variables remain supported but will generate warnings.

## Improved SBOM Output Handling

Signed SBOMs are now written using a helper function that ensures consistent file naming:

`<input>.signed.<ext>`

Example:

`sbom.json → sbom.signed.json`

## Better Error Handling

The action now provides clearer errors when:
- SecureSBOM API responses are malformed
- signed_sbom is missing from v2 responses
- invalid request payloads are returned

## Backwards Compatibility

Existing workflows using v1 inputs continue to work.
Examples of still-supported inputs:

```
api_key
key_id
action
api_url
use_v1_api
```

However, users are encouraged to migrate to the new input names.

## Testing Improvements

This release also includes significant improvements to the project's test coverage:
- unit tests for request construction and response handling
- integration tests using httptest.Server
- end-to-end CLI execution tests

## Documentation Updates

The README has been fully updated with:
- new usage examples
- digest signing workflows
- updated input documentation
- migration guidance

# About SecureSBOM

SecureSBOM is a cloud-native platform for signing and verifying SBOMs to strengthen software supply chain security.

Learn more: https://shiftleftcyber.io/


**Full Changelog**: https://github.com/shiftleftcyber/secure-sbom-action/compare/v1.4.0...v2.0.0

## What's Changed
* chore: use Dockerfile.sbom with ReARM by @VinnyBarton in https://github.com/shiftleftcyber/secure-sbom-action/pull/6
* chore: set allow rebuild flag on rearm workflow by @VinnyBarton in https://github.com/shiftleftcyber/secure-sbom-action/pull/7
* feat: add SecureSBOM v2 support by @VinnyBarton in https://github.com/shiftleftcyber/secure-sbom-action/pull/8
* chore: update rearm version by @VinnyBarton in https://github.com/shiftleftcyber/secure-sbom-action/pull/9


**Full Changelog**: https://github.com/shiftleftcyber/secure-sbom-action/compare/v1.4.0...v2.0.0
