---
title: Generate random number
date: 2024-03-22 11:23:26 +00:00
tags:
  - yakubique
  - GitHub Actions
draft: false
repo: yakubique/random-number
marketplace: https://github.com/marketplace/actions/generate-random-number
version: v1.1
dependentsNumber: "?"
---


Version updated for **yakubique/random-number** to version **v1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/generate-random-number) to find the latest changes.

## Release notes

**Full Changelog**: https://github.com/yakubique/random-number/compare/v1...v1.1

# Random number

[![Coverage](./badges/coverage.svg)](./badges/coverage.svg)
[![Test `random-number` action](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml/badge.svg)](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml)

Github Action that returns a random number


[Usage workflow](https://github.com/yakubique/random-number/actions/workflows/test-myself.yaml)

## Usage
```yaml
- name: Random number
  uses: yakubique/random-number@v1.1 
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

