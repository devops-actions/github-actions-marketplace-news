---
title: JSON Path Extract
date: 2026-04-15 14:22:37 +00:00
tags:
  - skgandikota
  - GitHub Actions
draft: false
repo: https://github.com/skgandikota/ParseJSON
marketplace: https://github.com/marketplace/actions/json-path-extract
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skgandikota/ParseJSON** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/json-path-extract) to find the latest changes.

## Action Summary

The **ParseJSON GitHub Action** extracts specific values from a JSON string using dot notation paths, making it ideal for processing JSON outputs from other actions. It automates the parsing of JSON data and provides flexible capabilities such as retrieving single or multiple values, determining JSON structure types (e.g., array or object), and dynamically setting outputs based on the parsed data. This action simplifies handling complex JSON data, enabling seamless integration with workflows.

## What's Changed

## What it does
Parse any JSON string and extract values using simple dot notation — no `jq`, no shell gymnastics. Chains perfectly after FetchUrl.

## Highlights
- Single value extraction: `user.name`, `items[0].id`, `data.tags[2]`
- Multi-value extraction with dynamic outputs per key
- Metadata: `keys`, `length`, `is_array`, `is_object`
- Pairs naturally with `skgandikota/FetchUrl@v2`

## Quick Start
```yaml
- uses: skgandikota/ParseJSON@v1
  with:
    json: "${{ steps.api.outputs.body }}"
    path: "user.email"
```

**Full docs →** [README](https://github.com/skgandikota/ParseJSON#readme)
