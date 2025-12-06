---
title: Python Semantic Release
date: 2024-10-08 09:02:11 +00:00
tags:
  - python-semantic-release
  - GitHub Actions
draft: false
repo: python-semantic-release/python-semantic-release
marketplace: https://github.com/marketplace/actions/python-semantic-release
version: v9.10.0
dependentsNumber: "3,661"
---


Version updated for **python-semantic-release/python-semantic-release** to version **v9.10.0**.
- This action is used across all versions by **3,661** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-semantic-release) to find the latest changes.

## Release notes

## v9.10.0 (2024-10-08)

### Features

- **changelog:** add `changelog_insertion_flag` to changelog template context (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** add `changelog_mode` to changelog template context (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** add `prev_changelog_file` to changelog template context (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** add `read_file` function to changelog template context (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** add shorthand `ctx` variable to changelog template env (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** modify changelog template to support changelog updates (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **config:** add `changelog.default_templates.output_format` config option (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **config:** add `changelog.insertion_flag` as configuration option (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **config:** add `changelog.mode` as configuration option (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **github-actions:** add an action `build` directive to toggle the `--skip-build` option (#1044, [`26597e2`](https://github.com/python-semantic-release/python-semantic-release/commit/26597e24a80a37500264aa95a908ba366699099e))


### Bug Fixes

- **config:** prevent jinja from autoescaping markdown content by default (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** adjust angular heading names for readability (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** ensure changelog templates can handle complex directory includes (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **changelog:** only render user templates when files exist (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))


### Documentation

- **changelog-templates:** improve detail & describe new `changelog.mode="update"` (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **commands:** update definition of the version commands `--skip-build` option (#1044, [`26597e2`](https://github.com/python-semantic-release/python-semantic-release/commit/26597e24a80a37500264aa95a908ba366699099e))

- **configuration:** add `changelog.mode` and `changelog.insertion_flag` config definitions (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **configuration:** define the new `changelog.default_templates.output_format` option (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **configuration:** mark version of configuration setting introduction (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **configuration:** standardize all true/false to lowercase ensuring toml-compatibility (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **configuration:** update `changelog.environment.autoescape` default to `false` to match code (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

- **github-actions:** add description of the `build` input directive (#1044, [`26597e2`](https://github.com/python-semantic-release/python-semantic-release/commit/26597e24a80a37500264aa95a908ba366699099e))

- **github-actions:** update primary example with workflow sha controlled pipeline ([`14f04df`](https://github.com/python-semantic-release/python-semantic-release/commit/14f04dffc7366142faecebb162d4449501cbf1fd))

- **homepage:** update custom changelog reference (#1045, [`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))


### Resolved Issues

- #858: _Append release notes to changelog instead of overwrite_

---

**Detailed Changes:** [v9.9.0...v9.10.0](https://github.com/python-semantic-release/python-semantic-release/compare/v9.9.0...v9.10.0)
