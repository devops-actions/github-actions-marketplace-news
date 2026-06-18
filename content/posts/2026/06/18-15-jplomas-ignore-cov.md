---
title: Ignore Coverage
date: 2026-06-18 15:39:47 +00:00
tags:
  - jplomas
  - GitHub Actions
draft: false
repo: https://github.com/jplomas/ignore-cov
marketplace: https://github.com/marketplace/actions/ignore-coverage
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jplomas/ignore-cov** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ignore-coverage) to find the latest changes.

## What's Changed

# ignore-cov

Exclude ignored code blocks/lines from code coverage output reports. 

`ignore-cov` is a post-processor for code coverage outputs paired with comment-based directives added to your source code. It supports both **Go coverprofiles** (`coverage.out`) and **LCOV tracefiles** (`lcov.info`), making it compatible with Go, Rust, TypeScript, C++, and any other language that produces LCOV data.

The goal of this tool is to make testing explicit. Rather than aiming for an arbitrary coverage goal (like 80%), you can enforce **100% coverage** and explicitly call out any code blocks or lines that cannot or should not be tested, creating a clear audit trail for code reviews.

---

## GitHub Action Usage

Add the action to your workflow (e.g. `.github/workflows/coverage.yml`):

### For Rust Projects (LCOV)
```yaml
- name: Run tests and generate LCOV coverage
  run: |
    cargo install cargo-llvm-cov
    cargo llvm-cov --lcov --output-path lcov.info

- name: Filter ignored code from coverage
  uses: jplomas/ignore-cov@v1 # or pin to a tag/commit
  with:
    file: 'lcov.info'
    require-reason: 'true'
```

### For Go Projects (Coverprofile)
```yaml
- name: Run Go tests
  run: go test -coverprofile coverage.out ./...

- name: Filter ignored code from coverage
  uses: jplomas/ignore-cov@v1
  with:
    file: 'coverage.out'
    require-reason: 'true'
    ignore-empty: 'true'
```

---

For CLI Usage, Directives Syntax, Reason Verification and more - see the [readme](https://github.com/jplomas/ignore-cov)
