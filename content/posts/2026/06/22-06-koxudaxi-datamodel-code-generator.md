---
title: datamodel-code-generator
date: 2026-06-22 06:50:59 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.65.0
dependentsNumber: "3,204"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.65.0**.

- This action is used across all versions by **3,204** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## What's Changed

## Breaking Changes






### Error Handling Changes
* YAML `!!set` tags now rejected - `load_yaml` now validates all YAML input and raises a `yaml.YAMLError` when it encounters the unsupported `tag:yaml.org,2002:set` (`!!set`) tag. Previously such input was loaded silently (constructed as a Python set). YAML schemas or sample data that relied on `!!set` tags will now fail to load with an "Unsupported YAML tag" error. This validation runs unconditionally on every YAML load and is not gated behind any opt-in flag (#3447)

### Code Generation Changes
* msgspec.Struct boolean const fields now generate `bool` instead of `Literal[True]`/`Literal[False]` - When generating `msgspec.Struct` models (`--output-model-type msgspec.Struct`), a JSON Schema `const` with a boolean value now produces a plain `bool` type instead of a boolean `Literal`, because msgspec does not support boolean `Literal` tag values at runtime. Output for other model types (e.g. Pydantic) is unchanged. Existing msgspec users with boolean-const fields will see different generated output. (#3462)
* msgspec.Struct combined object unions now render as tagged Struct unions - For `msgspec.Struct` output, combined (`oneOf`/`anyOf`) object schemas that share a required literal discriminator field with int/str values now have a discriminator inferred and are emitted as tagged `Struct` unions (`tag_field=...`, `tag=...`). This changes the generated class definitions for existing msgspec users whose schemas match this shape. (#3462)

## What's Changed
* Update CHANGELOG for 0.64.1 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3439
* Fix release draft breaking change notes by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3440
* Update CHANGELOG for 0.64.1 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3441
* Add inferred union variant names by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3442
* Add model metadata output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3443
* Add model name mapping by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3444
* Handle nested schema namespaces by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3445
* Resolve external discriminator mappings by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3446
* Unify JSON config loading by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3451
* Add RootModel sequence methods option by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3447
* Add dynamic model module names and filtering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3448
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3452
* Skip YAML tag scan without unsupported markers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3454
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3455
* Skip full schema dumps for type constraints by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3456
* Skip typeguard when importing inflect by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3458
* Reuse loaded sources for local refs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3459
* Reduce startup imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3460
* Optimize field import collection by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3461
* Fix msgspec tagged union validation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3462
* Document fast formatter choices by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3463
* Add architecture documentation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3464
* Reuse validated JSON Schema objects by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3466
* Reuse validated schema definitions by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3467
* Revert schema object reuse by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3469


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.64.1...0.65.0

