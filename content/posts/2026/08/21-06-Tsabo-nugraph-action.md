---
title: NuGet dependency graph
date: 2026-08-21 06:27:07 +00:00
tags:
  - Tsabo
  - GitHub Actions
draft: false
repo: https://github.com/Tsabo/nugraph-action
marketplace: https://github.com/marketplace/actions/nuget-dependency-graph
version: v4
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action generates a NuGet dependency graph from a .NET solution or project using the nugraph tool. It supports generating both SVG and Mermaid diagrams, and can customize graph styles. The action also automates local builds by default and appends graphs to job summaries.
---


Version updated for **https://github.com/Tsabo/nugraph-action** to version **v4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuget-dependency-graph) to find the latest changes.

## Action Summary

This GitHub Action generates a NuGet dependency graph from a .NET solution or project using the nugraph tool. It supports generating both SVG and Mermaid diagrams, and can customize graph styles. The action also automates local builds by default and appends graphs to job summaries.

## What's Changed

When `project-path` is a solution, different projects sometimes need different nugraph flags — most commonly a Blazor WebAssembly project needing `-r`/`--runtime browser-wasm`, since nugraph can't currently resolve its ambiguous ridless/`browser-wasm` targets on its own.

## Changes

- `extra-args` is now solution-aware: when `project-path` is a solution, it's parsed as newline-separated entries instead of a single flat string
  - A line starting with `-` (e.g. `--framework net8.0`) is a global flag applied to every project — existing single-line, solution-wide `extra-args` values keep working unchanged
  - A `ProjectName=args` line (`ProjectName` is the project file name without its extension, `*` wildcards supported) applies only to that project, appended after the global flags
- No behavior change when `project-path` is a single project — `extra-args` is still a plain space-separated flag string, exactly as before

**Note:** this works around a nugraph/Chisel limitation affecting every Blazor WebAssembly project — its `project.assets.json` always contains both a ridless target and an implicit `browser-wasm` target, which nugraph currently can't disambiguate without `-r`/`--runtime` passed explicitly for that project.

## Usage

```yaml
- uses: Tsabo/nugraph-action@v4
  with:
    project-path: ./src/MyApp.sln
    output-path: artifacts/nugraph/graph.svg
    extra-args: |
      MyApp.Client=--runtime browser-wasm
```

