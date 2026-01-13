---
title: datamodel-code-generator
date: 2026-01-13 05:59:52 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.53.0
dependentsNumber: "2,547"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.53.0**.
- This action is used across all versions by **2,547** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from schema definitions like OpenAPI, JSON Schema, GraphQL, and raw data formats (e.g., JSON, YAML, CSV). It simplifies handling complex schemas and ensures type-safe, validated code compatible with Pydantic, dataclasses, TypedDict, or msgspec, aiding developers in building reliable, schema-driven applications efficiently.

## Release notes

## Breaking Changes





### Custom Template Update Required
* Parser subclass signature change - The `Parser` base class now requires two generic type parameters: `Parser[ParserConfigT, SchemaFeaturesT]` instead of just `Parser[ParserConfigT]`. Custom parser subclasses must be updated to include the second type parameter. (#2929)
  ```python
  # Before
  class MyCustomParser(Parser["MyParserConfig"]):
      ...
  # After
  class MyCustomParser(Parser["MyParserConfig", "JsonSchemaFeatures"]):
      ...
  ```
* New abstract `schema_features` property required - Custom parser subclasses must now implement the `schema_features` abstract property that returns a `JsonSchemaFeatures` (or subclass) instance. (#2929)
  ```python
  from functools import cached_property
  from datamodel_code_generator.parser.schema_version import JsonSchemaFeatures
  from datamodel_code_generator.enums import JsonSchemaVersion
  class MyCustomParser(Parser["MyParserConfig", "JsonSchemaFeatures"]):
      @cached_property
      def schema_features(self) -> JsonSchemaFeatures:
          return JsonSchemaFeatures.from_version(JsonSchemaVersion.Draft202012)
  ```
* Parser `_create_default_config` refactored to use class variable - Subclasses that override `_create_default_config` should now set the `_config_class_name` class variable instead. The base implementation uses this variable to dynamically instantiate the correct config class. (#2929)
  ```python
  # Before
  @classmethod
  def _create_default_config(cls, options: MyConfigDict) -> MyParserConfig:
      # custom implementation...
  # After
  _config_class_name: ClassVar[str] = "MyParserConfig"
  # No need to override _create_default_config if using standard config creation
  ```
* Template condition for default values changed - If you use custom Jinja2 templates based on `BaseModel_root.jinja2` or `RootModel.jinja2`, the condition for including default values has changed from `field.required` to `(field.required and not field.has_default)`. Update your custom templates if you override these files. (#2960)

### Code Generation Changes
* RootModel default values now included in generated code - Previously, default values defined in JSON Schema or OpenAPI specifications for root models were not being applied to the generated Pydantic code. Now these defaults are correctly included. For example, a schema defining a root model with `default: 1` will generate `__root__: int = 1` (Pydantic v1) or `root: int = 1` (Pydantic v2) instead of just `__root__: int` or `root: int`. This may affect code that relied on the previous behavior where RootModel fields had no default values. (#2960)
* Required fields with list defaults now use `default_factory` - Previously, required fields with list-type defaults (like `__root__: list[ID] = ['abc', 'efg']`) were generated with direct list assignments. Now they correctly use `Field(default_factory=lambda: ...)` which follows Python best practices for mutable defaults. This changes the structure of generated code for root models and similar patterns with list defaults. (#2958)
  Before:
  ```python
  class Family(BaseModel):
      __root__: list[ID] = ['abc', 'efg']
  ```
  After:
  ```python
  class Family(BaseModel):
      __root__: list[ID] = Field(
          default_factory=lambda: [ID.parse_obj(v) for v in ['abc', 'efg']]
      )
  ```

## What's Changed
* Separate pytest-benchmark into dedicated benchmark dependency group by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2937
* Support ClassVar for Pydantic v2 by @ubaumann in https://github.com/koxudaxi/datamodel-code-generator/pull/2920
* Add schema version detection and feature flags by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2924
* Fix MRO ordering for multiple inheritance in GraphQL and JSON Schema/OpenAPI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2941
* Add schema_features property to parsers for version detection by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2929
* Fix $ref handling in request-response mode for readOnly/writeOnly schemas by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2942
* Ensure codecov upload runs even when coverage check fails by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2944
* Add FeatureMetadata to schema feature classes for doc generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2945
* Add schema-docs auto-generation with pre-commit and CI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2949
* Add comprehensive feature metadata to schema version dataclasses by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2946
* fix: move UnionMode import outside TYPE_CHECKING for Pydantic runtime… by @phil65 in https://github.com/koxudaxi/datamodel-code-generator/pull/2950
* Fix IndexError when using --reuse-scope=tree with single file output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2954
* Add --use-closed-typed-dict option to control PEP 728 TypedDict generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2956
* Fix RootModel default value not being applied by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2960
* Fix required list fields ignoring empty default values by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2958
* Add GenerateConfig lazy import from top-level module by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2961
* Fix allOf array property merging to preserve child $ref by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2962
* Fix array RootModel default value handling in parser by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2963
* Fix bug in handling of graphql empty list defaults by @rpmcginty in https://github.com/koxudaxi/datamodel-code-generator/pull/2948

## New Contributors
* @ubaumann made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2920
* @phil65 made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2950

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.52.2...0.53.0

