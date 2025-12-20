---
title: datamodel-code-generator
date: 2025-12-20 18:49:30 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.46.0
dependentsNumber: "2,486"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.46.0**.
- This action is used across all versions by **2,486** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from schema definitions such as OpenAPI 3, JSON Schema, GraphQL, or raw data formats like JSON, YAML, and CSV. It produces type-safe, validated code compatible with frameworks like Pydantic, dataclasses, and TypedDict, simplifying the handling of complex schemas and ensuring seamless integration with IDEs and type checkers. This tool streamlines the creation of data models, reducing manual effort and improving code reliability.

## Release notes

## Breaking Changes

 ### Python Version
 * Python 3.9 support dropped - Minimum Python version is now 3.10+ (#2692)

 ### Default Behavior Changes
 * Native type hints by default - `list[...]`/`dict[...]` are now used instead of `List[...]`/`Dict[...]`. Use `--no-use-standard-collections` to restore previous behavior (#2699)
 * Union operator by default - `X | Y` syntax is now used instead of `Union[X, Y]`/`Optional[X]`. Use `--no-use-union-operator` to restore previous behavior (#2703)

 ### Code Generation Changes
 * Nullable required fields no longer have default values (Pydantic v2) - Fields marked as both `required` and `nullable` no longer get `= None`. The `pydantic_v2/BaseModel.jinja2` template logic was updated to only assign default values when `field.required` is false. This fixes incorrect behavior where required fields could be omitted (#2520)
 * TypedDict respects enum_field_as_literal setting - TypedDict output now respects user's `--enum-field-as-literal` setting instead of forcing `all`. Added new `--enum-field-as-literal none` option (#2691)
 * prefixItems now generates tuple types - JSON Schema `prefixItems` with matching `minItems`/`maxItems` and no `items` now generates `tuple[T1, T2, ...]` instead of `list[...]`. This applies when the array has a fixed length with heterogeneous types (#2537)


## What's Changed
* feat: Add --use-status-code-in-response-name option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2688
* feat: Add support for number type with time-delta format by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2689
* docs: Add CHANGELOG.md with auto-update workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2690
* feat: Add --enum-field-as-literal none option and respect user settings for TypedDict by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2691
* docs: Clarify default encoding behavior in documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2693
* ci: Improve CLI docs generation workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2695
* feat(docs): Group CLI examples by schema type with tabs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2696
* feat: Add --ignore-enum-constraints option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2694
* Add zensical.toml configuration by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2697
* fix: Make docs generation deterministic by sorting glob results and dict iterations by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2698
* feat: Drop Python 3.9 support, require Python 3.10+  by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2692
* fix: Update zensical dependency version to 0.0.13 for Python 3.10+ by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2700
* feat: Default to native list/dict type hints instead of typing.List/Dict by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2699
* fix: Remove unnecessary pass statement when nested class exists by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2704
* build: Replace pre-commit with prek by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2702
* fix: Improve state management in Imports, DataType, and DataModel classes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2705
* feat: Default to union operator for type hints by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2703
* fix: handle fork PRs in lint workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2706
* fix: handle fork PRs in readme and cli-docs workflows by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2707
* Nullable required fields should not have default value by @raymondbutcher in https://github.com/koxudaxi/datamodel-code-generator/pull/2520
* Add support for prefixItems to emit tuples by @saulshanabrook in https://github.com/koxudaxi/datamodel-code-generator/pull/2537
* Remove unnecessary flags from --check test by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2708
* fix: update expected files to use modern union type syntax (`str | None`) by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2709
* fix: trigger docs build after changelog update by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2710

## New Contributors
* @raymondbutcher made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2520
* @saulshanabrook made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2537

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.45.0...0.46.0
