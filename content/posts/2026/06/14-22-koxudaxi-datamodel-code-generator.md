---
title: datamodel-code-generator
date: 2026-06-14 22:22:18 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.64.0
dependentsNumber: "3,165"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.64.0**.

- This action is used across all versions by **3,165** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## What's Changed

## Breaking Changes



### Code Generation Changes
* Self-referencing fields are now quoted with `--disable-future-imports` - When `--disable-future-imports` is set (no `from __future__ import annotations` and no native PEP 649 deferred evaluation on Python < 3.14), self-referencing and forward-referencing field annotations in regular `BaseModel` classes are now emitted as quoted forward references instead of bare names. Previously such annotations were left unquoted, producing invalid code that raised `NameError` (Ruff F821) at class-evaluation time. Output for the common case (with `from __future__ import annotations` or Python 3.14 native deferred annotations) is unchanged. Users who snapshot/golden-file generated output for the `--disable-future-imports` configuration with self-referencing models will see the annotation change from unquoted to quoted, e.g. `children: Optional[List[Node]]` → `children: Optional[List["Node"]]`. (#3387)

## What's Changed
* Update CHANGELOG for 0.63.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3345
* Deduplicate module content builder by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3346
* Deduplicate import reference helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3348
* Refactor jsonschema root model registration by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3352
* Refactor XML Schema literal helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3349
* Move builtin formatter helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3351
* Deduplicate Pydantic v2 config helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3350
* Deduplicate DataType type hint rendering by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3354
* Fix `constr()` for string fields carrying minItems/maxItems by @DarkaMaul in https://github.com/koxudaxi/datamodel-code-generator/pull/3353
* Cover non-finite import idempotence by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3367
* Deduplicate input text detection by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3357
* Remove stale protobuf coverage pragma by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3358
* Cover explicit null OpenAPI media schemas by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3360
* Simplify Python version feature checks by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3361
* Speed up CI checks by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3378
* Add maintainer link to docs footer and README by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3379
* Use builtin formatter in CI by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3380
* Split coverage by OS by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3381
* Simplify import removal cleanup by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3362
* Pin deprecation warning stacklevel by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3363
* Pin public module exports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3364
* Cover to_hashable branch cases by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3366
* Cover stable toposort behavior by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3369
* Extract registry render helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3371
* Fix minItems for arrays of URI strings by @sjh9714 in https://github.com/koxudaxi/datamodel-code-generator/pull/3377
* Deduplicate config value validators by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3372
* Cover CLI option metadata helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3374
* Cover Pydantic v2 version fallback by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3368
* Fix nullable JSON Schema const enums by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3355
* Pin patchable generation seams by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3365
* Cover utility helper behavior by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3375
* Cover DefaultPutDict behavior by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3376
* Cover validator config normalization by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3373
* Avoid expensive runtime type checks by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3382
* Avoid eager builtin formatter import by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3383
* Avoid eager TOML parser import by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3384
* Stabilize msgspec payload tests by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3385
* Avoid eager input parser imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3386
* Avoid eager parser model imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3388
* Avoid eager AsyncAPI converter imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3389
* Dispose parser on parse errors by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3390
* Fix YAML warning filter handling by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3392
* Cache local parser sources by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3393
* Guard mutable generation inputs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3394
* Compact dynamic cache keys by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3395
* Guard OpenAPI path items by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3397
* Isolate converted schemas by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3396
* Add performance measurement coverage by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3398
* Restore input model modules by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3399
* Reduce Pydantic v2 render work by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3400
* Defer parser config imports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3402
* Slot generation facts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3403
* Fast path JSON schemas by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3404
* Lazy root format exports by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3405
* Defer generation refresh by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3406
* Cache parsed sources by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3407
* Shard Python tests by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3408
* Cache payload validation strategies by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3409
* fix: quote self-referencing fields when --disable-future-imports is set by @kaizeenn in https://github.com/koxudaxi/datamodel-code-generator/pull/3387
* Skip discriminator import scan by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3411
* Fast path schema output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3410

## New Contributors
* @DarkaMaul made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3353
* @sjh9714 made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3377
* @kaizeenn made their first contribution in https://github.com/koxudaxi/datamodel-code-generator/pull/3387

**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.63.0...0.64.0

