---
title: datamodel-code-generator
date: 2026-04-16 22:13:02 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.56.1
dependentsNumber: "2,921"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.56.1**.

- This action is used across all versions by **2,921** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions, including OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON, YAML, or CSV. It simplifies the creation of type-safe, validated Python code for use with Pydantic, dataclasses, TypedDict, and related frameworks, supporting complex schemas with features like references, inheritance, and enums. This tool is ideal for streamlining development workflows by reducing manual coding and ensuring compatibility with type checkers and IDEs.

## What's Changed

## What's Changed
* Fix `--base-class-map` and `--enum-field-as-literal-map` long inline json support by @ilovelinux in https://github.com/koxudaxi/datamodel-code-generator/pull/3075
* Prefer CLI input over pyproject url by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3083
* Fix relative URL refs with path-only root ids by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3085
* tomli was merged under the name tomllib into std library *3.11* by @a-detiste in https://github.com/koxudaxi/datamodel-code-generator/pull/3088
* Fix root model reuse collapse by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3089
* Docs: describe --keep-model-order as deterministic dependency-aware ordering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3090

## New Contributors
* @a-detiste made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3088

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.56.0...0.56.1

