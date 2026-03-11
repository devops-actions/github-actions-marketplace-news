---
title: datamodel-code-generator
date: 2026-03-11 05:54:34 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.55.0
dependentsNumber: "2,767"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.55.0**.
- This action is used across all versions by **2,767** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` is a tool that automates the generation of Python data models from various schema definitions, such as OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON/YAML/CSV. It simplifies the creation of type-safe, validated Python code by handling complex schema structures (e.g., `$ref`, `oneOf`, `anyOf`, enums) and supports multiple output formats, including Pydantic models, dataclasses, and TypedDicts. This tool is ideal for developers looking to streamline model creation and ensure compatibility with type checkers and IDEs.

## Release notes

## Breaking Changes









### Dependency Changes
* Pydantic v1 runtime support removed - Pydantic v2 is now required as a runtime dependency. Users running datamodel-code-generator with Pydantic v1 installed must upgrade to Pydantic v2. The previously deprecated v1 compatibility layer has been completely removed. (#3025)

### Default Behavior Changes
* Default output model switched from Pydantic v1 to v2 - Running `datamodel-codegen` without specifying `--output-model-type` now generates Pydantic v2 models (`pydantic_v2.BaseModel`) instead of Pydantic v1 models (`pydantic.BaseModel`). Users who depend on the previous default behavior must now explicitly specify `--output-model-type pydantic.BaseModel` to continue generating Pydantic v1 compatible code. (#3029)

### Code Generation Changes
* Generated model syntax changed for default output - The default generated code now uses Pydantic v2 syntax including `RootModel` instead of `__root__` fields, native union syntax (`str | None`) instead of `Optional[str]`, and Pydantic v2 validator/serializer decorators. Existing code that consumes generated models may need updates to work with the new Pydantic v2 output format. (#3029)
* Pydantic v1 output support removed - The `pydantic.BaseModel` output model type has been completely removed. Generated code now only supports Pydantic v2 patterns including `RootModel` instead of `__root__`, `model_rebuild()` instead of `update_forward_refs()`, and `model_config` instead of `class Config`. Users generating Pydantic v1 models must migrate to v2 output. (#3031)

### Custom Template Update Required
* Pydantic v1 templates removed - The following Jinja2 templates have been deleted and users with custom templates extending them must migrate to v2 equivalents:
  - `pydantic/BaseModel.jinja2` → use `pydantic_v2/BaseModel.jinja2`
  - `pydantic/BaseModel_root.jinja2` → use `pydantic_v2/RootModel.jinja2`
  - `pydantic/Config.jinja2` → removed (v2 uses `model_config` dict)
(#3031)

### API/CLI Changes
* `--output-model-type pydantic.BaseModel` removed - The `pydantic.BaseModel` value for `--output-model-type` is no longer valid. Use `pydantic_v2.BaseModel` instead (now the default). (#3031)
* Pydantic v1 compatibility utilities removed from Python API - The following functions were removed from `datamodel_code_generator.util`: `model_dump()`, `model_validate()`, `get_fields_set()`, `model_copy()`. Use Pydantic v2 methods directly (`obj.model_dump()`, `cls.model_validate()`, etc.). (#3031)
* `datamodel_code_generator.model.pydantic` module removed - The entire Pydantic v1 model module including `BaseModel`, `CustomRootType`, `DataModelField`, `DataTypeManager`, and `dump_resolve_reference_action` has been removed. Use `datamodel_code_generator.model.pydantic_v2` instead. (#3031)
* Pydantic v2 now required at runtime - The minimum pydantic dependency changed from `pydantic>=1.5` to `pydantic>=2,<3`. Users with pydantic v1 installed must upgrade to pydantic v2 before using datamodel-code-generator (#3027)
* Removed internal pydantic compatibility utilities - The following functions/classes were removed from `datamodel_code_generator.util`: `get_pydantic_version()`, `is_pydantic_v2()`, `model_validator()`, `field_validator()`, and `ConfigDict`. Users who imported these internal utilities directly must update their code to use pydantic's native APIs (#3027)
* Removed `datamodel_code_generator.pydantic_patch` module - The entire pydantic compatibility patching module was removed. Any code importing from this module will fail (#3027)
* Removed `packaging` dependency - The `packaging` library is no longer a dependency. Code that relied on it being transitively available should add it explicitly (#3027)

## What's Changed
* Extract shared pydantic base module for v2/dataclass/msgspec by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3022
* Remove pydantic v1 runtime compat layer by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3025
* test: make integration helpers explicit about output model by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3028
* feat: switch default output model to pydantic v2 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3029
* test: align v2 parser baselines before v1 output removal by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3032
* feat: remove pydantic v1 output support by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3031
* docs: remove pydantic v1 references by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3030
* Remove pydantic v1 runtime compat shims and update dependencies by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3027
* docs: remove final pydantic v1 traces by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3036
* Fix all-export generation for hyphenated directories by @an5t in https://github.com/koxudaxi/datamodel-code-generator/pull/3033
* Fix exact imports for reused tree-scope models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3042
* fix #3034 and #3035 by introducing `ValidatedDefault` by @keyz in https://github.com/koxudaxi/datamodel-code-generator/pull/3040
* Avoid TYPE_CHECKING imports for Ruff modular output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3043
* Add deprecated decorators for dataclass output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3044
* Fix for #3045 by @ashipilov in https://github.com/koxudaxi/datamodel-code-generator/pull/3046
* Refactor generate tests to use assertion helper by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3047

## New Contributors
* @an5t made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3033
* @keyz made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3040
* @ashipilov made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3046

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.54.1...0.55.0

