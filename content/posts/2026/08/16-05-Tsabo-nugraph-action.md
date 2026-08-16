---
title: NuGet dependency graph
date: 2026-08-16 05:51:43 +00:00
tags:
  - Tsabo
  - GitHub Actions
draft: false
repo: https://github.com/Tsabo/nugraph-action
marketplace: https://github.com/marketplace/actions/nuget-dependency-graph
version: v1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of generating a NuGet dependency graph from .NET solutions or projects using the nugraph tool. It supports both local and pull request jobs, providing job summaries and customizable output formats like Mermaid diagrams and Graphviz DOT text. The action parses solution files to handle multiple projects and outputs graphs in various formats according to the specified settings.
---


Version updated for **https://github.com/Tsabo/nugraph-action** to version **v1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nuget-dependency-graph) to find the latest changes.

## Action Summary

This GitHub Action automates the process of generating a NuGet dependency graph from .NET solutions or projects using the nugraph tool. It supports both local and pull request jobs, providing job summaries and customizable output formats like Mermaid diagrams and Graphviz DOT text. The action parses solution files to handle multiple projects and outputs graphs in various formats according to the specified settings.

## What's Changed

First public release of the NuGet dependency graph action, wrapping [0xced/nugraph](https://github.com/0xced/nugraph) as a reusable composite GitHub Action.

## Features

- Generate a NuGet dependency graph for a single `.csproj`/`.fsproj`/`.vbproj` or an entire `.sln` (each project in the solution gets its own graph)
- Post the graph directly to the job summary as a native Mermaid diagram — no artifact upload required
- Optionally write the graph to a file as `.svg`, `.png`, `.pdf`, `.jpg`, or raw `.mmd`/`.mermaid` source
- Customize the graph: embedded title, package versions in nodes, layout direction, clickable links on/off
- Ignore packages by pattern (e.g. `System.*`) via a simple newline-separated list
- Hide empty graphs for projects with no NuGet dependencies
- Works with private NuGet feeds already configured on the runner
- Pass any other nugraph flag through `extra-args`

See the [README](../../blob/v1.0.0/README.md) for full usage and [examples/](../../tree/v1.0.0/examples) for ready-to-copy workflows.

## Usage

```yaml
- uses: Tsabo/nugraph-action@v1
  with:
    project-path: ./src/MyApp.sln
```

