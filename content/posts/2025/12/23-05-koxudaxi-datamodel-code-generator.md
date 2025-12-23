---
title: datamodel-code-generator
date: 2025-12-23 05:28:50 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.47.0
dependentsNumber: "2,487"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.47.0**.
- This action is used across all versions by **2,487** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions, such as OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It supports multiple output types, including Pydantic models, dataclasses, TypedDict, and msgspec, while handling complex schema features like `$ref`, `allOf`, and enums. This action simplifies the creation of type-safe, validated code, streamlining development processes by reducing manual coding and ensuring compatibility with IDEs and type checkers.

## Release notes

## Breaking Changes

### Code Generation Changes
* RootModel defaults use direct instantiation - RootModel fields with default values now generate `ClassName(value)` instead of `ClassName.model_validate(value)`. This produces cleaner code but changes the generated output (#2714)

* `--strict-nullable` now applies to JSON Schema - The `--strict-nullable` option is no longer OpenAPI-only and has been moved to Field customization options. It now also correctly respects `nullable` on array items (#2713, #2727)

### Custom Template Update Required
* If you use custom Jinja2 templates that check `field.nullable`, you may need to update them. The `nullable` field on JsonSchemaObject now defaults to `None` instead of `False`. Templates should check `field.nullable is True` instead of just `if field.nullable` (#2715)

  Example change:
  ```jinja2
  {# Before #}
  {%- if field.nullable %}...{% endif %}

  {# After #}
  {%- if field.nullable is true %}...{% endif %}
  ```

### Error Handling Changes
* Formatting failures emit warning instead of error - When code formatting fails (e.g., due to black errors), the generator now emits an unformatted output with a warning instead of raising an exception. This allows code generation to succeed even when formatting tools encounter issues (#2737)

## What's Changed
* Require @cli_doc marker for all CLI options by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2712
* fix: respect nullable on array items with --strict-nullable by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2713
* fix: wrap RootModel primitive defaults with default_factory by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2714
* Add --use-default-factory-for-optional-nested-models option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2711
* Fix nullable field access in custom templates with strict_nullable by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2715
* fix: skip non-model types in __change_field_name by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2717
* Add requestBodies scope support for OpenAPI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2716
* Fix test data backspace escape by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2718
* fix: quote forward references in recursive RootModel generic parameters by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2720
* Add force_exec_validation option to catch runtime errors across Python versions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2719
* Add validation for extra_args in test helper functions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2723
* Fix discriminator with allOf without Literal type for Pydantic v2 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2722
* Fix regex_engine config not applied to RootModel generic by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2721
* Fix hostname format with field_constraints to use Field(pattern=...) by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2724
* Move --strict-nullable from OpenAPI-only to Field customization by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2727
* Run CLI doc coverage test in CI without --collect-cli-docs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2728
* Add --use-generic-base-class option for DRY model config by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2726
* Refactor parser base post-processing for DRY and type-safe implementation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2730
* Add --collapse-reuse-models option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2731
* Add --field-type-collision-strategy option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2733
* Revert "Add --field-type-collision-strategy option" by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2734
* Add --no-treat-dot-as-module option for flat output structure by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2732
* Add --field-type-collision-strategy option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2735
* Add --use-standard-primitive-types option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2736
* Emit unformatted output when formatting fails by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2737
* Fix aliasing of builtin type field names by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2738
* Add path filters to optimize CodeRabbit reviews by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2742
* Add --output-date-class option and date-time-local format support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2739
* Fix custom template directory not working for included templates by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2740
* Remove unnecessary model_config from RootModel subclasses by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2741
* Fix incorrect --type-mappings examples in documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2744
* Add Python 3.13 deprecation warning documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2743
* Add admonition support to CLI docs and document --use-default nullable behavior by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2745


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.46.0...0.47.0
