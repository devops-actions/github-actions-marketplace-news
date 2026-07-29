---
title: Sigbound
date: 2026-07-29 06:36:49 +00:00
tags:
  - surya-koritala
  - GitHub Actions
draft: false
repo: https://github.com/surya-koritala/sigbound
marketplace: https://github.com/marketplace/actions/sigbound
version: v2.2.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Sigbound automates parallel AI coding agent execution on a repository, merging results without manual conflict resolution. It handles merge conflicts automatically using a model, gates merges through builds and tests, ensures verified merges, allows file lane declarations, tracks run policies, supports run parking for sensitive changes, logs runs, and provides continuous mode with built-in watch functionality.
---


Version updated for **https://github.com/surya-koritala/sigbound** to version **v2.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigbound) to find the latest changes.

## Action Summary

Sigbound automates parallel AI coding agent execution on a repository, merging results without manual conflict resolution. It handles merge conflicts automatically using a model, gates merges through builds and tests, ensures verified merges, allows file lane declarations, tracks run policies, supports run parking for sensitive changes, logs runs, and provides continuous mode with built-in watch functionality.

## What's Changed

A packaging fix. No behaviour changes, no flag changes, no output changes.

## The v2 module is importable

The module has been tagged `v2.0.0`, `v2.1.0` and `v2.2.0` while `go.mod` still declared `module github.com/surya-koritala/sigbound`. Go's semantic import versioning requires a major version of 2 or higher to carry the suffix in the module path, so every one of those tags was invisible to the module system:

```
$ go get github.com/surya-koritala/sigbound@v2.2.0
invalid version: module contains a go.mod file, so module path must match
major version ("github.com/surya-koritala/sigbound/v2")
```

The `+incompatible` escape hatch does not apply either — that form is only for modules with no `go.mod` at all.

The practical effect was worse than an error. `@latest` resolved to **v1.1.0 and succeeded**, so a dependency on this engine silently pinned a year-old version rather than failing with a reason anyone could act on.

## Import it as

```go
import "github.com/surya-koritala/sigbound/v2/pkg/attest"
```

```
go get github.com/surya-koritala/sigbound/v2@v2.2.1
```

## Compatibility

Users on v1 are unaffected — v1 remains resolvable at the old path, which is exactly what the suffix rule exists for. Nobody could have been on v2, since v2 was never resolvable.

`go.sum` is still empty: the engine has no dependencies.
