---
title: JSONify array
date: 2024-03-16 11:17:31 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/jsonify-array
marketplace: https://github.com/marketplace/actions/jsonify-array
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/jsonify-array** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jsonify-array) to find the latest changes.

## Release notes

# JSONify array

**Full Changelog**: https://github.com/yakubique/jsonify-array/compare/v1...v1.1
Replace field in JSON with its JSON.stringify() version

[![Test `jsonify-array` action](https://github.com/yakubique/jsonify-array/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/jsonify-array/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/jsonify-array/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: JSONify array
  uses: yakubique/jsonify-array@v1
  with:
    input: |
      [ { "obj": {"id": 1 } } ]
    type: "nested-json"
    key: "obj"

# [ { "obj": "{\"id\":1}" } ]
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT   |  TYPE  | REQUIRED |    DEFAULT    |                                DESCRIPTION                                |
|-----------|--------|----------|---------------|---------------------------------------------------------------------------|
|   input   | string |   true   |               |                              JSON to modify                               |
|   type    | string |  false   | `"flat-json"` | Type of input data `["flat-json", "nested-json"]` (default: "flat-json")  |
|    key    | string |  false   |               |          If `type="nested-json"` - which key should <br>be used           |
| from_file | string |  false   |   `"false"`   |                            Load json from file                            |
|  to_file  | string |  false   |   `"false"`   |                            Save result to file                            |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |   DESCRIPTION    |
|--------|--------|------------------|
| result | string | Filepath or JSON |

<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

