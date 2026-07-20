---
title: datamodel-code-generator
date: 2026-07-20 07:34:54 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.69.0
dependentsNumber: "3,338"
actionType: Composite
actionSummary: |
  The GitHub Action **datamodel-code-generator** automates the process of generating Python data models from various schema formats, including OpenAPI 3, AsyncAPI, JSON Schema, Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and raw data. It supports converting existing Python types to Pydantic, dataclass, or TypedDict classes, and generates models in different styles such as Pydantic v2, v2 dataclass, dataclasses, and msgspec. The action handles complex schemas and provides type-safe, validated code suitable for IDEs and type checkers.
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.69.0**.

- This action is used across all versions by **3,338** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The GitHub Action **datamodel-code-generator** automates the process of generating Python data models from various schema formats, including OpenAPI 3, AsyncAPI, JSON Schema, Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and raw data. It supports converting existing Python types to Pydantic, dataclass, or TypedDict classes, and generates models in different styles such as Pydantic v2, v2 dataclass, dataclasses, and msgspec. The action handles complex schemas and provides type-safe, validated code suitable for IDEs and type checkers.

## What's Changed

## Breaking Changes








* Discriminated unions with duplicate or unresolvable discriminator values now fall back to a plain union - When a discriminated union contains variants that resolve to the same discriminator value, or variants that are containers, `RootModel`/type-alias wrappers, `None`/`str` members, or otherwise lack a resolvable discriminator literal, the generator no longer emits `Field(..., discriminator='...')` and instead produces a regular union. Previously such schemas emitted a `discriminator=` argument. Users regenerating models from these schemas will see the `discriminator` keyword removed from the affected fields (#3603)

```python
# Before (invalid duplicate-value discriminator was emitted):
class GroupedItem(RootModel[Item | ItemReference]):
    root: Item | ItemReference = Field(..., discriminator='type')

# After (falls back to a plain union when variants are not valid discriminated members):
class MixedItem(RootModel[str | ItemReference | None]):
    root: str | ItemReference | None
```

## What's Changed
* Update CHANGELOG for 0.68.1 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3594
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3595
* Skip unused formatter construction by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3599
* Retain model import caches by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3600
* Fix pydantic typed extra runtime compatibility by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3601
* [pre-commit.ci] pre-commit autoupdate by @pre-commit-ci[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3605
* Fix legacy pydantic extra templates by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3602
* Handle duplicate discriminator values by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3603
* Bump the github-actions group across 1 directory with 7 updates by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3598
* Allow custom and generated file headers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3607
* Fix payload runtime validation exclusions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3609
* Fix optional discriminator literals by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3608
* Fix invalid dotted model names by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3610
* Add multi-module stdout guard by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3611
* Fix empty ("") property name dropping its alias by @chuenchen309 in https://github.com/koxudaxi/datamodel-code-generator/pull/3612

## New Contributors
* @chuenchen309 made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3612

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.68.1...0.69.0

