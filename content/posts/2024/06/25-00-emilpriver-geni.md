---
title: emilpriver/geni
date: 2024-06-25 00:50:12 +00:00
tags:
  - emilpriver
  - GitHub Actions
draft: false
repo: emilpriver/geni
marketplace: https://github.com/marketplace/actions/emilpriver-geni
version: v1.0.9
dependentsNumber: "0"
---


Version updated for **emilpriver/geni** to version **v1.0.9**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/emilpriver-geni) to find the latest changes.

## Release notes

## What's Changed
* Update README.md by @emilpriver in https://github.com/emilpriver/geni/pull/126
* Mysql maria dump by @emilpriver in https://github.com/emilpriver/geni/pull/127
* Removed docker-slim image as we don't need a image without mariadbdump anymore. 

## Breaking changes
* This update removes the entire usage of mariadbdump for dumping mysql and mariadb schema. This also means that the schema.sql will look different but should have the same content.
**Please report if you  miss some database schema information**

* **DEPRECATING docker slim image.**


**Full Changelog**: https://github.com/emilpriver/geni/compare/v1.0.8...v1.0.9
