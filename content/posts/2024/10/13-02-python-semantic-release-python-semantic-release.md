---
title: Python Semantic Release
date: 2024-10-13 02:32:08 +00:00
tags:
  - python-semantic-release
  - GitHub Actions
draft: false
repo: python-semantic-release/python-semantic-release
marketplace: https://github.com/marketplace/actions/python-semantic-release
version: v9.11.0
dependentsNumber: "3,678"
---


Version updated for **python-semantic-release/python-semantic-release** to version **v9.11.0**.
- This action is used across all versions by **3,678** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-semantic-release) to find the latest changes.

## Release notes

## v9.11.0 (2024-10-12)

### Features

* feat(changelog): add default changelog template in reStructuredText format (#1055)

* test(fixtures): update repo generation to create rst & md changelogs

* test(release-history): refactor fragile test to utilize repo fixture definitions

* test(changelog-cmd): update tests to evaluate rst changelog generation & updates

* test(version-cmd): update tests to evaluate rst changelog generation & updates

* test(version-cmd): update test code to match new commit definition functions

* test(config): add test to validate `insertion_flag` default determination

* feat(changelog): add `convert_md_to_rst` filter to changelog environment

* feat(changelog): add default changelog in re-structured text format

  This change adds the templates to create an equivalent CHANGELOG.RST file in
  angular changelog style. It can be enabled via the `output_format` configuration
  setting.

  Resolves: #399

* feat(config): enable target changelog filename to trigger RST output format

  Resolves: #399

* feat(config): enable default `changelog.insertion_flag` based on output format

* refactor(config): move `changelog_file` setting under `changelog.default_templates`

  This change adds a secondary `changelog_file` setting under the default_templates
  section while deprecating the top level one. Since this is not intended to be a
  breaking change we provided a warning message and compatibility code to pass along
  the current `changelog_file` value to the new setting location while giving the user
  a notification to update before the next version.

* fix(changelog): correct spacing for default markdown template during updates

* docs(configuration): update details of `insertion_flag`'s dynamic defaults with rst

* docs(configuration): update `output_format` description for reStructuredText support

* docs(configuration): update `changelog_file` with deprecation notice of setting relocation

* docs(changelog): clarify the `convert_md_to_rst` filter added to the template environment

* docs(changelog): increase detail about configuration options of default changelog creation ([`c2e8831`](https://github.com/python-semantic-release/python-semantic-release/commit/c2e883104d3c11e56f229638e988d8b571f86e34))

