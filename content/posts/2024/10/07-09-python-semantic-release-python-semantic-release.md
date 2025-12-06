---
title: Python Semantic Release
date: 2024-10-07 09:03:17 +00:00
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

## v9.10.0 (2024-10-07)

### Documentation

* docs(github-actions): update primary example with workflow sha controlled pipeline ([`14f04df`](https://github.com/python-semantic-release/python-semantic-release/commit/14f04dffc7366142faecebb162d4449501cbf1fd))

### Features

* feat(changelog): modify changelog template to support changelog updates (#1045)

* feat(changelog): add `read_file` function to changelog template context

  This feature adds a filter that will enable jinja templates to read a file
  from the repository into memory to then use as output within the template.
  The primary use for this is to read in a previous changelog file which then
  the template can give the illusion of insertion as it re-writes the entire
  file.

* feat(changelog): add `changelog_mode` to changelog template context

  Adds a flag that can be passed to the templating environment to allow
  for triggering an update mode of a changelog versions an initialization
  mode. The usage is up to the template developer but for PSR it is used
  to handle changelog generation vs changelog updating.

* feat(changelog): add `prev_changelog_file` to changelog template context

  This adds a string that represents a filename to a previous changelog file
  which can be read from inside the template context. The primary use is for
  enabling the updating of a changelog through jinja templating.

* feat(changelog): add `changelog_insertion_flag` to changelog template context

  This adds a customizable string to the jinja templating context which allows users
  to use the PSR configuration to pass a custom insertion flag into the templating
  context. This is intended for use with initializing a changelog and then updating
  it from that point forward.

* feat(changelog): add shorthand `ctx` variable to changelog template env

* refactor(changelog): change recursive render to not use file streaming

  It would be nice to maintain file streaming for better memory usage but it
  prevents the ability to read the file contents previously from within the
  template which is a desire in order to insert into a previous changelog.
  In this case, the memory usage is likely not a problem for large text files.

* fix(config): prevent jinja from autoescaping markdown content by default

  Since this project is generally rendering non-html content such as RST or MD,
  change the default of the jinja autoescape parameter to false instead of true.
  When it was true, it would automatically convert any `&` ampersands to its
  htmlentity equivalent `&amp;` which is completely unnecessary and unreadable in
  non-html documents.

* docs(configuration): update `changelog.environment.autoescape` default to `false` to match code

* docs(configuration): standardize all true/false to lowercase ensuring toml-compatibility

* feat(config): add `changelog.mode` as configuration option

* feat(config): add `changelog.insertion_flag` as configuration option

* refactor(config): use `changelog.changelog_file` as previous changelog file for target for update

* style(config): alphabetize changelog configuration options

* docs(configuration): add `changelog.mode` and `changelog.insertion_flag` config definitions

* fix(changelog): adjust angular heading names for readability

* feat(changelog): modify changelog template to support changelog updates

  By popular demand, the desire to only prepend new information to the changelog
  is now possible given the `changelog.mode = update` configuration option.

  Resolves: #858, #722

* refactor(errors): add new generic internal error for tragic improbable flaws

* fix(changelog): ensure changelog templates can handle complex directory includes

* feat(config): add `changelog.default_templates.output_format` config option

* fix(changelog): only render user templates when files exist

  This change ensures that we will use our default even when the user only overrides
  the release notes template. It also must have jinja templates in the folder otherwise
  we will render the default changelog.

* refactor(changelog): enable default changelog rendering of multiple template parts

* refactor(changelog): change rendering of default release notes to new template structure

* refactor(context): use pathlib instead of context manager to read file

* test(fixtures): update changelog generator format & angular heading names

* test(angular): adjust test of commit type to section header

* test(changelog): update make changelog context function call

* test(release-notes): update test related to release notes generation

* test(fixtures): add processing to filter out repo definitions for partial changelogs

* test(fixtures): update repo generators to update changelogs w/ every version

* test(fixtures): slow down repo generators to prevent git failures from same timestamps

* test(fixtures): update changelog generator to include insertion flag

* refactor(changelog): fix template to handle update when no releases exist

* refactor(changelog): adjust template to use improved release object

* refactor(changelog): improve resilence & non-existant initial changelog

* style(changelog-templates): maintain 2-spaces indentation throughout jinja templates

* refactor(changelog): ensure cross-platform template includes with jinja compatibility

* test(changelog-cmd): add tests to evaluate variations of the changelog update mode

* test(version-cmd): add tests to evaluate variations of the changelog update mode

* refactor(release-notes): normalize line endings to universal newlines & always end with newline

* refactor(changelog): ensure default changelog renders w/ universal newlines & writes as os-specific

* test(changelog): update changelog testing implementation to be newline aware

* test: update tests to use cross-platform newlines where appropriate

* docs(changelog-templates): improve detail & describe new `changelog.mode="update"`

* docs(configuration): mark version of configuration setting introduction

* docs(homepage): update custom changelog reference

* refactor(changelog): adjust read_file filter to read file as os-newline aware

* refactor(changelog): apply forced universal newline normalizer on default changelog

* test(changelog): adjust implementation to consistently work on windows

* test(version): adjust implementation to consistently work on windows

* refactor(changelog-template): only add insertion flag if in update mode

* test(changelog): adjust test to handle changelog regeneration in init mode

* refactor(changelog-templates): adjust init template to clean up extra newlines

* test(changelog): adjust expected output after cleaned up newlines

* docs(configuration): define the new `changelog.default_templates.output_format` option ([`c18c245`](https://github.com/python-semantic-release/python-semantic-release/commit/c18c245df51a9778af09b9dc7a315e3f11cdcda0))

* feat(github-actions): add an action `build` directive to toggle the `--skip-build` option (#1044)

* docs(commands): update definition of the version commands `--skip-build` option

* docs(github-actions): add description of the `build` input directive ([`26597e2`](https://github.com/python-semantic-release/python-semantic-release/commit/26597e24a80a37500264aa95a908ba366699099e))

