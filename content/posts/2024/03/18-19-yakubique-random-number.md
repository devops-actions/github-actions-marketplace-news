---
title: Generate random number
date: 2024-03-18 19:24:19 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/random-number
marketplace: https://github.com/marketplace/actions/generate-random-number
version: v1
dependentsNumber: "?"
---


Version updated for **yakubique/random-number** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-random-number) to find the latest changes.

## Release notes

# Random number

Github Action that returns a random number

[![Test `random-number` action](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml)

[Usage workflow](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: Random number
  uses: yakubique/random-number@v1
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

| INPUT |  TYPE  | REQUIRED | DEFAULT |                      DESCRIPTION                       |
|-------|--------|----------|---------|--------------------------------------------------------|
|  max  | string |  false   | `"10"`  | The max value of the random <br>number (max included)  |
|  min  | string |  false   |  `"1"`  | The min value of the random <br>number (min included)  |

<!-- AUTO-DOC-INPUT:END -->




## Outputs

<!-- AUTO-DOC-OUTPUT:START - Do not remove or modify this section -->

| OUTPUT |  TYPE  |   DESCRIPTION    |
|--------|--------|------------------|
| number | string | Generated number |

<!-- AUTO-DOC-OUTPUT:END -->



----

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1UZ9P7)


**Full Changelog**: https://github.com/yakubique/random-number/commits/v1
