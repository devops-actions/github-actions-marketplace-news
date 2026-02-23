---
title: jd - JSON diff and patch
date: 2026-02-23 21:45:52 +00:00
tags:
  - josephburnett
  - GitHub Actions
draft: false
repo: https://github.com/josephburnett/jd
marketplace: https://github.com/marketplace/actions/jd-json-diff-and-patch
version: v2.5.0
dependentsNumber: "403"
actionType: Docker
---


Version updated for **https://github.com/josephburnett/jd** to version **v2.5.0**.
- This action is used across all versions by **403** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jd-json-diff-and-patch) to find the latest changes.

## Action Summary

The `jd` GitHub Action is a utility for comparing (diffing) and modifying (patching) JSON and YAML files. It provides a human-readable diff format, supports JSON Merge Patch (RFC 7386) and JSON Patch (RFC 6902) standards, and allows converting between these formats. This tool automates the process of identifying changes, creating minimal structural patches, and applying them, making it ideal for managing configuration differences and version-controlled data.

## Release notes

## What's Changed
* v2: use slices instead of golang.org/x/exp/slices by @alexandear in https://github.com/josephburnett/jd/pull/117
* Replace deprecated ioutil with os and io by @alexandear in https://github.com/josephburnett/jd/pull/115
* Fix Myers diff backtracking off-by-one (#112) by @vnykmshr in https://github.com/josephburnett/jd/pull/121
* docs(README): add mise alternate installation documentation by @jylenhof in https://github.com/josephburnett/jd/pull/111
* Build artifacts for riscv64 by @ffgan in https://github.com/josephburnett/jd/pull/106
* chore(deps): upgrade github.com/go-openapi/jsonpointer to v0.22.4 by @alexandear in https://github.com/josephburnett/jd/pull/118

## New Contributors
* @alexandear made their first contribution in https://github.com/josephburnett/jd/pull/117
* @vnykmshr made their first contribution in https://github.com/josephburnett/jd/pull/121
* @jylenhof made their first contribution in https://github.com/josephburnett/jd/pull/111
* @ffgan made their first contribution in https://github.com/josephburnett/jd/pull/106

**Full Changelog**: https://github.com/josephburnett/jd/compare/v2.4.0...v2.5.0
