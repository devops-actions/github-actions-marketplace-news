---
title: emilpriver/geni
date: 2024-02-10 19:21:48 +00:00
tags:
  - emilpriver
  - GitHub Actions
draft: false
repo: emilpriver/geni
marketplace: https://github.com/marketplace/actions/emilpriver-geni
version: v0.0.10
dependentsNumber: "0"
---


Version updated for **emilpriver/geni** to version **v0.0.10**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/emilpriver-geni) to find the latest changes.

## Release notes

## What's Changed
* Bump serial_test from 2.0.0 to 3.0.0 by @dependabot in https://github.com/emilpriver/geni/pull/39
* Bump clap from 4.4.11 to 4.4.18 by @dependabot in https://github.com/emilpriver/geni/pull/40
* Bump tempfile from 3.8.1 to 3.9.0 by @dependabot in https://github.com/emilpriver/geni/pull/41
* Bump anyhow from 1.0.76 to 1.0.79 by @dependabot in https://github.com/emilpriver/geni/pull/43
* Bump tokio from 1.35.1 to 1.36.0 by @dependabot in https://github.com/emilpriver/geni/pull/42
* Convert Geni to a lib by @emilpriver in https://github.com/emilpriver/geni/pull/46
* Added optional transactions by @emilpriver in https://github.com/emilpriver/geni/pull/47

## Geni library
You are now able to use geni as a library to run migrations, ideal for tests.
Example:
```rust
use geni;

#[tokio::main]
async fn main() {
    // Migrate the database
    geni::migrate_database(
        "sqlite://./test.db".to_string(), // Database URL
        None,                             // Database Token
        "schema_migrations".to_string(),         // Migration Table
        "./migrations".to_string(),       // Migration Folder
        "schema.sql".to_string(),         // Schema File
        Some(30),                         // Wait timeout for the database to be ready
        false,                            // Dump Schema
    )
    .await
    .unwrap();

    ()
}
```


**Full Changelog**: https://github.com/emilpriver/geni/compare/v0.0.9...v0.0.10
