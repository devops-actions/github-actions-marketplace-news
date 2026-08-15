---
title: datamodel-code-generator
date: 2026-08-15 14:08:44 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.73.0
dependentsNumber: "3,464"
actionType: Composite
actionSummary: |
  The `datamodel-code-generator` GitHub Action automates the process of generating Python data models from various schema formats, including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types (Pydantic, dataclass, TypedDict) to different output types and supports Pydantic v2 and multiple model styles such as Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with features like `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types, ensuring type-safe, validated code output for development environments and type checkers.
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.73.0**.

- This action is used across all versions by **3,464** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the process of generating Python data models from various schema formats, including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types (Pydantic, dataclass, TypedDict) to different output types and supports Pydantic v2 and multiple model styles such as Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with features like `$ref`, `allOf`, `oneOf`, `anyOf`, enums, and nested types, ensuring type-safe, validated code output for development environments and type checkers.

## What's Changed

## Breaking Changes


### Error Handling Changes
* Additional imports are now validated as Python import paths - Values passed via `--additional-imports`, the Python config API (`GenerateConfig`, `JSONSchemaParserConfig`, etc.), or `--extra-template-data` must now be dotted sequences of Python identifiers. Previously any value was accepted and split on commas without validation; now inputs that are not valid import paths (e.g. containing newlines, semicolons, or non-identifier syntax) raise an `Error` and abort generation instead of being emitted into the generated output. Valid dotted paths (optionally whitespace-padded) continue to work unchanged. (#3763)
```
additional_imports must be a Python import path composed of identifiers: 'collections.deque\nINJECTION_MARKER = 1'
```

### Default Behavior Changes
* Reserved template keys in `--extra-template-data` now raise an error for built-in templates - When rendering a built-in (project-owned) template, supplying any generator-reserved key through `--extra-template-data` (or the `extra_template_data` API argument) now raises an `Error` and aborts generation instead of injecting the value. The reserved keys are `class_body_lines`, `config_items`, `schema_runtime_validation`, `schema_runtime_validation_base_class_name`, `schema_runtime_validation_use_base`, `sequence_base_class`, `sequence_item_type`, `sequence_slice_type`, `_safe_config_items`, `typed_dict_kwargs`, and `typed_dict_kwargs_suffix`. To inject raw code via these keys you must now use a custom root template through `--custom-template-dir`. (#3765)
* Stricter `extra_template_data` validation - `extra_template_data` that is not a dictionary, contains non-string keys, or contains duplicate (normalized) keys now raises an `Error` rather than being silently accepted. (#3765)

### Code Generation Changes
* Built-in templates now serialize `extra_template_data` values as non-executing literals - For built-in templates, user-supplied values that were previously emitted as raw Python source are now serialized as quoted, non-executing literals. This affects GraphQL scalar `py_type`, TypedDict `additionalPropertiesType`, `ConfigDict` values, msgspec `base_class_kwargs`, and comments. Only bare or dotted identifiers (e.g. `datetime.date`) are still emitted unquoted; more complex expressions become string literals. For example, a scalar `py_type` supplied as a type expression is now rendered as:
```python
Evil = TypeAliasType("Evil", "__import__('os').system('id') or str")
```
Trusted custom root templates (`--custom-template-dir` providing the root template) keep the previous unrestricted raw behavior. (#3765)
* Include-only custom template directories no longer receive raw built-in context - "Custom root" detection changed from `template_file_path.is_absolute()` to `_uses_custom_root_template`. A `--custom-template-dir` that only supplies include/partial templates (not the model's root template) no longer opts the built-in root into the unrestricted raw-context path; its `extra_template_data` is now treated with the hardened built-in rules (and reserved keys raise an error). (#3765)

## What's Changed
* Update CHANGELOG for 0.72.4 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3736
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3737
* Guard refactor contracts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3739
* Tighten generation types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3740
* Simplify generation dispatch by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3741
* Simplify parser metadata flow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3742
* Optimize built-in generation performance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3738
* Optimize simple field construction by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3754
* Optimize msgspec unset field rendering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3755
* Optimize false reference handling by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3750
* Compile built-in templates by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3757
* Optimize Pydantic field name resolution by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3758
* Avoid Jinja in the playground runtime by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3759
* Fix main lint workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3761
* Bump the github-actions group with 5 updates by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3751
* Fix payload runtime validation exclusions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3764
* Validate additional import paths by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3763
* Harden built-in template data by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3765
* Restrict template source paths by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3766


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.72.4...0.73.0

