---
title: datamodel-code-generator
date: 2026-01-06 05:34:12 +00:00
tags:
  - koxudaxi
  - GitHub Actions
draft: false
repo: https://github.com/koxudaxi/datamodel-code-generator
marketplace: https://github.com/marketplace/actions/datamodel-code-generator
version: 0.52.2
dependentsNumber: "2,506"
---


Version updated for **https://github.com/koxudaxi/datamodel-code-generator** to version **0.52.2**.
- This action is used across all versions by **2,506** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datamodel-code-generator) to find the latest changes.

## Action Summary

The `datamodel-code-generator` is a tool designed to automate the generation of Python data models from various schema definitions, including OpenAPI, JSON Schema, GraphQL, and raw data formats like JSON, YAML, and CSV. It simplifies creating type-safe, validated, and IDE-compatible Python models by handling complex schema elements such as references, enums, and nested types. The tool supports multiple output formats, including Pydantic, dataclasses, and TypedDict, making it ideal for streamlining workflows involving schema-driven development.

## Release notes

## What's Changed
* Add support for multiple base classes in base_class_map and customBasePath by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2916
* Add __hash__ to Pydantic v2 models used in sets by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2918
* fix: Handle class name prefix correctly in GraphQL parser by @siminn-arnorgj in https://github.com/koxudaxi/datamodel-code-generator/pull/2926
* Add TypedDict closed and extra_items support (PEP 728) by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2922
* Fix release-draft workflow to use pull_request_target and increase max_turns to 50 by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2930
* Migrate from pyright to ty type checker by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2928
* Fix URL port handling in get_url_path_parts by @koxudaxi in https://github.com/koxudaxi/datamodel-code-generator/pull/2933


**Full Changelog**: https://github.com/koxudaxi/datamodel-code-generator/compare/0.52.1...0.52.2

