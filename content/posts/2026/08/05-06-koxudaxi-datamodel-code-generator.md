---
title: datamodel-code-generator
date: 2026-08-05 06:28:48 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.72.1
dependentsNumber: "3,412"
actionType: Composite
actionSummary: |
  The `datamodel-code-generator` GitHub Action generates Python data models from various schema definitions, supporting OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types (Pydantic, dataclass, TypedDict) into different output types. The action handles complex schemas with features like `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types.
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.72.1**.

- This action is used across all versions by **3,412** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action generates Python data models from various schema definitions, supporting OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types (Pydantic, dataclass, TypedDict) into different output types. The action handles complex schemas with features like `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types.

## What's Changed

## What's Changed
* Add TypedDict total=False option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3689
* Update CHANGELOG for 0.72.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3690
* Support import overrides by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3691
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3692
* Resolve Python type imports by target by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3694
* Support TypeAliasType for non-Pydantic output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3688
* Bind Python type imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3696
* Structure input model runtime types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3693
* Fix --use-exact-imports for dotted ancestor package case by @bokshitsky in https://github.com/koxudaxi/datamodel-code-generator/pull/3697
* Embed package version at build time by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3699

## New Contributors
* @bokshitsky made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3697

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.72.0...0.72.1

