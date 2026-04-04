---
title: datamodel-code-generator
date: 2026-04-04 21:40:55 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.56.0
dependentsNumber: "2,878"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.56.0**.

- This action is used across all versions by **2,878** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action automates the generation of Python data models from various schema formats, including OpenAPI 3, JSON Schema, GraphQL, and raw data (e.g., JSON, YAML, CSV). It supports creating type-safe, validated models for frameworks like Pydantic, dataclasses, TypedDict, and more, while handling complex schema features such as references, enums, and nested types. This tool streamlines the process of creating ready-to-use, IDE-friendly Python models for developers working with structured data.

## What's Changed

## Breaking Changes

### Code Generation Changes
* Generated default field syntax changed - Fields with structured defaults (dicts, lists, model references) now use `Field(default_value, validate_default=True)` instead of `default_factory=lambda: TypeAdapter(...).validate_python(...)` or `default_factory=lambda: Model.model_validate(...)`. This produces simpler, more readable code but changes the generated output format. (#3050)
* TypeAdapter import removed from generated code - Generated models no longer import `TypeAdapter` from pydantic since `validate_default=True` handles validation natively. (#3050)
* Default value handling for model-referencing fields rewritten - Fields with defaults referencing Pydantic models (BaseModel, RootModel, type aliases) now generate `Field(<raw_value>, validate_default=True)` instead of `default_factory=lambda: Model.model_validate(...)`, `default_factory=lambda: TypeAdapter(...).validate_python(...)`, or `default_factory=lambda: Model(...)`. Empty collection defaults changed from `default_factory=list`/`default_factory=dict` to `Field([], validate_default=True)`/`Field({}, validate_default=True)`. The generated code is semantically equivalent under Pydantic v2 but textually different, which will break snapshot tests or tooling that matches exact output. `pydantic.TypeAdapter` is no longer imported in generated code. (#3070)
* Default values for model-referencing fields now use `validate_default=True` instead of `default_factory` lambdas - Fields with structured defaults (dicts, lists, or scalars referencing Pydantic models/RootModels) previously generated `default_factory=lambda: ModelName.model_validate(value)` or `default_factory=lambda: ModelName(value)`. They now generate `Field(value, validate_default=True)`, producing simpler but different output. Empty collection defaults changed from `default_factory=list`/`default_factory=dict` to `Field([], validate_default=True)`/`Field({}, validate_default=True)`. Users who regenerate code will see different output. (#3071)
  Before:
  ```python
  count: CountType | None = Field(default_factory=lambda: CountType(10))
  items: dict[str, Item] | None = Field(default_factory=dict, title='Items')
  ```
  After:
  ```python
  count: CountType | None = Field(10, validate_default=True)
  items: dict[str, Item] | None = Field({}, title='Items', validate_default=True)
  ```
* Default values for fields referencing models now use `validate_default=True` instead of `default_factory=lambda:` - Fields with structured defaults (dicts/lists) that reference Pydantic models previously generated `default_factory=lambda: Model.model_validate(...)` or `default_factory=lambda: TypeAdapter(Type).validate_python(...)` patterns. They now generate the raw default value directly with `validate_default=True` (e.g., `Field({'key': 'val'}, validate_default=True)` instead of `Field(default_factory=lambda: Model.model_validate({'key': 'val'}))`). This changes the generated code output and may affect users who depend on the exact generated code structure, pin generated output in tests, or use custom post-processing. The runtime behavior should be equivalent for Pydantic v2 users. (#3072)
* `TypeAdapter` import removed from generated code - Generated code no longer imports `pydantic.TypeAdapter` for default value handling. Code that previously used `TypeAdapter(...).validate_python(...)` in default factories now uses inline defaults with `validate_default=True`. (#3072)
* Integer and boolean discriminator values now supported in generated Literal types - Discriminator fields previously only generated string literal values. They now support `int` and `bool` discriminator values (e.g., `Literal[1]` instead of `Literal['1']`), which changes generated code for schemas using integer discriminator mappings. (#3072)

### API/CLI Changes
* `ValidatedDefault` and `WrappedDefault` classes removed - These internal classes were exported from `datamodel_code_generator.model.base` and have been removed. Code importing these types will break:
  ```python
  # Before (broken)
  from datamodel_code_generator.model.base import ValidatedDefault, WrappedDefault
  ```
  (#3050)
* `SUPPORTS_WRAPPED_DEFAULT` and `SUPPORTS_VALIDATED_DEFAULT` class variables removed - These flags were removed from the `DataModel` base class. Custom model classes that override these variables will see attribute errors. (#3050)
* Internal types `ValidatedDefault` and `WrappedDefault` removed - The `datamodel_code_generator.model._types` module was deleted and `ValidatedDefault`/`WrappedDefault` are no longer exported from `datamodel_code_generator.model.base`. Code that imports or subclasses these types will break. The `SUPPORTS_WRAPPED_DEFAULT` and `SUPPORTS_VALIDATED_DEFAULT` class variables were removed from `DataModel` and its subclasses; custom model classes referencing these attributes will need updating. (#3070)
* Removed `WrappedDefault`, `ValidatedDefault` classes and `SUPPORTS_WRAPPED_DEFAULT`, `SUPPORTS_VALIDATED_DEFAULT` class variables - The `WrappedDefault` and `ValidatedDefault` classes from `datamodel_code_generator.model._types` (re-exported via `datamodel_code_generator.model.base`) have been deleted. The `DataModel` class variables `SUPPORTS_WRAPPED_DEFAULT` and `SUPPORTS_VALIDATED_DEFAULT` have also been removed. Code that imports or references these will break. (#3071)
* New `--allow-remote-refs` / `--no-allow-remote-refs` CLI option and `allow_remote_refs` config field - Remote `$ref` fetching over HTTP/HTTPS now emits a deprecation warning by default. Pass `--allow-remote-refs` to suppress the warning, or `--no-allow-remote-refs` to block remote fetching entirely. In a future version, remote fetching will be disabled by default. Users relying on remote `$ref` resolution should add `--allow-remote-refs` to their invocations to avoid the deprecation warning and prepare for the future default change. (#3072)
* New `SchemaFetchError` exception for HTTP fetch failures - Remote schema fetching now raises `SchemaFetchError` (instead of propagating raw `httpx` exceptions) on HTTP errors, non-2xx status codes, or unexpected HTML responses. Users catching specific `httpx` exceptions from remote ref resolution will need to catch `SchemaFetchError` instead. (#3072)

### Error Handling Changes
* Missing local `$ref` now raises `Error` instead of `FileNotFoundError` - Previously, when a `$ref` pointed to a non-existent local file, a raw `FileNotFoundError` propagated to callers. Now it raises `datamodel_code_generator.Error` with the message `"$ref file not found: <path>"`. Programmatic users catching `FileNotFoundError` specifically will need to catch `Error` instead (#3051)
* HTTP fetch failures now raise `SchemaFetchError` instead of propagating raw exceptions - HTTP errors (4xx/5xx status codes), unexpected HTML responses, and transport errors (DNS, timeout, connection) that previously resulted in downstream YAML/JSON parse errors or raw `httpx` exceptions now raise `SchemaFetchError` (a subclass of `Error`) before parsing is attempted. Users catching specific parse errors or `httpx` exceptions for these scenarios will need to update their error handling (#3051)
* HTTP fetch errors now raise `SchemaFetchError` instead of raw httpx exceptions - The `get_body()` function in `http.py` now catches HTTP errors and raises `SchemaFetchError` (a new `Error` subclass) for HTTP status >= 400, network failures, and unexpected HTML responses. Code that caught raw `httpx` exceptions from remote schema fetching will need to catch `SchemaFetchError` instead. (#3071)
* Remote `$ref` fetching now emits `FutureWarning` without `--allow-remote-refs` - Fetching remote HTTP/HTTPS `$ref` references without explicitly passing `--allow-remote-refs` now emits a `FutureWarning` deprecation warning. In a future version, remote fetching will be disabled by default. Users relying on implicit remote ref fetching should add `--allow-remote-refs` to suppress the warning. (#3071)
* HTTP fetch errors now raise `SchemaFetchError` with validation of response content type - Previously, fetching a remote `$ref` that returned an HTML error page would silently pass the HTML through as schema content. Now it raises `SchemaFetchError` if the response has `text/html` content type or a 4xx/5xx status code. This may cause previously-silent failures to become loud errors. (#3072)

### Default Behavior Changes
* Implicit remote `$ref` fetching now emits `FutureWarning` - When a `$ref` resolves to an HTTP(S) URL and `--allow-remote-refs` is not explicitly passed, the tool still fetches the remote reference but emits a `FutureWarning`. This may cause failures in environments running with `-W error` (warnings as errors) or strict warning filters. Pass `--allow-remote-refs` explicitly to suppress the warning (#3051)
* Remote `$ref` fetching now emits a `FutureWarning` - When the parser encounters an HTTP/HTTPS `$ref` without `--allow-remote-refs` being explicitly set, a `FutureWarning` is emitted warning that remote fetching will be disabled by default in a future version. Pass `--allow-remote-refs` to silence the warning, or `--no-allow-remote-refs` to block remote fetching immediately. (#3070)

### Custom Template Update Required
* Type alias templates updated with `fields` guard - All six type alias templates (`TypeAliasAnnotation.jinja2`, `TypeAliasType.jinja2`, `TypeStatement.jinja2`, `UnionTypeAliasAnnotation.jinja2`, `UnionTypeAliasType.jinja2`, `UnionTypeStatement.jinja2`) now wrap the main body in `{% if fields %}...{% else %}` blocks that fall back to `{{ base_class }}` when no fields are present. Users with custom copies of these templates must add the same guard or handle the empty-fields case. (#3070)
* Type alias Jinja2 templates now require `fields` guard and `base_class` fallback - The built-in templates `TypeAliasAnnotation.jinja2`, `TypeAliasType.jinja2`, `TypeStatement.jinja2`, and their Union variants now wrap field access in `{%- if fields %}...{%- else %}` blocks with a `base_class` fallback for empty field lists. Users with custom templates derived from the old versions will need to add similar guards. (#3071)
* Type alias templates (`TypeAliasAnnotation.jinja2`, `TypeAliasType.jinja2`, `TypeStatement.jinja2`, and their Union variants) now handle an empty `fields` list with a fallback to `base_class` - If you have custom copies of these templates, they need to be updated to include the new `{%- if fields %}...{%- else %}...{%- endif %}` branching logic. Without this update, custom templates may error when `fields` is empty. (#3072)

## What's Changed
* Use validate_default=True for structured union defaults by @butvinm in https://github.com/koxudaxi/datamodel-code-generator/pull/3050
* Switch download badge from pepy.tech to pypistats.org by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3052
* Update projects list with notable AI/LLM ecosystem projects by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3053
* Add ryaml as optional YAML backend for faster parsing by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3055
* Update release draft model and preserve breaking changes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3057
* Add --allow-remote-refs to disable HTTP fetching of $ref by default by @butvinm in https://github.com/koxudaxi/datamodel-code-generator/pull/3051
* Fix type alias template crash with reuse_model on empty fields by @butvinm in https://github.com/koxudaxi/datamodel-code-generator/pull/3060
* Fix non-string OpenAPI discriminator literals by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3070
* Support JSON files for mapping options by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3071
* Refresh project usage list by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3072


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.55.0...0.56.0

