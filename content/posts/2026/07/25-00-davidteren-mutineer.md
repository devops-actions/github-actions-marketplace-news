---
title: Mutineer Ruby
date: 2026-07-25 00:41:17 +00:00
tags:
  - davidteren
  - GitHub Actions
draft: false
repo: https://github.com/davidteren/mutineer
marketplace: https://github.com/marketplace/actions/mutineer-ruby
version: v0.11.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Mutineer is a clean-room mutation-testing tool for Ruby that automates the process of identifying gaps in test coverage by mutating code and checking if tests fail to catch these mutations. It supports various options for customization, such as specifying test files, operators to use, and threshold settings. The action ensures thorough testing by running mutants against test suites and provides clear reports on gaps in test coverage.
---


Version updated for **https://github.com/davidteren/mutineer** to version **v0.11.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mutineer-ruby) to find the latest changes.

## Action Summary

Mutineer is a clean-room mutation-testing tool for Ruby that automates the process of identifying gaps in test coverage by mutating code and checking if tests fail to catch these mutations. It supports various options for customization, such as specifying test files, operators to use, and threshold settings. The action ensures thorough testing by running mutants against test suites and provides clear reports on gaps in test coverage.

## What's Changed


### Fixed
- **`--test-command` under version managers** — scrub Mutineer's rbenv/asdf
  version bins and bundler/gem env from the child so the suite can resolve the
  app's Ruby via shims / `.ruby-version`. Smoke check prints a targeted hint on
  `Bundler::RubyVersionMismatch` instead of only blaming DB/migrations. Docs
  cover a wrapper recipe for stubborn setups (#32).


