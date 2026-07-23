---
title: datamodel-code-generator
date: 2026-07-23 15:20:44 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.70.0
dependentsNumber: "3,357"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of generating Python data models from various schema definitions, including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It supports converting raw data (JSON/YAML/CSV) into Python model output types, retargeting existing Pydantic, dataclass, or TypedDict classes, and outputs models in different styles like Pydantic v2, Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types, producing type-safe, validated code that is ready for IDEs and type checkers.
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.70.0**.

- This action is used across all versions by **3,357** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

This GitHub Action automates the process of generating Python data models from various schema definitions, including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It supports converting raw data (JSON/YAML/CSV) into Python model output types, retargeting existing Pydantic, dataclass, or TypedDict classes, and outputs models in different styles like Pydantic v2, Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types, producing type-safe, validated code that is ready for IDEs and type checkers.

## What's Changed

## Breaking Changes



* Preserved additionalProperties value constraints change generated output - JSON Schema `additionalProperties` (and `propertyNames`/mapping) value schemas that carry constraints (e.g. `minimum`/`maximum`, `minLength`/`maxLength`/`pattern`, array item constraints, `allOf`-merged primitives) now retain those constraints in the generated model instead of dropping them. This produces new `TypeAlias`/`RootModel`/`TypeAliasType` definitions and changes dict value type hints, so output differs for existing schemas. For example, a mapping value that previously generated `dict[str, Literal['fixed']]` now generates a dedicated alias preserving the constraints (#3616):

```python
# Before
class DictModel(RootModel[dict[str, Literal['fixed']]]):
    root: dict[str, Literal['fixed']]

# After
DictModelAdditionalProperty = TypeAliasType(
    "DictModelAdditionalProperty",
    Annotated[Literal['fixed'], Field(max_length=100, min_length=1)],
)


class DictModel(RootModel[dict[str, DictModelAdditionalProperty]]):
    root: dict[str, DictModelAdditionalProperty]
```

## What's Changed
* Update CHANGELOG for 0.69.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3613
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3614
* [pre-commit.ci] pre-commit autoupdate by @pre-commit-ci[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3617
* Preserve additionalProperties value constraints by @chuenchen309 in https://github.com/koxudaxi/datamodel-code-generator/pull/3616
* Rename a msgspec field named "field" to avoid shadowing the field import by @chuenchen309 in https://github.com/koxudaxi/datamodel-code-generator/pull/3615
* Bump the github-actions group with 8 updates by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3618
* Update types-setuptools requirement from <70,>=67.6.0.5 to >=67.6.0.5,<84 by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3584


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.69.0...0.70.0

