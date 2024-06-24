---
title: emilpriver/geni
date: 2024-06-24 00:50:54 +00:00
tags:
  - emilpriver
  - GitHub Actions
draft: false
repo: emilpriver/geni
marketplace: https://github.com/marketplace/actions/emilpriver-geni
version: v1.0.8
dependentsNumber: "0"
---


Version updated for **emilpriver/geni** to version **v1.0.8**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/emilpriver-geni) to find the latest changes.

## Release notes

## What's Changed
* Removed pg_dump usage in postgres in favor of normal SQL queries by @emilpriver in https://github.com/emilpriver/geni/pull/125

## Breaking changes
This update removes the entire usage of pg_dump for dumping postgres schema. This also means that the schema.sql will look different but should have the same content.

**Please report if you  miss some database schema information**

**Full Changelog**: https://github.com/emilpriver/geni/compare/v1.0.7...v1.0.8
