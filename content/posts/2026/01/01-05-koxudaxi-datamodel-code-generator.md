---
title: datamodel-code-generator
date: 2026-01-01 05:34:48 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.51.0
dependentsNumber: "2,499"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.51.0**.
- This action is used across all versions by **2,499** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema definitions, including OpenAPI 3, JSON Schema, GraphQL, and raw data formats like JSON, YAML, or CSV. It simplifies the creation of type-safe, validated Python models compatible with frameworks such as Pydantic, dataclasses, TypedDict, and msgspec, handling complex schema constructs like `$ref`, `allOf`, and nested types. This tool is ideal for streamlining development workflows by reducing manual coding and ensuring robust type-checking.

## Release notes

## Breaking Changes



### Code Generation Changes
* Different output when using `--input-model` with Set, FrozenSet, Mapping, or Sequence types - When using `--input-model` to convert Pydantic models or dataclasses, types that were previously converted to `list` or `dict` are now preserved as their original Python types. For example, a field typed as `Set[str]` now generates `set[str]` instead of `list[str]`, `FrozenSet[T]` generates `frozenset[T]`, `Mapping[K, V]` generates `Mapping[K, V]` instead of `dict[K, V]`, and `Sequence[T]` generates `Sequence[T]` instead of `list[T]`. This may cause type checking differences or runtime behavior changes if your code depended on the previous output types. (#2837)
* allOf multi-ref with property overrides now preserves inheritance - Schemas using `allOf` with multiple `$ref` items where the child schema also defines properties that override parent properties will now generate classes with multiple inheritance (e.g., `class Person(Thing, Location)`) instead of a flattened single class with all properties merged inline. Previously, child property overrides were incorrectly treated as conflicts, triggering schema merging. Users relying on the flattened output may need to adjust their code. (#2838)
  Before:
  ```python
  class Person(BaseModel):
      type: str | None = 'playground:Person'
      name: constr(min_length=1) | None = None
      address: constr(min_length=5)
      age: int | None = None
  ```
  After:
  ```python
  class Thing(BaseModel):
      type: str
      name: constr(min_length=1)
  class Location(BaseModel):
      address: constr(min_length=5)
  class Person(Thing, Location):
      type: str | None = 'playground:Person'
      name: constr(min_length=1) | None = None
      age: int | None = None
  ```
* Ruff unsafe fixes now applied automatically - When using the `ruff-check` formatter, the `--unsafe-fixes` flag is now passed to ruff, which enables fixes that may change code behavior in potentially incorrect ways. This includes removing unused imports that might have side effects, removing unused variables that could affect debugging, and other transformations ruff considers "unsafe". Users who relied on the previous conservative safe-only fix behavior may see different generated code output. To restore the previous behavior, users can configure ruff via `pyproject.toml` or `ruff.toml` to disable specific unsafe rules. (#2847)
* Type aliases now generate as class inheritance - When using `--reuse-model` (Pydantic v2 only), models that would previously generate as type aliases (`ChildModel = ParentModel`) now generate as explicit subclasses (`class ChildModel(ParentModel): pass`). This change improves type checker compatibility and maintains proper type identity, but may affect code that relied on type alias semantics or compared types directly. (#2853)
  Before:
  ```python
  ArmLeft = ArmRight
  ```
  After:
  ```python
  class ArmLeft(ArmRight):
      pass
  ```
* Fields with `const` values in anyOf/oneOf now generate `Literal` types instead of inferred base types - Previously, a `const` value like `"MODE_2D"` in an anyOf/oneOf schema would generate `str` type. Now it generates `Literal["MODE_2D"]`. This change affects type hints in generated models and may require updates to code that type-checks against the generated output. For example:
  ```python
  # Before (v0.x)
  map_view_mode: str = Field("MODE_2D", alias="mapViewMode", const=True)
  apiVersion: str = Field('v1', const=True)
  # After (this PR)
  map_view_mode: Literal["MODE_2D"] = Field("MODE_2D", alias="mapViewMode", const=True)
  apiVersion: Literal['v1'] = Field('v1', const=True)
  ```
  This is a bug fix that makes the generated code more type-safe, but downstream code performing type comparisons or using `isinstance(field, str)` checks may need adjustment. (#2864)

### Custom Template Update Required
* New DataType flags available for custom templates - Three new boolean flags have been added to the `DataType` class: `is_frozen_set`, `is_mapping`, and `is_sequence`. Custom Jinja2 templates that inspect DataType flags may need to be updated to handle these new type variations if they contain logic that depends on exhaustive type flag checks. (#2837)
* Pydantic v2 BaseModel.jinja2 template structure changed - If you have a custom template that extends or modifies the default `pydantic_v2/BaseModel.jinja2` template, you need to update it. The conditional block that generated type aliases (`{% if base_class != "BaseModel" and ... %}{{ class_name }} = {{ base_class }}{% else %}...{% endif %}`) has been removed. Templates should now always generate class declarations. (#2853)

### Default Behavior Changes
* `--input-model-ref-strategy reuse-foreign` behavior changed - Previously, this strategy compared the source type family against the **input** model's family (e.g., if input was Pydantic, any non-Pydantic type like dataclass was considered "foreign" and reused). Now it compares against the **output** model's family. This means types that were previously imported/reused may now be regenerated, and vice versa. For example, when converting a Pydantic model containing a dataclass to TypedDict output, the dataclass was previously imported (it was "foreign" to Pydantic input), but now it will be regenerated (it's not the same family as TypedDict output). Enums are always reused regardless of output type. (#2854)

### API/CLI Changes
* Mixing config and keyword arguments now raises ValueError - Previously, `generate()` allowed passing both a `config` object and individual keyword arguments, with keyword arguments overriding config values. Now, providing both raises `ValueError: "Cannot specify both 'config' and keyword arguments. Use one or the other."` Users must choose one approach: either pass a `GenerateConfig` object or use keyword arguments, but not both. (#2874)
  ```python
  # Before (worked): keyword args overrode config values
  generate(input_=schema, config=config, output=some_path)
  # After (raises ValueError): must use one or the other
  # Option 1: Use config only (include output in config)
  config = GenerateConfig(output=some_path, ...)
  generate(input_=schema, config=config)
  # Option 2: Use keyword args only
  generate(input_=schema, output=some_path, ...)
  ```
* Parser signature simplified to config + options pattern - `Parser.__init__`, `JsonSchemaParser.__init__`, `OpenAPIParser.__init__`, and `GraphQLParser.__init__` now accept either a `config: ParserConfig` object OR keyword arguments via `**options: Unpack[ParserConfigDict]`, but not both simultaneously. Passing both raises a `ValueError`. Existing code using only keyword arguments continues to work unchanged. (#2877)
  ```python
  # Before: Could potentially mix config with kwargs (undefined behavior)
  parser = JsonSchemaParser(source="{}", config=some_config, field_constraints=True)
  # After: Raises ValueError - must use one approach or the other
  parser = JsonSchemaParser(source="{}", config=some_config)  # Use config object
  # OR
  parser = JsonSchemaParser(source="{}", field_constraints=True)  # Use keyword args
  ```
* Subclass compatibility - Code that subclasses `Parser`, `JsonSchemaParser`, `OpenAPIParser`, or `GraphQLParser` may need updates if they override `__init__` and call `super().__init__()` with explicit parameter lists. The new signature uses `**options: Unpack[ParserConfigDict]` instead of explicit parameters. (#2877)
* `Config.input_model` type changed from `str` to `list[str]` - The `input_model` field in the `Config` class now stores a list of strings instead of a single string. While backward compatibility is maintained when *setting* the value (single strings are automatically coerced to lists), code that *reads* `config.input_model` will now receive a `list[str]` instead of `str | None`. Users who programmatically access this field should update their code to handle the list type. (#2881)
  ```python
  # Before
  if config.input_model:
      process_model(config.input_model)  # config.input_model was str
  # After
  if config.input_model:
      for model in config.input_model:  # config.input_model is now list[str]
          process_model(model)
  ```

## What's Changed
* Add public API signature baselines by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2832
* Add deprecation warning for Pydantic v1 runtime by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2833
* Fix --use-generic-container-types documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2835
* Add extends support for profile inheritance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2834
* Fix CLI option docstrings and add missing tests by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2836
* Preserve Python types (Set, Mapping, Sequence) in --input-model by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2837
* Replace docstring with option_description in cli_doc marker by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2839
* Fix allOf multi-ref to preserve inheritance with property overrides by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2838
* Fix x-python-type for Optional container types in anyOf schemas by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2840
* Support incompatible Python types in x-python-type extension by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2841
* Fix nested type imports in x-python-type override by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2842
* Fix deep hierarchy type inheritance in allOf property overrides by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2843
* Fix CLI doc option_description errors in tests and build script by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2846
* Add --unsafe-fixes to ruff-check formatter by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2847
* Add support for multiple aliases using Pydantic v2 AliasChoices by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2845
* Handle types.UnionType in _serialize_python_type for Python 3.10-3.13 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2848
* Fix set/frozenset duplicate output in x-python-type serialization by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2849
* Add --input-model-ref-strategy option for controlling type reuse by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2850
* Fix DataType deepcopy infinite recursion with circular references by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2852
* Add automatic handling of unserializable types in --input-model by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2851
* Fix reuse-foreign to compare with output type instead of input type by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2854
* Fix reuse-model generating type aliases instead of class inheritance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2853
* Add AST-based type string parsing helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2856
* Fix x-python-type qualified name imports using AST helper by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2857
* Fix generic type import with module path by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2858
* Use __qualname__ for nested class support and add DefaultPutDict test by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2859
* fix: handle type definitions from grand(grand...) parent schemas by @simontaurus in https://github.com/koxudaxi/datamodel-code-generator/pull/2861
* Add defaultdict and Any to PYTHON_TYPE_IMPORTS by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2860
* Add defaultdict to preserved type origins for TypedDict generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2866
* Handle Annotated types in _serialize_python_type for TypedDict generation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2867
* Remove WithJsonSchema from ExtraTemplateDataType by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2868
* Fix const in anyOf/oneOf to generate Literal type by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2864
* Optimize deepcopy for empty lists by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2862
* Fix pre-commit hooks and pytest for Windows environments by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2871
* Fix _normalize_union_str to handle nested generic types by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2875
* Fix _normalize_union_str to recursively normalize nested unions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2876
* feat: add --allof-class-hierarchy option by @simontaurus in https://github.com/koxudaxi/datamodel-code-generator/pull/2869
* Simplify generate() function signature using Unpack[GenerateConfigDict] by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2874
* Simplify Parser.__init__ signature using Unpack[ParserConfigDict] by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2877
* Refactor generate() and Parser to use config directly by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2878
* Update using_as_module.md to document config parameter by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2879
* fix: Always merge multiple GraphQL schemas before parsing by @siminn-arnorgj in https://github.com/koxudaxi/datamodel-code-generator/pull/2873
* Refactor: Use model_validate/parse_obj for Parser config initialization by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2880
* Add multiple --input-model support with inheritance preservation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2881
* Exclude OpenAPI/JSON Schema extension fields (x-*) by @ahmetveburak in https://github.com/koxudaxi/datamodel-code-generator/pull/2801
* Add pre-commit hook setup instructions to contributing guide by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2882
* Consolidate ParserConfig TypedDict profiles with inheritance preservation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2883
* Add release notification workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2884

## New Contributors
* @simontaurus made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/2861

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.50.0...0.51.0

