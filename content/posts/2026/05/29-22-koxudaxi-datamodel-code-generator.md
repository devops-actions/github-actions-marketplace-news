---
title: datamodel-code-generator
date: 2026-05-29 22:47:53 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.59.0
dependentsNumber: "3,101"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.59.0**.

- This action is used across all versions by **3,101** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions such as OpenAPI, JSON Schema, GraphQL, and more. It simplifies the process of creating type-safe, validated Python models compatible with libraries like Pydantic, dataclasses, and TypedDict, while handling complex schema features like `$ref`, `oneOf`, and enums. This tool streamlines development workflows by reducing manual coding and ensuring consistency in data model generation.

## What's Changed

## Breaking Changes

### Code Generation Changes
* Pattern key constraints now include `propertyNames` constraints - When a JSON Schema uses both `patternProperties` and `propertyNames`, the generated dict key type now merges constraints from both. Previously, `propertyNames` constraints such as `minLength`, `maxLength`, and `$ref` could be ignored when `patternProperties` was present. Regenerated code may produce stricter key types and reject data that was previously accepted by less-strict generated models. (#3192)
* Typed `additionalProperties` now generates a typed `__pydantic_extra__` field for Pydantic v2 models - When a JSON Schema defines schema-valued `additionalProperties`, generated Pydantic v2 models now include `__pydantic_extra__: dict[str, <type>]`. Previously, these models only allowed extra fields without typing their values. This changes generated output and makes Pydantic validate extra field values at runtime. (#3205)
* Dataclass field ordering with `--use-annotated` may change - Dataclass field assignment detection now accounts for constraints moved into `Annotated[...]`. Generated dataclass fields may be reordered so fields without defaults come before fields with defaults. (#3203)

### Default Behavior Changes
* Auto-detection (`--input-file-type auto`) now recognizes AsyncAPI, Avro, and Protocol Buffers inputs - Inputs that previously fell back to JSON/YAML handling or failed detection may now be detected as one of these formats. (#3194, #3195, #3198)

### Compatibility Notes
* The temporary Pydantic minimum-version change from `pydantic>=2,<3` to `pydantic>=2.6,<3` was reverted before this release. The final dependency range for Python < 3.14 remains `pydantic>=2,<3`. (#3210, #3215)

## What's Changed
* Update CHANGELOG for 0.58.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3187
* Add deprecation registry and docs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3188
* Add XML Schema parser by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3183
* Fix null-only type arrays by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3189
* Fix contains default minContains by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3190
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3193
* Fix fixed prefixItems tuples by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3191
* Fix pattern key constraints by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3192
* Fix propertyNames ref constraints by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3197
* Add Apache Avro schema input type by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3195
* Refactor JSON Schema parser helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3199
* Document Avro input support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3200
* Use expected files for schema e2e tests by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3201
* Add Protocol Buffers input support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3198
* Add AsyncAPI input file type by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3194
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3204
* Fix dataclass field ordering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3203
* Add generated header marker option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3208
* Fix path-absolute local refs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3207
* Fix typed additionalProperties extras by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3205
* Require Pydantic 2.6 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3210
* Add experimental feature list by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3211
* Fix scoped type-overrides changing more fields then intended by @supervirus in https://github.com/koxudaxi/datamodel-code-generator/pull/3213
* Copy mapped data types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3214
* Support Pydantic 2.5 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3215

## New Contributors
* @supervirus made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3213

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.58.0...0.59.0

