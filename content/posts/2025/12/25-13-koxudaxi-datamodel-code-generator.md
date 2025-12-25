---
title: datamodel-code-generator
date: 2025-12-25 13:13:46 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.49.0
dependentsNumber: "2,494"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.49.0**.
- This action is used across all versions by **2,494** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from schema definitions such as OpenAPI, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It simplifies handling complex schemas and produces type-safe, validated code compatible with popular Python frameworks like Pydantic, dataclasses, TypedDict, and msgspec. This tool addresses the need for efficient, accurate model creation, saving developers time and reducing errors in schema-based projects.

## Release notes

## Breaking Changes

  ### SchemaParseError for Invalid Schema Data
  * Schema validation errors now raise `SchemaParseError` instead of Pydantic `ValidationError` - When parsing invalid schema data (e.g., `"minimum": "not_a_number"`), the library now raises `SchemaParseError` instead of passing through Pydantic's `ValidationError`. Users catching `pydantic.ValidationError` for schema validation failures should update to catch `SchemaParseError`. The original error is preserved in the `original_error` attribute. (#2786)

  ## Bug Fixes

  ### CLI Now Correctly Outputs to stdout
  * Fixed CLI to actually output to stdout when `--output` is not specified - The `--output` argument has always documented `(default: stdout)` in `--help`, but previously no output was produced. Now works as documented. (#2787)

  ## Other Notable Changes

  * `generate()` function now returns `str | GeneratedModules | None` instead of `None` - Existing code ignoring the return value is unaffected. (#2787)
  * Error message for multi-module output without directory changed to be more descriptive. (#2787)

## What's Changed
* Merge duplicate breaking change headings in release notes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2776
* Optimize O(n²) algorithms and reduce redundant iterations by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2778
* Optimize performance with LRU caching and O(n) algorithms by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2777
* Optimize Jinja2 environment caching and ruff batch formatting by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2779
* Remove YAML parsing cache and deepcopy overhead by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2781
* Add performance e2e tests with large schema fixtures by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2782
* Convert Import class from Pydantic to dataclass for performance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2783
* Add schema path context to error messages by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2786
* Return str or dict when output=None in generate() by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2787
* Add --http-timeout CLI option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2788
* Pass schema extensions to templates by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2790
* Add propertyNames and x-propertyNames support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2789
* Add support for additional_imports in extra-template-data JSON by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2793
* Update zensical to 0.0.15 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2794
* Add --use-field-description-example option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2792
* Add --collapse-root-models-name-strategy option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2791


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.48.0...0.49.0

