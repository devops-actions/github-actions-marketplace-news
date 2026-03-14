---
title: Smart csproj Version Grabber
date: 2026-03-14 21:27:39 +00:00
tags:
  - Raycynix
  - GitHub Actions
draft: false
repo: https://github.com/Raycynix/get-csproj-version-action
marketplace: https://github.com/marketplace/actions/smart-csproj-version-grabber
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Raycynix/get-csproj-version-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smart-csproj-version-grabber) to find the latest changes.

## Action Summary

The "Smart csproj Version Grabber" GitHub Action is designed to automatically locate a `.csproj` file in your repository and extract its version information. It uses a smart discovery logic to find the file, prioritizing a user-provided path, then searching for the first project in a solution file, or defaulting to a `.csproj` file in the root directory. This action simplifies version management for .NET projects, automating the retrieval of version details for use in CI/CD workflows.

## Release notes

### The most reliable zero-config version extractor for .NET CI pipelines.
Extracting versions from .NET projects in CI often requires hardcoded paths or custom scripts.
**Smart csproj Version Grabber** provides a reliable, zero-config solution.

# Key Features
## **Smart Discovery**
No more hardcoded paths. The action automatically detects your version by following this priority:
 1. User-provided `path` input.
 2. First project found within a `.sln` file.
 3. Any .csproj file in the root directory.
 
## **High Performance**
Built with Node.js 20 and bundled with `@vercel/ncc`.
- No Docker. 
- No external dependencies. 
- No heavy XML parsing.

## **Multi-Tag Support**
Extracts version from `<Version>`, `<PackageVersion>`, or `<AssemblyVersion>`.
Uses the first matching tag based on common .NET versioning patterns.

## **Debug Friendly**
Exposes `version` and `project_path` outputs for full CI transparency.

# Usage
```YAML
- name: Get Version
  id: version
  uses: Raycynix/get-csproj-version-action@v1

- name: Publish artifact
  run: echo "Version is ${{ steps.version.outputs.version }}"
```

# What's Changed
- Production-ready discovery algorithm
- Fully bundled Node.js 20 runtime
- Optimized build size (~480kB)
- Marked as stable after internal testing

[Full Changelog](https://github.com/Raycynix/get-csproj-version-action/commits/v1.0.0)
