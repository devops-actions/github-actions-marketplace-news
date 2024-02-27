---
title: list-github-releases
date: 2024-02-27 18:06:36 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/github-releases
marketplace: https://github.com/marketplace/actions/list-github-releases
version: v1.2
dependentsNumber: "?"
---


Version updated for **yakubique/github-releases** to version **v1.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/list-github-releases) to find the latest changes.

## Release notes

# github-releases

**Full Changelog**: https://github.com/yakubique/github-releases/compare/v1...v1.2
Get list of GitHub releases for repository

[![Test `github-releases` action](https://github.com/yakubique/github-releases/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/github-releases/actions/workflows/test-myself.yaml)

## Usage

For live examples, please see [actions](https://github.com/yakubique/github-releases/actions/workflows/test-myself.yaml)

```yaml
uses: yakubique/github-releases@v1.2
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
with:
  repository: yakubique/orogene
```

## With pre-releases

```yaml
uses: yakubique/github-releases@v1.2
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
with:
  repository: yakubique/orogene
  pre: 'true'
```

## Sort versions

```yaml
uses: yakubique/github-releases@v1.2
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
with:
  repository: yakubique/orogene
  sort: 'desc'
```

## Use output

```yaml
steps:
  - uses: yakubique/github-releases@v1.2
    id: get_releases
    env:
      GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    with:
      repository: yakubique/orogene
  - run: |
      echo "${{ steps.get_releases.outputs.releases }}"
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|   INPUT    |  TYPE  | REQUIRED | DEFAULT |                               DESCRIPTION                               |
|------------|--------|----------|---------|-------------------------------------------------------------------------|
|   debug    | string |  false   |         |                                Be verbal                                |
|  details   | string |  false   |         | Add publication date, name and prerelease <br>status to return values   |
|    pre     | string |  false   |         |                        Include the pre-releases                         |
| repository | string |   true   |         | Repository to get releases from (example: "yakubique/github-releases")  |
|    sort    | string |  false   | `"ASC"` | Sort releases by publication date ["ASC", <br>"DESC"] (default :"ASC")  |

<!-- AUTO-DOC-INPUT:END -->


### About `details`

_Optional_ Add publication date, name and prerelease status to return values (_default_: `'false'`)

If `false` (_default_):

```json
{
  "releases": [
    "v0.3.26",
    "v0.3.22",
    "v0.3.23",
    "v0.3.25",
    "v0.3.31",
    "v0.3.34"
  ]
}
```

If `true`:

```json
{
  "releases": [
    {
      "name": "v0.3.26",
      "tag_name": "v0.3.26",
      "prerelease": false,
      "published_at": "2023-08-07T09:43:28Z"
    },
    {
      "name": "v0.3.22",
      "tag_name": "v0.3.22",
      "prerelease": false,
      "published_at": "2023-11-12T10:58:00Z"
    },
    {
      "name": "v0.3.23",
      "tag_name": "v0.3.23",
      "prerelease": false,
      "published_at": "2023-11-12T10:59:27Z"
    },
    {
      "name": "v0.3.25",
      "tag_name": "v0.3.25",
      "prerelease": false,
      "published_at": "2023-11-12T11:01:20Z"
    },
    {
      "name": "v0.3.31",
      "tag_name": "v0.3.31",
      "prerelease": false,
      "published_at": "2023-11-12T11:17:17Z"
    },
    {
      "name": "v0.3.34",
      "tag_name": "v0.3.34",
      "prerelease": false,
      "published_at": "2023-11-12T11:21:59Z"
    }
  ]
}
```

## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

|  OUTPUT  |  TYPE  |      DESCRIPTION      |
|----------|--------|-----------------------|
| releases | string | JSON list of releases |

<!-- AUTO-DOC-OUTPUT:END -->


----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

