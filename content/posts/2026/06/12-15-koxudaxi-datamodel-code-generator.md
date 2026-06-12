---
title: datamodel-code-generator
date: 2026-06-12 15:26:57 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.63.0
dependentsNumber: "3,157"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.63.0**.

- This action is used across all versions by **3,157** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## What's Changed

## Breaking Changes

### Default Behavior Changes
* `--check` output now uses POSIX-style paths - File paths in `--check` diagnostic output are now normalized with `Path.as_posix()` instead of `str(path)`. On POSIX systems the output is unchanged, but on **Windows** the diff headers and `MISSING:`/`EXTRA:` lines now use forward slashes (`models/foo.py`) instead of backslashes (`models\foo.py`). Tooling or snapshot tests that parse `--check` output on Windows may need updating. (#3287)

## Security

* Fixed SSRF protection bypass via DNS rebinding during HTTP(S) schema fetching. (GHSA-vx7x-vcc2-c44g)
* Fixed leakage of scoped request headers such as `Authorization`, `Cookie`, and `Proxy-Authorization` when a remote schema fetch follows a cross-origin redirect. (GHSA-r5vv-ff45-prp2)
* Hardened HTTP(S) schema fetching against embedded IPv4 address forms that could bypass private-network checks. (#3319)

## What's Changed
* Update CHANGELOG for 0.62.0 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3313
* Add generate prompt JSON output by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3285
* Strengthen test oracles by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3314
* Cover pragma targets by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3315
* Consolidate test infrastructure helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3316
* Remove dead branches and import cleanups by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3318
* Block embedded IPv4 SSRF bypasses by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3319
* Add generation JSON output format by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3287
* Remove no-op overrides by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3320
* Initialize parser lazy state explicitly by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3321
* Break parser-model import cycles by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3322
* Document LLM option workflow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3284
* Improve generate prompt guidance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3286
* Add experimental agent skill by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3310
* Consolidate JSON Schema data formats by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3323
* Sync generated docs by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3326
* Deduplicate model-layer helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3327
* Deduplicate JSON Schema parser helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3328
* Deduplicate parser base helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3329
* Deduplicate parser converter helpers by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3330
* Use resolved converted source cache keys by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3332
* Add JSON Schema suite conformance by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3333
* Clarify payload adapter error by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3334
* Add OpenAI sponsor logo by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3338
* Add payload rejection oracle by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3335
* Expand payload backend validation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3337
* Add payload round trip validation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3339
* Add payload runtime matrix by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3340
* Expand payload backend matrix by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3341
* Fix Pydantic 2.0 fallbacks by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3343
* Refactor generate flow by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3344


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.62.0...0.63.0

