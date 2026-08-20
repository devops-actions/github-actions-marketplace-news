---
title: NuGet dependency graph
date: 2026-08-20 22:31:02 +00:00
tags:
  - Tsabo
  - GitHub Actions
draft: false
repo: https://github.com/Tsabo/nugraph-action
marketplace: https://github.com/marketplace/actions/nuget-dependency-graph
version: v3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action provides reusable functionality to generate NuGet dependency graphs from .NET solutions or projects using the `0xced/nugraph` tool. It supports solution files and automates tasks related to creating project-specific dependency graphs as artifacts or appending them directly to job summaries, rendering them in different formats like SVG, PNG, PDF, and JPEG. The action handles multiple projects within a solution by generating separate graphs for each, and provides options for customizing graph styling.
---


Version updated for **https://github.com/Tsabo/nugraph-action** to version **v3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuget-dependency-graph) to find the latest changes.

## Action Summary

The GitHub Action provides reusable functionality to generate NuGet dependency graphs from .NET solutions or projects using the `0xced/nugraph` tool. It supports solution files and automates tasks related to creating project-specific dependency graphs as artifacts or appending them directly to job summaries, rendering them in different formats like SVG, PNG, PDF, and JPEG. The action handles multiple projects within a solution by generating separate graphs for each, and provides options for customizing graph styling.

## What's Changed

Adds support for the newer XML-based `.slnx` solution format alongside the classic `.sln` format.

## Changes

- `project-path` now also accepts a `.slnx` file — it's expanded into its member `.csproj`/`.fsproj`/`.vbproj` projects exactly like `.sln`, with nugraph run once per project (per-project output filenames, job summary sections, etc.)
- Solution expansion for both `.sln` and `.slnx` now goes through `dotnet sln list` instead of a `.sln`-specific text parser, so it stays correct against whatever the installed SDK itself considers valid
- No behavior change for existing `.sln`/single-project usages

**Note:** `.slnx` support depends on the .NET SDK version — older SDKs won't recognize the format. If your projects use `.slnx`, set `dotnet-version` to a recent SDK (this repo's tests use `10.0.x`).

## Usage

```yaml
- uses: Tsabo/nugraph-action@v3
  with:
    project-path: ./src/MyApp.slnx
```
