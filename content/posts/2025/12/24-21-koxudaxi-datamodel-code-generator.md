---
title: datamodel-code-generator
date: 2025-12-24 21:10:52 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.48.0
dependentsNumber: "2,491"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.48.0**.
- This action is used across all versions by **2,491** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions, including OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It simplifies handling complex schemas, supports multiple output types such as Pydantic models, dataclasses, and TypedDict, and ensures type-safe, validated code for use with IDEs and type checkers. This tool streamlines schema-to-code workflows, saving time and reducing manual coding errors.

## Release notes

## Breaking Changes
















### Code Generation Changes
* Custom class name generator now applied consistently during duplicate name resolution - Previously, when using `custom_class_name_generator`, the default PascalCase naming was incorrectly applied during duplicate name resolution. Now the custom generator is respected throughout, which may change generated class names. For example, a class name like `nested_object_result` with a custom generator `f"Custom{name}"` will now produce `CustomNested_object_result` instead of `CustomNestedObjectResult`. Users relying on the previous behavior should update their code to expect the new, correct class names. (#2757)

* YAML 1.1 boolean keywords now preserved as strings in enums - Values like `YES`, `NO`, `on`, `off`, `y`, `n` that were previously converted to Python booleans are now preserved as their original string values. This fixes issues where string enum values were incorrectly converted but may change generated output for schemas that relied on the previous behavior. For example, a YAML enum with `YES` will now generate `YES = 'YES'` instead of being converted to `True`. (#2767)

### Default Behavior Changes
* YAML boolean parsing restricted to YAML 1.2 semantics - Only `true`, `false`, `True`, `False`, `TRUE`, `FALSE` are now recognized as boolean values. YAML 1.1 boolean aliases (`yes`, `no`, `on`, `off`, `y`, `n`, etc.) are no longer parsed as booleans and will be treated as strings. Non-lowercase forms (`True`, `False`, `TRUE`, `FALSE`) now emit a deprecation warning indicating future versions will only support lowercase `true`/`false`. (#2767)

## What's Changed
* Fix Google Analytics config for Zensical by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2748
* ci: add release draft workflow with Claude Code Action by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2749
* fix: improve release-draft workflow configuration by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2750
* fix: quote JSON schema in claude_args to preserve double quotes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2751
* fix: remove redundant --output-format json from claude_args by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2752
* fix: increase max-turns from 5 to 10 for structured output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2753
* chore: increase max-turns to 20 for better margin by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2754
* Add pydantic_v2.dataclass output type and remove pydantic v1 dataclass by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2746
* Fix Pydantic v2 deprecation warnings by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2747
* Add --use-tuple-for-fixed-items option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2756
* Fix custom_class_name_generator not applied consistently by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2757
* Add --base-class-map option for model-specific base classes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2759
* Support 'timestamp with time zone' format by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2762
* Add --type-overrides option to replace schema types with custom Python types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2758
* Add --use-root-model-type-alias option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2763
* Add --class-decorators option for custom model decorators by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2760
* Add --naming-strategy and --duplicate-name-suffix CLI options by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2761
* Add --generate-prompt option for LLM consultation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2764
* Add pydantic_v2.dataclass to output model types documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2765
* Clarify --input-file-type help text and CLI documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2768
* Support boolean values in patternProperties for JSON Schema 2020-12 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2766
* Use YAML 1.2-like bool semantics to fix YES/NO/on/off enum issues by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2767
* Add InvalidFileFormatError with detailed error messages by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2771
* Merge multiple patternProperties with same value type into single regex pattern by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2770
* Sync Common Recipes and badges between README and docs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2773
* Fix primary-first naming for multi-file schemas with same-named definitions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2772
* Optimize performance for large schema processing by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2774


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.47.0...0.48.0

