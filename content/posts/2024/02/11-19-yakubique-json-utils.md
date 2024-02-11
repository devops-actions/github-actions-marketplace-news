---
title: JSON Utils
date: 2024-02-11 19:20:51 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/json-utils
marketplace: https://github.com/marketplace/actions/json-utils
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/json-utils** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/json-utils) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/json-utils/compare/v1...v1.1



## Pick

Creates an object composed of the picked object properties.

```yaml
- name: Pick "name"
  uses: yakubique/json-utils@v1.1
  with:
    input: '[{"name":"v0.3.26","tag_name":"v0.3.26","prerelease":false,"published_at":"2023-08-07T09:43:28Z"},{"name":"v0.3.22","tag_name":"v0.3.22","prerelease":false,"published_at":"2023-11-12T10:58:00Z"},{"name":"v0.3.23","tag_name":"v0.3.23","prerelease":false,"published_at":"2023-11-12T10:59:27Z"},{"name":"v0.3.25","tag_name":"v0.3.25","prerelease":false,"published_at":"2023-11-12T11:01:20Z"},{"name":"v0.3.31","tag_name":"v0.3.31","prerelease":false,"published_at":"2023-11-12T11:17:17Z"},{"name":"v0.3.34","tag_name":"v0.3.34","prerelease":false,"published_at":"2023-11-12T11:21:59Z"}]'
    action: "pick"
    key: "name"
```

Works with multiple comma-separated keys

```yaml
- name: Pick "name"
  uses: yakubique/json-utils@v1.1
  with:
    input: '[{"name":"v0.3.26","tag_name":"v0.3.26","prerelease":false,"published_at":"2023-08-07T09:43:28Z"},{"name":"v0.3.22","tag_name":"v0.3.22","prerelease":false,"published_at":"2023-11-12T10:58:00Z"},{"name":"v0.3.23","tag_name":"v0.3.23","prerelease":false,"published_at":"2023-11-12T10:59:27Z"},{"name":"v0.3.25","tag_name":"v0.3.25","prerelease":false,"published_at":"2023-11-12T11:01:20Z"},{"name":"v0.3.31","tag_name":"v0.3.31","prerelease":false,"published_at":"2023-11-12T11:17:17Z"},{"name":"v0.3.34","tag_name":"v0.3.34","prerelease":false,"published_at":"2023-11-12T11:21:59Z"}]'
    action: "pick"
    key: "name,prerelease"

  # returns: [{name:v0.3.26,prerelease:false},{name:v0.3.22,prerelease:false},{name:v0.3.23,prerelease:false},{name:v0.3.25,prerelease:false},{name:v0.3.31,prerelease:false},{name:v0.3.34,prerelease:false}]
```

## Get

Return only value of picket object property.

```yaml
  - name: Get "name"
    id: get_name
    uses: yakubique/json-utils@v1.1
    with:
      input: '[{"name":"v0.3.26","tag_name":"v0.3.26","prerelease":false,"published_at":"2023-08-07T09:43:28Z"},{"name":"v0.3.22","tag_name":"v0.3.22","prerelease":false,"published_at":"2023-11-12T10:58:00Z"},{"name":"v0.3.23","tag_name":"v0.3.23","prerelease":false,"published_at":"2023-11-12T10:59:27Z"},{"name":"v0.3.25","tag_name":"v0.3.25","prerelease":false,"published_at":"2023-11-12T11:01:20Z"},{"name":"v0.3.31","tag_name":"v0.3.31","prerelease":false,"published_at":"2023-11-12T11:17:17Z"},{"name":"v0.3.34","tag_name":"v0.3.34","prerelease":false,"published_at":"2023-11-12T11:21:59Z"}]'
      action: "get"
      key: "name"

  # returns: [v0.3.26,v0.3.22,v0.3.23,v0.3.25,v0.3.31,v0.3.34]
```

