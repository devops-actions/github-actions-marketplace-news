---
title: datamodel-code-generator
date: 2025-12-28 13:11:46 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.50.0
dependentsNumber: "2,497"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.50.0**.
- This action is used across all versions by **2,497** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions such as OpenAPI 3, JSON Schema, GraphQL, and raw data formats (JSON/YAML/CSV). It simplifies the creation of type-safe, validated Python code, supporting Pydantic, dataclasses, TypedDict, and msgspec models, while handling complex schema structures like `$ref`, `allOf`, and enums. This tool is particularly useful for developers looking to streamline data modeling and ensure compatibility with IDEs and type checkers.

## Release notes

## Breaking Changes


















### Code Generation Changes
* Models with `unevaluatedProperties` now generate extra field configuration - JSON Schemas containing `unevaluatedProperties: false` will now generate models with `extra='forbid'` (Pydantic v2) or `extra = Extra.forbid` (Pydantic v1), and schemas with `unevaluatedProperties: true` will generate `extra='allow'`. Previously this keyword was ignored. This may cause validation errors for data that was previously accepted. (#2797)
  Example - a schema like:
  ```json
  {
    "title": "Resource",
    "type": "object",
    "properties": { "name": { "type": "string" } },
    "unevaluatedProperties": false
  }
  ```
  Previously generated:
  ```python
  class Resource(BaseModel):
      name: str | None = None
  ```
  Now generates:
  ```python
  class Resource(BaseModel):
      model_config = ConfigDict(extra='forbid')
      name: str | None = None
  ```

### Default Behavior Changes
* Default encoding changed from system locale to UTF-8 - The default encoding for reading input files and writing output is now always `utf-8` instead of the system's locale-preferred encoding (e.g., `cp1252` on Windows). Users who rely on locale-specific encoding must now explicitly use `--encoding` to specify their desired encoding (#2802)

## What's Changed
* Fix missing model_config in query parameter classes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2795
* Escape backslash and triple quotes in docstrings by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2796
* Add unevaluatedProperties support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2797
* Expose schema $id and path to template context by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2798
* Improve CLI startup time with lazy imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2799
* Use UTF-8 as default encoding instead of locale-preferred by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2802
* Add model-level json_schema_extra support for Pydantic v2 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2803
* Add input_model field support to cli_doc marker by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2805
* Add dict input support for generate() function by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2806
* Optimize extra_template_data copy in DataModel init by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2811
* Add LRU cache for file loading and path existence checks by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2810
* Optimize JSON/YAML loading with auto-detection and json.load by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2809
* Migrate docs deployment to Cloudflare Pages by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2812
* Optimize CI workflow with tox cache and remove dev check by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2815
* Fix superfluous None when using $ref with nullable type aliases by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2814
* Remove tox cache that breaks Windows CI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2816
* Add --input-model option for Pydantic models and dicts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2804
* Add ReadOnly support for TypedDict with --use-frozen-field by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2813
* Exclude perf tests from regular test runs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2817
* Add extreme-scale performance tests with dynamic schema generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2818
* Add ULID type support by @ahmetveburak in https://github.com/koxudaxi/datamodel-code-generator/pull/2820
* Add --enum-field-as-literal-map option and x-enum-field-as-literal schema extension by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2821
* Fix propertyNames constraint ignored when using $ref to enum definition by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2824
* Reduce CodSpeed benchmark tests for faster CI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2826
* Optimize propertyNames $ref handling by calling get_ref_data_type directly by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2825
* Add missing path and ulid type mappings to TypedDict type manager by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2828
* Fix --check to use output path's pyproject.toml settings by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2831

## New Contributors
* @ahmetveburak made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2820

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.49.0...0.50.0

