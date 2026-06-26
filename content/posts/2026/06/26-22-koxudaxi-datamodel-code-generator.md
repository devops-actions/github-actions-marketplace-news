---
title: datamodel-code-generator
date: 2026-06-26 22:33:16 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.66.0
dependentsNumber: "3,224"
actionType: Composite
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.66.0**.

- This action is used across all versions by **3,224** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## What's Changed

## Breaking Changes







* msgspec nullable annotated fields now place `None` outside `Annotated` - For `msgspec.Struct` models, nullable fields that carry `Meta`/`Annotated` constraints no longer wrap the type in `Optional` inside the `Annotated[...]`. The `None` member is now emitted as a separate union arm outside the `Annotated` wrapper, which changes the generated type hints and the resulting imports (`Optional` is dropped when no longer needed). This is required for the generated models to validate correctly at runtime under msgspec, but it changes output for existing users. (#3495)

```python
# Before
from typing import Annotated, Optional, Union
name: Union[Annotated[Optional[str], Meta(max_length=5)], UnsetType] = UNSET

# After
from typing import Annotated, Union
name: Union[Annotated[str, Meta(max_length=5)], None, UnsetType] = UNSET
```

## What's Changed
* Update CHANGELOG for 0.65.1 by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3492
* Add MCP Python SDK to Used by list by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3494
* Fix msgspec payload runtime compatibility by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3495
* Reorder Used by projects by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3496
* Fix docs workflow zensical invocation by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3497
* Bump the github-actions group with 19 updates by @dependabot[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3490
* Automate release benchmark docs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3498
* Create release benchmark data PRs by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/3500
* Update release benchmark data by @dcg-generated-docs[bot] in https://github.com/koxudaxi/datamodel-code-generator/pull/3501


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.65.1...0.66.0

