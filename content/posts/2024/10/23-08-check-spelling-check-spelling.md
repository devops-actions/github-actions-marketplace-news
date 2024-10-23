---
title: Check Spelling
date: 2024-10-23 08:47:03 +00:00
tags:
  - check-spelling
  - GitHub Actions
draft: false
repo: check-spelling/check-spelling
marketplace: https://github.com/marketplace/actions/check-spelling
version: v0.0.23
dependentsNumber: "2,219"
---


Version updated for **check-spelling/check-spelling** to version **v0.0.23**.
- This action is used across all versions by **2,219** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-spelling) to find the latest changes.

## Release notes

## ⏩ Upgrading
* 🏷️ Test first _on a branch_ by changing your workflow tags/references to this release. See 🐣 Breaking Changes for how to adapt your workflow.

## 🐣 Breaking Changes

### [`use_magic_file`](https://docs.check-spelling.dev/Configuration.html#usemagicfile) is now enabled by default


#### Background

magic file enables check-spelling to automatically recognize more files to exclude. It has been pretty reliable/helpful.

#### Migrating

When you upgrade, if there are files that magic file detects as worthy of excluding, it will suggest adding them to excludes. If they turn out to be files that shouldn't be excluded, you can add `use_magic_file: 0` to turn it off (and please file an issue with a sample showing why the files were falsely suggested for exclusion).

### `cache-dictionaries` has been removed

... along with all other caching -- check-spelling should be faster now than in previous versions, so the lack of this caching shouldn't be a concern.

#### Migrating

If you're using this setting, just remove it (you'll get a warning from GitHub when the workflow runs).

### check-spelling now requires `actions/upload-artifact@v4` / `actions/checkout@v4`

It is quite possible that GHES does not support these yet.

#### Migrating

Users of GHES instances that don't have access to those actions should not upgrade until they're available.

## ✨ Highlights

* Redo event categorization

    https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Set-event-severity

  - introduce `ignored` events (this takes priority over the other cases)
  - introduce `errors` events (this allows explicit promotion to `error`)
  - fixes using `notices` to demote events
  - changes `warnings`/`notices` -- events not in these lists are no longer automatically upgraded to error...
    ... they will only be treated as an error if the default categorization is error, or if the
    configuration explicitly promotes them.

* Fix unknown word reporting when one of the items is `x'abc`
* Add `inputs.wait-for-sarif-processing`
* Improve talk-to-bot message for step summary
* Provide better messaging for checkout failures
  * Prevent merge conflicts/missing merge commits with sarif reporting enabled from triggering a failure
* Drop html dictionaries that are proper subsets
* Upgrade `check-spelling/checkout-merge`
* Include commands to create a merge when someone creates a PR to a branch with check-spelling and their head branch doesn't have check-spelling.
* Remove confusing warning message
* Automatically detect available CPUs

    GitHub runners now have 4 cpu for open source repositories instead of 2 for Windows/Linux:
    https://github.blog/2024-01-17-github-hosted-runners-double-the-power-for-open-source/

* Replace actions/download-artifact with `gh`
* Detect missing permissions: `actions: read`

    Reference:
    https://github.com/check-spelling/check-spelling/wiki/Workflow-Permissions#contents-read

* Add support for `checkout-token`

    The expectation is that this be a fine-grained token PAT with just Contents: (Read-only|Read and write) as applicable

* Add support for `sarif-token`

    The expectation is that this be a fine-grained token PAT with just "Code scanning alerts"

* Warn about compounded words in expect files
* Add support for comments in expect files
* Add `inputs.unrecognized-words-before-collapsing`

    To have check-spelling always collapse the unknown word list, set the value to `0`.

* Migrate to `actions/*-artifact@v4`
* Explain how case folding is handled
* Rewrite previously acknowledged message
* Add summary for forbidden patterns
* Suggest patterns for files without unknown words
* Tolerate 502 errors from GitHub
* Improve handling for PRs from forks
* Improve links to PR checks from Push event
* Handle `suppress_push_for_open_pull_request` when there's no `on:` / `pull_request(_target)` event handler
* Use ⚠️ icon for warnings
* Add support for running unknown-words.sh standalone -- without a GitHub environment
* Remove GitHub caching
* Improve `apply.pl`

    Structure apply.pl around Capture::Tiny, but don't actually use it because it isn't included with Perl.

* Default to magic file based detection

Known Issues

* Running the check-spelling action on Windows runners doesn't work
  - This appears to be an incompatibility involving StrawberryPerl, cpanm, and ExtUtils::Manifest
  - Note that running check-spelling on a GitHub hosted runner other than ubuntu-* doesn't really
    make sense as the Windows and macOS runners are much more expensive per minute and check-spelling
    itself doesn't need any facilities from the OS -- it should be checking the spelling of files
    as they are present in commits.
  - While the check-spelling action won't work on Windows, apply.pl and the output check-spelling produces are expected to work on Windows.

## Full Changelog

https://github.com/check-spelling/check-spelling/compare/v0.0.22...v0.0.23

---

Note that there are 200 commits in this release, the above is not a complete list of features.


