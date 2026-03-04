---
title: datamodel-code-generator
date: 2026-03-04 13:32:26 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.54.1
dependentsNumber: "2,741"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.54.1**.
- This action is used across all versions by **2,741** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions, including OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It simplifies the process of creating type-safe, validated Python code for frameworks like Pydantic (v1 and v2), dataclasses, and TypedDict, handling complex schema structures such as `$ref`, `allOf`, `oneOf`, and nested types. This tool is ideal for developers seeking efficient, automated workflows for generating structured, reusable Python models for their applications.

## Release notes

## What's Changed
* Add dismissible announce bar to docs site by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3004
* docs: update maintainer announcement to reflect open to work status by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3007
* Support isort 8 by @cjwatson in https://github.com/koxudaxi/datamodel-code-generator/pull/3011
* Fix --allow-population-by-field-name for pydantic v2 dataclass output by @butvinm in https://github.com/koxudaxi/datamodel-code-generator/pull/3013
* Support `--use-annotated` *and* `--use-non-positive-negative-number-constrained-types` by @torarvid in https://github.com/koxudaxi/datamodel-code-generator/pull/3015
* Skip default_factory wrapping for non-callable type aliases by @butvinm in https://github.com/koxudaxi/datamodel-code-generator/pull/3012
* Fix incorrect relative imports with --use-exact-imports and --collapse-root-models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3020
* feat: Add --external-ref-mapping to import from external packages instead of generating by @matssun in https://github.com/koxudaxi/datamodel-code-generator/pull/3006
* Build(deps): Bump cryptography from 46.0.3 to 46.0.5 by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3016
* Build(deps): Bump urllib3 from 2.6.2 to 2.6.3 by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3017

## New Contributors
* @matssun made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3006

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.54.0...0.54.1

