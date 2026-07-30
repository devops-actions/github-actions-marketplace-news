---
title: C# Code Graph Generator
date: 2026-07-30 17:21:01 +00:00
tags:
  - TheSmallPixel
  - GitHub Actions
draft: false
repo: https://github.com/TheSmallPixel/GraphCSharp
marketplace: https://github.com/marketplace/actions/c-code-graph-generator
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  GraphCSharp automates the process of generating and visualizing a C# codebase's architecture as an interactive D3 graph. It provides a single GitHub Action that extracts real call graphs from a repository, converts them into JSON format, and renders them on GitHub Pages for easy access. The tool helps developers quickly understand the structure of their projects and identify dependencies between components.
---


Version updated for **https://github.com/TheSmallPixel/GraphCSharp** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/c-code-graph-generator) to find the latest changes.

## Action Summary

GraphCSharp automates the process of generating and visualizing a C# codebase's architecture as an interactive D3 graph. It provides a single GitHub Action that extracts real call graphs from a repository, converts them into JSON format, and renders them on GitHub Pages for easy access. The tool helps developers quickly understand the structure of their projects and identify dependencies between components.

## What's Changed

- test: expand walker coverage to 7 tests (6618ca1)
- feat: add sample project and point demo workflow at it (4be2fba)
- refactor: migrate Newtonsoft.Json to System.Text.Json and bump Roslyn (86b32a4)
- refactor: extract graph models, remove dead code, drop enhanced experiment (66bcd63)
- chore: target .NET 8 LTS in action and analyzer (f0f22ef)
- ci: add build-and-test workflow with smoke test (91e5ce6)
- docs: rewrite README in product-page format and add CHANGELOG (5424ba0)
- docs: add LICENSE and community files (69bdf15)
- chore: add .gitignore and remove tracked build artifacts (8b92289)
- tt (f1eb20b)
