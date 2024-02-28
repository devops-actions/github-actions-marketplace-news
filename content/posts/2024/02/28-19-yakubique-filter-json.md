---
title: Filter JSON
date: 2024-02-28 19:23:16 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/filter-json
marketplace: https://github.com/marketplace/actions/filter-json
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/filter-json** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/filter-json) to find the latest changes.

## Release notes

# filter-json

GitHub Action filters JSON values based on predefined criteria, extracting and retaining desired values.
**Full Changelog**: https://github.com/yakubique/filter-json/compare/v1...v1.1

## Usage

For live examples, please see [actions](https://github.com/yakubique/filter-json/actions/workflows/test-myself.yaml)

```yaml
uses: yakubique/filter-json@v1.1
with:
  input: '["1.0.0","1.1.0","1.2.0","1.2.1","1.3.0"]'
  values: "1.0.0"

# result: '["1.1.0","1.2.0","1.2.1","1.3.0"]'
```

## With multiple values

```yaml
uses: yakubique/filter-json@v1.1
with:
  input: '["1.0.0","1.1.0","1.2.0","1.2.1","1.3.0"]'
  values: '1.0.0,1.1.0'

# result: "["1.2.0","1.2.1","1.3.0"]"
```

## With nested json

```yaml
uses: yakubique/filter-json@v1.1
with:
  input: '[{"name":"v0.3.26","tag_name":"v0.3.26","prerelease":false,"published_at":"2023-08-07T09:43:28Z"},{"name":"v0.3.22","tag_name":"v0.3.22","prerelease":false,"published_at":"2023-11-12T10:58:00Z"},{"name":"v0.3.23","tag_name":"v0.3.23","prerelease":false,"published_at":"2023-11-12T10:59:27Z"},{"name":"v0.3.25","tag_name":"v0.3.25","prerelease":false,"published_at":"2023-11-12T11:01:20Z"},{"name":"v0.3.31","tag_name":"v0.3.31","prerelease":false,"published_at":"2023-11-12T11:17:17Z"},{"name":"v0.3.34","tag_name":"v0.3.34","prerelease":false,"published_at":"2023-11-12T11:21:59Z"}]'
  type: "nested-json"
  key: "name"
  values: 'v0.3.22,v0.3.34'

# result: "[{"name":"The name is:v0.3.26.","tag_name":"v0.3.26","prerelease":false,"published_at":"2023-08-07T09:43:28Z"},{"name":"The name is:v0.3.23.","tag_name":"v0.3.23","prerelease":false,"published_at":"2023-11-12T10:59:27Z"},{"name":"The name is:v0.3.25.","tag_name":"v0.3.25","prerelease":false,"published_at":"2023-11-12T11:01:20Z"},{"name":"The name is:v0.3.31.","tag_name":"v0.3.31","prerelease":false,"published_at":"2023-11-12T11:17:17Z"}]"
```

## Use output

```yaml
steps:
  - name: Checkout
    uses: actions/checkout@v4
  - name: Filter JSON
    id: filter_single_value
    uses: yakubique/filter-json@v1.1
    with:
      input: '["1.0.0","1.1.0","1.2.0","1.2.1","1.3.0"]'
      values: "1.0.0"
  - name: Echo output
    run: |
      echo "${{ steps.filter_single_value.outputs.result }}"
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED |    DEFAULT    |                                DESCRIPTION                                |
|-----------|--------|----------|---------------|---------------------------------------------------------------------------|
|   input   | string |   true   |               |                              JSON to filter                               |
|   type    | string |  false   | `"flat-json"` | Type of input data `["flat-json", "nested-json"]` (default: "flat-json")  |
|    key    | string |  false   |               |          If `type="nested-json"` - which key should <br>be used           |
|  values   | string |   true   |               |             Values to filter from JSON, comma <br>separated               |
| from_file | string |  false   |   `"false"`   |                            Get JSON from file                             |
|  to_file  | string |  false   |               |                            Output to JSON file                            |

<!-- AUTO-DOC-INPUT:END -->


## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |                             DESCRIPTION                             |
|--------|--------|---------------------------------------------------------------------|
| result | string | Input JSON minus `values` (JSON or filepath, depends on `to_file`)  |

<!-- AUTO-DOC-OUTPUT:END -->


----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

