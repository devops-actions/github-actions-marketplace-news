---
title: datamodel-code-generator
date: 2026-07-25 00:29:58 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.71.0
dependentsNumber: "3,362"
actionType: Composite
actionSummary: |
  The `datamodel-code-generator` GitHub Action generates Python data models from various schema definitions including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types like Pydantic, dataclass, and TypedDict into different output types such as Pydantic v2, Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with features like $ref, allOf, oneOf, anyOf, enums, and nested types to produce type-safe, validated code ready for IDEs and type checkers.
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.71.0**.

- This action is used across all versions by **3,362** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` GitHub Action generates Python data models from various schema definitions including OpenAPI 3, AsyncAPI, JSON Schema, Apache Avro, XML Schema, Protocol Buffers/gRPC, GraphQL, and MCP tool schemas. It can also convert existing Python types like Pydantic, dataclass, and TypedDict into different output types such as Pydantic v2, Pydantic v2 dataclass, dataclasses, TypedDict, or msgspec. The action handles complex schemas with features like $ref, allOf, oneOf, anyOf, enums, and nested types to produce type-safe, validated code ready for IDEs and type checkers.

## What's Changed

## Breaking Changes



### Default Behavior Changes
* New warning emitted by default for unresolved local `$ref` pointers - By default, an unresolved local `$ref` JSON pointer now emits a new `DanglingRefWarning` and generates a fallback `Any` model. Previously such refs resolved to a silent fallback, and some cases (e.g., out-of-range JSON pointer array indices) raised a hard error. Schemas that previously generated cleanly can now produce warnings, which breaks workflows that treat warnings as errors (e.g., `python -W error`). Use `--strict-refs` to fail on unresolved pointers instead, or `--disable-warnings` to silence them (#3639)

### Error Handling Changes
* `$ref` to a non-dict file now raises `InvalidFileFormatError` instead of `TypeError` - Resolving a `$ref` to a JSON/YAML file whose top-level value is not a mapping (e.g., a list) now raises `datamodel_code_generator.InvalidFileFormatError` (a subclass of `Error`/`Exception`) rather than the built-in `TypeError`. Programmatic callers that catch `TypeError` around `generate()` must catch `InvalidFileFormatError` (or `Error`) instead (#3639)
* Malformed-input diagnostics reworded - Malformed inputs that previously surfaced an uncaught traceback now emit a concise message such as `Invalid file format for <type> at <source>: ...`, and the missing-file message changed from `File not found` to `File not found: <path>`. Tooling that matches on the exact previous strings needs updating (#3639)
* Generation now aborts when output paths would overwrite inputs or collide - A new path-conflict validation runs before generation in both the `generate()` Python API and the CLI. Invocations that previously succeeded now raise an `Error` (CLI exits with an error code) in these cases: the output path resolves to an existing input file, the `--emit-model-metadata` path resolves to an existing input file, or the output and model-metadata paths resolve to the same file. Symlinks and hardlinks are resolved before the comparison. Workflows that intentionally wrote output over an input path, or that pointed the model-metadata artifact at the same path as the output, will now fail with one of:
```text
Output path must not overwrite an input path: <path>
Model metadata path must not overwrite an input path: <path>
Output and model metadata paths must be different: <path>
```
(#3647)

## What's Changed
* Update CHANGELOG for 0.70.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3619
* Decouple RootModel dependency ordering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3620
* Improve README and docs homepage links by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3624
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3625
* Move discriminator policies to output models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3621
* Invalidate generation facts for every list mutation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3622
* Document package manager installation options by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3629
* Move dict-key dependency policy to output models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3626
* Decouple parser model behavior helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3632
* Share model constraints across output backends by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3630
* Move Pydantic type rendering to backend by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3627
* Move dataclass ordering policies to output models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3628
* Move template reference metadata to output models by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3631
* Declare output model construction capabilities by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3623
* Fix payload runtime validation exclusions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3635
* Cover output backends across input formats by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3636
* Track large schema memory by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3637
* Reuse remote schema connections by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3638
* Improve malformed input diagnostics by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3639
* Bump setuptools from 82.0.1 to 83.0.0 by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3633
* Update project usage examples by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3641
* Fix vLLM usage link by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3642
* Refresh custom template paths by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3640
* List project maintainers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3643
* Preserve Unicode line separators by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3644
* Fix TypedDict unique item sets by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3645
* Defer msgspec forward references by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3646
* Validate generation path conflicts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3647
* Enforce dynamic model cache size by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3648
* Filter imported dynamic model classes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3649
* Defer nested model default factories by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3650
* Isolate generation state by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3652


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.70.0...0.71.0

