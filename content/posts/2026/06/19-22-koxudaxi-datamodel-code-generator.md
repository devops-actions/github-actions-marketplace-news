---
title: datamodel-code-generator
date: 2026-06-19 22:25:41 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.64.1
dependentsNumber: "3,193"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.64.1**.

- This action is used across all versions by **3,193** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## What's Changed

## Breaking Changes

### Code Generation Changes
* Optional primitive `const` fields no longer emit the const value as an injected default - Optional primitive `const` properties without a schema `default` now render as nullable/omittable (`Literal[...] | None = None`) instead of being populated with the const value when the input key is omitted. Regenerated code and snapshot tests may change. (#3434)

## What's Changed
* Update CHANGELOG for 0.64.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3414
* Fix pydantic v2 dataclass lookaround regex engine by @DarkaMaul in https://github.com/koxudaxi/datamodel-code-generator/pull/3370
* Pass enum schema extensions to templates by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3417
* Fix payload runtime validation exclusions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3418
* Add conformance dashboard by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3423
* Skip legacy dataclass lookaround payloads by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3428
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3425
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3429
* Use shared test helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3424
* Consolidate CLI config fields by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3430
* Guard JSON-pointer list indexing against invalid segments by @DarkaMaul in https://github.com/koxudaxi/datamodel-code-generator/pull/3420
* Add Pydantic v2 alias generator by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3432
* Fix optional primitive const emitting injected non-None default by @tangentlin in https://github.com/koxudaxi/datamodel-code-generator/pull/3434
* Escape generated pyproject TOML strings by @DarkaMaul in https://github.com/koxudaxi/datamodel-code-generator/pull/3436
* Add standard preset by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3422

## New Contributors
* @tangentlin made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3434

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.64.0...0.64.1

