---
title: NuGet dependency graph
date: 2026-08-17 13:39:13 +00:00
tags:
  - Tsabo
  - GitHub Actions
draft: false
repo: https://github.com/Tsabo/nugraph-action
marketplace: https://github.com/marketplace/actions/nuget-dependency-graph
version: v2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the generation of NuGet dependency graphs from .NET solutions or projects using the `0xced/nugraph` tool. It supports generating job summaries with Mermaid diagrams and outputs the graph in various formats, including SVG, PNG, PDF, and JPEG images. The action can handle both single project paths and solution files by parsing the solution to include all referenced projects in the graph generation process.
---


Version updated for **https://github.com/Tsabo/nugraph-action** to version **v2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuget-dependency-graph) to find the latest changes.

## Action Summary

This GitHub Action automates the generation of NuGet dependency graphs from .NET solutions or projects using the `0xced/nugraph` tool. It supports generating job summaries with Mermaid diagrams and outputs the graph in various formats, including SVG, PNG, PDF, and JPEG images. The action can handle both single project paths and solution files by parsing the solution to include all referenced projects in the graph generation process.

## What's Changed

Upgrades the action's dependencies to their latest majors, all of which now run on the Node.js 24 runtime. This clears the "Node.js 20 is deprecated" annotation warning that GitHub Actions raises for `actions/checkout@v4`, `actions/setup-dotnet@v4`, and `actions/upload-artifact@v4`.

## Changes

- `actions/setup-dotnet` bumped to `v6` in the composite action itself — every consumer of `nugraph-action` picks this up automatically, no workflow changes required
- `actions/checkout` and `actions/upload-artifact` bumped to `v7` in the example workflows and README

No inputs, outputs, or behavior changed. Tagged as a major version out of caution for the internal `setup-dotnet` bump, but existing `@v1` usages are unaffected — this only lands for consumers pinned to `@v2` or `@master`.

## Usage

```yaml
- uses: Tsabo/nugraph-action@v2
  with:
    project-path: ./src/MyApp.sln
```
