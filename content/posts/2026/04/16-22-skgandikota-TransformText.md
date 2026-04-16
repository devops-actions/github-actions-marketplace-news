---
title: TransformText
date: 2026-04-16 22:12:09 +00:00
tags:
  - skgandikota
  - GitHub Actions
draft: false
repo: https://github.com/skgandikota/TransformText
marketplace: https://github.com/marketplace/actions/transformtext
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/skgandikota/TransformText** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/transformtext) to find the latest changes.

## Action Summary

The **TransformText GitHub Action** is a utility for performing various text transformations, such as regex-based find-and-replace, base64 encoding/decoding, URL encoding/decoding, case conversion, string manipulation (e.g., substring, split, reverse), line counting, and SHA-256 hashing. It automates common text-processing tasks in workflows, eliminating the need for custom scripts or external dependencies. This action is versatile and lightweight, offering a wide range of string operations directly within GitHub Actions.

## What's Changed

## What it does
14 text operations in one action — regex replace, base64, URL encoding, case conversion, hashing, and more. No shell scripting needed.

## Operations
`regex_replace` · `base64_encode` · `base64_decode` · `url_encode` · `url_decode` · `uppercase` · `lowercase` · `trim` · `substring` · `split` · `reverse` · `length` · `lines` · `hash_sha256`

## Quick Start
```yaml
- uses: skgandikota/TransformText@v1
  with:
    text: "admin:secret123"
    operation: "base64_encode"
# result: YWRtaW46c2VjcmV0MTIz
```

**Full docs →** [README](https://github.com/skgandikota/TransformText#readme)
