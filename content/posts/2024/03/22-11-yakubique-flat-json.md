---
title: Make JSON array flat
date: 2024-03-22 11:23:34 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/flat-json
marketplace: https://github.com/marketplace/actions/make-json-array-flat
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/flat-json** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/make-json-array-flat) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/flat-json/compare/v1...v1.1

# Flat JSON

[![Coverage](./badges/coverage.svg)](./badges/coverage.svg)
[![Test `flat-json` action](https://github.com/yakubique/flat-json/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/flat-json/actions/workflows/test-myself.yaml)

Concat all arrays inside array and return


[Usage workflow](https://github.com/yakubique/flat-json/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: Flat JSON
  id: list
  uses: yakubique/flat-json@v1.1
  with:
    input: '[[1], [2,3], [4,5], [6]]'

# result: "[1,2,3,4,5,6]"
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED |  DEFAULT  |        DESCRIPTION        |
|-----------|--------|----------|-----------|---------------------------|
|   input   | string |   true   |           | Input JSON string or file |
| from_file | string |  false   | `"false"` |    Load JSON from file    |
|  to_file  | string |  false   | `"false"` |    Save result to file    |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |                        DESCRIPTION                        |
|--------|--------|-----------------------------------------------------------|
| result | string | Result list in JSON format (or file if `to_file = true`)  |

<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

