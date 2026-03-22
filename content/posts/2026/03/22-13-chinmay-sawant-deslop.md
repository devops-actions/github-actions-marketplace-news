---
title: run-deslop
date: 2026-03-22 13:23:39 +00:00
tags:
  - chinmay-sawant
  - GitHub Actions
draft: false
repo: https://github.com/chinmay-sawant/deslop
marketplace: https://github.com/marketplace/actions/run-deslop
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/chinmay-sawant/deslop** to version **v0.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-deslop) to find the latest changes.

## Action Summary

The `deslop` GitHub Action is a Rust-based static analysis tool designed to identify low-context, AI-generated code patterns and inefficiencies in Go repositories. It automates the process of scanning and benchmarking codebases, detecting issues such as poor naming conventions, weak typing, hardcoded secrets, inefficient loops, and other suboptimal coding practices. By integrating directly into GitHub Actions, it provides developers with an efficient way to maintain code quality and detect potential problems in their repositories.

## Release notes

## Core Analysis & Heuristics Engine
- **Bootstrap** the **Rust CLI** and **Go repository scanner** (`goslop`).
- **Expand detectors**: Added parser evidence for **context-aware calls**, **doc comments**, **dropped errors**, **panic-on-error branches**, **`fmt.Errorf` wrapping misuse**, **raw goroutine launches**, **sleep-in-loop polling**, and **loop-local string concatenation**.
- **Phase 1-3 heuristics**: Added detection for **hardcoded secrets**, **dynamic SQL construction**, **mixed receivers**, **malformed tags**, and **low-signal tests**.
- **Parser support**: Expanded to include **test summaries**, **struct tags**, **receiver kinds**, and **string literals**.
- **Performance & Concurrency**: Added **Go performance, concurrency, and DB query smell detectors**, including **goroutine fan-out** and **full-dataset load** heuristics (detecting **`io.ReadAll`** and **`os.ReadFile`**).
- **Scan report formatter**: Updated default text output to stay compact. The **`--details`** flag is now required to see per-file/per-function breakdowns and specific findings like **`full_dataset_load`**.
- **Fix**: Addressed directory-aware **local import resolution**.
- **Fix**: Resolved an issue where package-level callable aliases declared via **`var`** were invisible to **`hallucinated_local_call`**.

---

## Architecture & Refactoring
- **Refactored application** to establish a consistent **base folder structure** and modularized code into smaller files.
- **Multi-language support**: Refactored the analysis module by introducing an **`Analyzer` trait**.
- **`GoAnalyzer`**: Implemented to handle Go-specific parsing, consolidating old parser logic into **`types.rs`**.
- **Fingerprinting module**: Added for Go functions to calculate and track various code metrics.

---

## Frontend, Website & Branding
- **Initial website launch** alongside the **Deslop Rebrand**.
- **React Hooks**: Added **`useGithubStars`** to fetch repository stars and **`useTheme`** for local storage-backed theme management.
- **Components**: Added **`GitHubStarsBadge`** to display star counts with a loading state.
- **UI/UX**: Improved frontend layout, added a **footer**, and removed background gradients for a cleaner look.
- **Fixes**: Resolved deployment and build issues for **Vite** and **GitHub Pages**.

---

## CI/CD, Releases & Documentation
- **GitHub Actions**: Restructured workflow files, fixed the release configuration, and added a CI pipeline for **release binary creation**.
- **Cargo Configuration**: Updated the **`toml` file** for Cargo releases.
- **Documentation**: Documented **cross-platform release builds** (Windows, macOS, Linux targets) and updated project README.
- **Testing**: Refreshed integration coverage with positive and negative **fixtures** for the new rule sets.
- **License**: Added the **MIT license** to the repository.

## What's Changed
* Chore/refactor folder structure by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/1
* Various detection added by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/2
* Feat/p2 by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/3
* Rebrand by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/4
* vite fix by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/5
* fixing the github pages by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/6
* Update README and add GitHub Action support for deslop by @chinmay-sawant in https://github.com/chinmay-sawant/deslop/pull/7

## New Contributors
* @chinmay-sawant made their first contribution in https://github.com/chinmay-sawant/deslop/pull/1

**Full Changelog**: https://github.com/chinmay-sawant/deslop/commits/v0.1.0
