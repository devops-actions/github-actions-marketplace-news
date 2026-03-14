---
title: godeps-guard
date: 2026-03-14 13:37:45 +00:00
tags:
  - ashishsalunkhe
  - GitHub Actions
draft: false
repo: https://github.com/ashishsalunkhe/godeps-guard
marketplace: https://github.com/marketplace/actions/godeps-guard
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ashishsalunkhe/godeps-guard** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/godeps-guard) to find the latest changes.

## Action Summary

`godeps-guard` is a GitHub Action designed to analyze and control the dependency graph and binary size of Go projects, ensuring efficient dependency management and preventing binary bloat. It automates the enforcement of guardrails in CI pipelines, such as limiting the addition of dependencies, restricting binary size growth, and blocking problematic modules. This tool helps maintain cleaner, optimized codebases and prevents unnecessary overhead from reaching production.

## Release notes

# Release Notes: godeps-guard v1.0.0 🎉

I am excited to announce the first official release (v1.0.0) of **godeps-guard**! 

[godeps-guard](file:///Users/ashishsalunkhe/My%20Projects/godeps-guard/godeps-guard) is a Go dependency impact analyzer and CI enforcement tool designed to prevent dependency sprawl and binary bloat before it reaches production.

## 🚀 Key Features in v1.0.0

*   **Dependency Impact Analysis**: Inspects and compares dependency graph changes in a Go project over time.
*   **Binary Size Monitoring**: Measures changes in built binary sizes, warning you if your footprint grows unexpectedly.
*   **Targeted Guardrails (CI Enforcement)**: Apply strict policies to fail CI builds if:
    *   Too many direct dependencies are added.
    *   Too many transitive dependencies are introduced.
    *   Binary size grows by a specified MB or percentage threshold.
    *   Blocked vendor patterns are matched.
*   **Risk Scoring**: Automated risk evaluation mechanism to assess the health and security impact of added dependencies.
*   **SBOM Generation**: Generate Software Bill of Materials (SBOM) for your dependencies.
*   **Dependency Graph Visualization**: Output graphical views of your project's dependency tree.
*   **License Detection**: Automatically scan and detect licenses of your dependencies to prevent legal compliance issues.
*   **Historical Tracking**: Track dependency impact and size changes historically across commits.
*   **PR Comment Mode**: Generate automated, insightful comments directly on Pull Requests highlighting dependency changes.
*   **Attribution & Blame**: Identify exactly which dependency introduced a problematic or bloated transitive dependency.
*   **GitHub Action Integration**: Easily integrate [godeps-guard](file:///Users/ashishsalunkhe/My%20Projects/godeps-guard/godeps-guard) into your CI/CD pipelines using the official GitHub Action from the [GitHub Marketplace](https://github.com/marketplace).

## 📦 Installation

**Via Go Install:**
```bash
go install github.com/ashishsalunkhe/godeps-guard/cmd/godeps-guard@v1.0.0
```

**Via GitHub Action:**
```yaml
- name: Run godeps-guard
  uses: ashishsalunkhe/godeps-guard@v1.0.0
  with:
    base_ref: origin/main
    config: .godepsguard.yaml
```

## 📝 Configuration

Initialize a `.godepsguard.yaml` in your project root to get started. See the [README](README.md) for full configuration details.
