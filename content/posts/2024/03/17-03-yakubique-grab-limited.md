---
title: Grab with limits
date: 2024-03-17 03:23:22 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/grab-limited
marketplace: https://github.com/marketplace/actions/grab-with-limits
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/grab-limited** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/grab-with-limits) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/grab-limited/commits/v1

# Grab with limits

Grab URLs with timelimit

[![Test `grab-limited` action](https://github.com/yakubique/grab-limited/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/grab-limited/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/grab-limited/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: Grab with limits
  id: list
  uses: yakubique/grab-limited@v1
  with:
    name: test-*

```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|    INPUT    |  TYPE  | REQUIRED |  DEFAULT  |               DESCRIPTION               |
|-------------|--------|----------|-----------|-----------------------------------------|
| concurrency | string |  false   |   `"1"`   |       Amount of requests at time        |
|  endpoints  | string |   true   |           | Endpoints to call (JSON array or file)  |
|  from_file  | string |  false   | `"false"` |      Load endpoints from JSON file      |
|   headers   | string |  false   |  `"{}"`   |   JSON string with headers to include   |
|  interval   | string |   true   |           |      Interval between queries (ms)      |
|   method    | string |  false   |  `"GET"`  |            HTTP call method             |
|    retry    | string |  false   |   `"1"`   |            Amount of retries            |
| retry_pause | string |  false   |  `"300"`  |       Pause between retries (ms)        |
|   to_file   | string |  false   | `"false"` |        Save result to JSON file         |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |                   DESCRIPTION                   |
|--------|--------|-------------------------------------------------|
| result | string | Result list in JSON format OR <br>path to file  |

<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)

