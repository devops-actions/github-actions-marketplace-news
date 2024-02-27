---
title: npm-versions
date: 2024-02-27 18:06:28 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/npm-versions
marketplace: https://github.com/marketplace/actions/npm-versions
version: v1.2
dependentsNumber: "1"
---


Version updated for **yakubique/npm-versions** to version **v1.2**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npm-versions) to find the latest changes.

## Release notes

# npm-versions

**Full Changelog**: https://github.com/yakubique/npm-versions/compare/v1...v1.2
Get list of package's versions from NPM registry

[![Test `npm-versions` action](https://github.com/yakubique/npm-versions/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/npm-versions/actions/workflows/test-myself.yaml)

## Usage

For live examples, please see [actions](https://github.com/yakubique/npm-versions/actions/workflows/test-myself.yaml)

```yaml
uses: yakubique/npm-versions@v1.2
with:
  package: emoji-hash
```

## Custom registry

```yaml
uses: yakubique/npm-versions@v1.2
with:
  package: emoji-hash
  registry: https://npm.my-company.org
```

## Sort versions

```yaml
uses: yakubique/npm-versions@v1.2
with:
  package: emoji-hash
  sortVersions: 'desc'
```

## Use output

```yaml
steps:
  - uses: yakubique/npm-versions@v1.2
    id: get_versions
    with:
      package: emoji-hash
  - run: |
      echo "${{ steps.get_versions.outputs.versions }}"
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT     |  TYPE  | REQUIRED |            DEFAULT             |                               DESCRIPTION                               |
|--------------|--------|----------|--------------------------------|-------------------------------------------------------------------------|
|    debug     | string |  false   |           `"false"`            |                                Be verbal                                |
|   details    | string |  false   |                                |                  Add publication date to return values                  |
|   package    | string |   true   |                                |                           Name of NPM package                           |
|   registry   | string |  false   | `"https://registry.npmjs.org"` |          Registry URL (default: "https://registry.npmjs.org")           |
| sortVersions | string |  false   |            `"ASC"`             | Sort versions by publication date ["ASC", <br>"DESC"] (default :"ASC")  |

<!-- AUTO-DOC-INPUT:END -->


### About `details`

_Optional_ Add publication date to return values (_default_: `'false'`)

If `false` (_default_):

```json
{
  "versions": [
    "1.0.0",
    "1.1.0",
    "1.2.0",
    "1.2.1",
    "1.3.0"
  ]
}
```

If `true`:

```json
{
  "versions": [
    {
      "version": "1.0.0",
      "published_at": "2016-04-15T02:26:00.141Z"
    },
    {
      "version": "1.1.0",
      "published_at": "2016-04-15T03:06:20.334Z"
    },
    {
      "version": "1.2.0",
      "published_at": "2016-04-19T05:39:17.391Z"
    },
    {
      "version": "1.2.1",
      "published_at": "2016-06-17T09:05:32.462Z"
    },
    {
      "version": "1.3.0",
      "published_at": "2017-06-08T04:21:08.821Z"
    }
  ]
}
```

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|  OUTPUT  |  TYPE  |      DESCRIPTION      |
|----------|--------|-----------------------|
| versions | string | JSON list of versions |

<!-- AUTO-DOC-OUTPUT:END -->


----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

