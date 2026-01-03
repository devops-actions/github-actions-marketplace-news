---
title: datamodel-code-generator
date: 2026-01-03 05:35:52 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.52.0
dependentsNumber: "2,500"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.52.0**.
- This action is used across all versions by **2,500** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` is a tool designed to automate the generation of Python data models from various schema definitions, including OpenAPI, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It simplifies handling complex schemas (e.g., `$ref`, `oneOf`) and supports multiple output types such as Pydantic models, dataclasses, TypedDict, and msgspec, enabling type-safe, validated code for streamlined development. This action addresses the need for efficient model creation, reducing manual coding effort and ensuring compatibility with type checkers and IDEs.

## Release notes

## Breaking Changes




### Code Generation Changes
* Union fields with titles now wrapped in named models when `--use-title-as-name` is enabled - Previously, union-typed fields with a `title` were generated as inline union types (e.g., `TypeA | TypeB | TypeC | None`). Now they generate a separate wrapper model using the title name, and the field references this wrapper type (e.g., `ProcessingStatusUnionTitle | None`). This affects code that directly accesses union field values, as they now need to access the `.root` attribute (Pydantic v2) or `.__root__` (Pydantic v1) of the wrapper model. (#2889)
  **Before:**
  ```python
  class ProcessingTaskTitle(BaseModel):
      processing_status_union: (
          ProcessingStatusDetail | ExtendedProcessingTask | ProcessingStatusTitle | None
      ) = Field('COMPLETED', title='Processing Status Union Title')
  ```
  **After:**
  ```python
  class ProcessingStatusUnionTitle(BaseModel):
      __root__: (
          ProcessingStatusDetail | ExtendedProcessingTask | ProcessingStatusTitle
      ) = Field(..., title='Processing Status Union Title')
  class ProcessingTaskTitle(BaseModel):
      processing_status_union: ProcessingStatusUnionTitle | None = Field(
          default_factory=lambda: ProcessingStatusUnionTitle.parse_obj('COMPLETED'),
          title='Processing Status Union Title',
      )
  ```
* Inline types with titles now generate named type aliases when `--use-title-as-name` is enabled - Arrays, dicts, enums-as-literals, and oneOf/anyOf unions that have a `title` in the schema now generate named type aliases or RootModel classes instead of being inlined. This improves readability but changes the generated type structure. For TypedDict output, generates `type MyArrayName = list[str]`. For Pydantic output, generates `class MyArrayName(RootModel[list[str]])`. (#2889)
* Default value handling changed for wrapped union fields - Fields that previously had simple default values now use `default_factory` with a lambda that calls `parse_obj()` (Pydantic v1) or `model_validate()` (Pydantic v2) to construct the wrapper model. Code that introspects field defaults will see a factory function instead of a direct value. (#2889)
* Different output for `$ref` with `nullable: true` - When a JSON Schema property has a `$ref` combined with only `nullable: true` (and optionally metadata like `title`/`description`), the generator now uses the referenced type directly with `Optional` annotation instead of creating a new merged model. For example, a schema with multiple properties referencing `User` with `nullable: true` will now generate `user_a: User | None` instead of creating separate `UserA`, `UserB` model classes. This is a bug fix that reduces redundant model generation, but existing code that depends on the previously generated class names will break. (#2890)
  Before:
  ```python
  class UserA(BaseModel):
      name: str
  class UserB(BaseModel):
      name: str
  class Model(BaseModel):
      user_a: UserA | None = None
      user_b: UserB | None = None
  ```
  After:
  ```python
  class User(BaseModel):
      name: str
  class Model(BaseModel):
      user_a: User | None = None
      user_b: User | None = None
  ```
* Type alias generation expanded for `--use-title-as-name` - When using `--use-title-as-name`, the generator now creates type aliases for additional cases: nested array items with titles, additionalProperties values with titles, oneOf/anyOf branches with titles, patternProperties, propertyNames, and primitive types with titles. Previously these were inlined; now they generate named type aliases. This is a bug fix per #2887, but changes generated output for schemas with titles on nested elements. (#2891)
* Title no longer inherited in combined schemas - In anyOf/oneOf/allOf schemas, the parent schema's `title` is now excluded when merging with child schemas. This prevents unintended title inheritance that could affect model naming when `--use-title-as-name` is enabled. (#2891)
* `allOf` with single `$ref` no longer creates wrapper class - When a schema property uses `allOf` with only a single `$ref` and no additional properties, the generator now directly references the target type instead of creating an unnecessary wrapper class. This may affect code that depends on the previously generated wrapper class names or structure. For example, a property defined as `allOf: [$ref: '#/components/schemas/ACHClass']` will now generate `ach_class: ACHClass | None` instead of creating an intermediate wrapper type. (#2902)

## What's Changed
* Add ULID and Email format documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2886
* Add --class-name-prefix, --class-name-suffix, and --class-name-affix-scope options by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2885
* Use class-name-suffix for parser config TypedDicts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2888
* Create type aliases for inline types with title when use-title-as-name is enabled by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2889
* Fix duplicate model generation for $ref with nullable by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2890
* Create type aliases for nested elements with titles when use-title-as-name is enabled by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2891
* Clarify --aliases help text to explain schema field becomes Pydantic alias by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2892
* Document external library import use case for --type-overrides by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2893
* Add documentation for reducing duplicate field types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2896
* Add FutureWarning for upcoming ruff default formatters by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2895
* Add --openapi-include-paths option for path-based model filtering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2894
* Add --graphql-no-typename option to exclude typename field by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2899
* Add --default-values CLI option for overriding field defaults by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2897
* Fix allOf with single ref creating unnecessary wrapper class by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2902
* Fix --reuse-model --collapse-reuse-models to deduplicate identical inline definitions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2903
* Add --use-serialization-alias option for Pydantic v2 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2905
* Fix Pydantic v2 discriminated unions in array fields by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2907


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.51.0...0.52.0

