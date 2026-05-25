---
title: datamodel-code-generator
date: 2026-05-25 14:37:57 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.58.0
dependentsNumber: "3,073"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.58.0**.

- This action is used across all versions by **3,073** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` is a tool designed to automatically generate Python data models from various schema formats, including OpenAPI 3, JSON Schema, XML Schema, GraphQL, and raw data files (JSON, YAML, CSV). It simplifies the creation of type-safe, validated Python code compatible with libraries like Pydantic, dataclasses, and TypedDict, and supports complex schema features such as references, enums, and nested types. This tool automates the process of converting schema definitions into ready-to-use Python models, streamlining development workflows and enhancing code accuracy.

## What's Changed

## New Features

* Added `--serialization-aliases` for Pydantic v2 serialization alias mapping. (#3146)
* Added `--openapi-include-info-version` to emit `OPENAPI_INFO_VERSION` from OpenAPI `info.version`. (#3176)
* Added `--use-object-type` to generate `object` instead of `Any` for unspecified JSON Schema object and array values. (#3177)

## Breaking Changes

### Code Generation Changes
* Duplicate validation aliases are now deduplicated in generated Pydantic v2 `AliasChoices` - Fields that previously generated duplicate entries such as `AliasChoices('endDate', 'end_date', 'endDate')` now generate each alias once. Runtime behavior is equivalent, but exact generated output changes. (#3146)
* JSON Schema edge-case fixes change generated output for affected schemas - Schema-valued `additionalProperties`/`unevaluatedProperties`, `const: null`, complex enum values, all-false `patternProperties`, non-string `propertyNames`, boolean array item schemas, `contains`, `minProperties`/`maxProperties`, and enum references through `allOf` now generate more accurate annotations or constraints. Users with snapshots or exact-output checks may see diffs. (#3167)
* Duplicate TypedDict import fix changes generated output - Mixed closed/open TypedDict generation no longer imports `TypedDict` from both `typing` and `typing_extensions`; `TypedDict` is kept only where required. (#3155)
* Schema-derived payload fixes change generated output for affected schemas - Forward-referenced dict key unions, indirect `$ref` types in `allOf`, `additionalProperties` with `$ref`, heterogeneous root constraints, and unresolved discriminator fields now generate more valid types/fields. (#3168)
* Primitive `allOf` schemas now generate root-style payload types - Primitive-only `allOf` and top-level `allOf` combined with `oneOf`/`anyOf` now generate `RootModel`/root payload types instead of empty or object-like models. Code instantiating the previous generated classes may need updates. (#3169, #3171)
* Discriminator literal generation changed for some enum mappings - Discriminator mappings now use the resolved literal values for enum-backed mappings, including non-string values where applicable. (#3074, #3170)
* `multipleOf` intersections in `allOf` now use the least common multiple - For example, `multipleOf: 5` combined with `multipleOf: 10` now generates `multiple_of=10` instead of incorrectly keeping the first value. Decimal multiples are handled similarly. (#3172)
* Schema metadata fields are now preserved automatically - `contentEncoding`, `contentMediaType`, `contentSchema`, `externalDocs`, and `xml` are included in generated `json_schema_extra` when present in the input schema, even without `--model-extra-keys`. (#3175)

### Error Handling Changes
* `--output-datetime-class` now rejects incompatible TypedDict and Dataclass output combinations - Pydantic-specific datetime classes with `typing.TypedDict`, and incompatible dataclass API usage, now raise errors instead of silently producing fallback output. (#3155, #3169)
* Boolean `false` inside `allOf` now raises `SchemaParseError` - Unsatisfiable `allOf` branches are reported instead of generating incorrect models. `false` branches in `oneOf`/`anyOf` are filtered where appropriate. (#3168)

## What's Changed
* Create changelog updates through PRs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3138
* Add manual changelog update trigger by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3139
* Update CHANGELOG for 0.57.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3140
* Normalize changelog release body spacing by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3141
* Fix duplicate changelog prepend by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3143
* Update CHANGELOG for 0.57.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3144
* Add serialization aliases by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3146
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3148
* Add generation dependency index by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3154
* Document boundary payload typing by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3162
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3163
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3164
* Improve code generation performance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3166
* Map OpenAPI Discriminator mapping's values to their real value in enums  by @ilovelinux in https://github.com/koxudaxi/datamodel-code-generator/pull/3074
* Fix JSON Schema edge-case generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3167
* fix(TypedDict): Issue with DateTime options not being used in the output, and duplicate TypedDict imports by @richinfante in https://github.com/koxudaxi/datamodel-code-generator/pull/3155
* Add schema-derived payload validation tests by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3168
* Fix msgspec enum discriminator tag by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3170
* Fix top-level allOf oneOf schema by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3171
* Fix primitive allOf payload types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3169
* Fix allOf multipleOf intersection by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3172
* Align schema feature support status by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3174
* Support additional JSON Schema string formats by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3173
* Add OpenAPI info version constant by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3176
* Preserve schema metadata extras by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3175
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3180
* Add object type option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3177
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3181

## New Contributors
* @richinfante made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3155

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.57.0...0.58.0

