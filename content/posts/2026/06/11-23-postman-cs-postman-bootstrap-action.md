---
title: postman-bootstrap-action
date: 2026-06-11 23:44:29 +00:00
tags:
  - postman-cs
  - GitHub Actions
draft: false
repo: https://github.com/postman-cs/postman-bootstrap-action
marketplace: https://github.com/marketplace/actions/postman-bootstrap-action
version: v1.2.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/postman-cs/postman-bootstrap-action** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-bootstrap-action) to find the latest changes.

## What's Changed

## Dynamic contract tests: runtime parameter and header assertions

This release converts the remaining documented assertion skips into real runtime checks. Generated [Contract] collections now validate substantially more of the OpenAPI surface at request time.

### New runtime assertions (#52)

- **Array query and header parameters.** Exploded form arrays are gathered from repeated query keys; non-exploded form, spaceDelimited, and pipeDelimited values split on their declared delimiter; simple header arrays split on commas with whitespace trimmed. Items are percent-decoded and coerced to the declared item type, and the decoded array validates against the full schema, so minItems, maxItems, uniqueItems, enum, and pattern all enforce. Decoded styles no longer warn with CONTRACT_PARAM_SERIALIZATION_NOT_VALIDATED.
- **Scalar path parameters.** Values validate at runtime by aligning the operation path template against the trailing segments of the sent request path, so server path prefixes cannot shift the match. Placeholders and unresolved variables skip. CONTRACT_PATH_PARAM_NOT_VALIDATED now fires only for path parameters without a runtime check.
- **Required cookie parameters.** Presence is asserted through pm.cookies with the authored Cookie header as fallback, and scalar cookie values validate against their schemas. The contract run fails until the cookie is supplied at send time; the static warning says so explicitly.
- **Array response headers.** Array-of-scalar header schemas split on commas and validate instead of degrading to presence-only checks. Object-valued headers keep the presence-only warning.
- **Encoding per-part headers.** Multipart encoding objects that declare per-part headers warn with the new CONTRACT_ENCODING_HEADERS_NOT_VALIDATED, since Postman formdata entries cannot carry them.

### Also in this release (#50)

- **Discriminator dispatch enforcement.** oneOf/anyOf compositions with a discriminator gain per-branch constraints on the discriminator property (explicit mapping aliases plus implicit schema names); other placements warn with CONTRACT_DISCRIMINATOR_NOT_VALIDATED.
- **Form field value validation.** Scalar urlencoded and multipart text values are coerced and checked against their property schemas, warning with CONTRACT_FORM_FIELD_SCHEMA_MISMATCH; JSON-typed form fields must carry parseable JSON.
- **JSON-content parameters.** Parameters declared through content with a single JSON media type are parsed and schema-validated at runtime.
- **Optional request body Content-Type checks** and broader HTTP auth scheme prefixes (Basic, Bearer, Digest, and every registered scheme token).

### Validation

362 unit tests, the six-spec large-corpus regression (GitHub 3.0/3.1, Stripe, Plaid, DigitalOcean, Spotify), typecheck, lint, and dist integrity all green; the release passed the live sandbox e2e gate before publish.

**Full Changelog**: https://github.com/postman-cs/postman-bootstrap-action/compare/v1.1.0...v1.2.0

