---
title: Check Spelling
date: 2025-05-15 08:59:06 +00:00
tags:
  - check-spelling
  - GitHub Actions
draft: false
repo: https://github.com/check-spelling/check-spelling
marketplace: https://github.com/marketplace/actions/check-spelling
version: v0.0.25
dependentsNumber: "2,556"
---


Version updated for **https://github.com/check-spelling/check-spelling** to version **v0.0.25**.
- This action is used across all versions by **2,556** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-spelling) to find the latest changes.

## Release notes

## ⏩ Upgrading
* 🏷️ Test first _on a branch_ by changing your workflow tags/references to this release. See 🐣 Breaking Changes for how to adapt your workflow.
* 🐛 See Known Issues for known issues

## 🐣 Breaking Changes

- [Code Scanning action requires a Code Scanning Ruleset](https://github.com/check-spelling/check-spelling/wiki/Breaking-Change:-Code-Scanning-action-requires-a-Code-Scanning-Ruleset)
  If you use SARIF reporting, then instead of the workflow yielding an :x: when it fails, it will rely on [**github-advanced-security** 🤖](https://github.com/apps/github-advanced-security) to report the failure. You will need to adjust your checks for PRs.
- [Dropping support for `on: schedule`](https://github.com/check-spelling/check-spelling/wiki/Breaking-change:-Dropping-support-for-on:-schedule)
- [Dropping support for `whitelist.txt` and `advice.txt`](https://github.com/check-spelling/check-spelling/wiki/Breaking-Change:-Dropping-support-for-%60whitelist.txt%60-and-%60advice.txt%60)
- [Dropping support for out of tree project files](https://github.com/check-spelling/check-spelling/wiki/Breaking-Change%3A-Dropping-support-for-out-of-tree-project-files)

## ✨ New Features
- [Check submodules](https://github.com/check-spelling/check-spelling/wiki/Feature:-Subrepos) using [`submodules`](https://github.com/check-spelling/check-spelling/wiki/Configuration#submodules)
- [Provide instructions for when `only_check_changed_files` finds unrecognized words](https://github.com/check-spelling/check-spelling/issues/86)
- Support [`unknown_file_word_limit`](https://github.com/check-spelling/check-spelling/wiki/Configuration/_edit#unknown_file_word_limit) to limit the number of times a path in a filename is reported when using [`check_file_names`](https://github.com/check-spelling/check-spelling/wiki/Configuration#check_file_names)
- Suggest [`checkout: true`](https://github.com/check-spelling/check-spelling/wiki/Configuration#checkout) for new [`missing-checkout`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions#single-line-file) error case
- Suggest ignoring files that trigger [`single-line-file`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions#single-line-file)

## Dictionaries
- Fix [`fallback-dictionary-not-found`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#fallback-dictionary-not-found) handling

### Hunspell dictionaries
- Fix support for `.dic`/`.aff` dictionaries by installing hunspell as needed ([#79](https://github.com/check-spelling/check-spelling/issues/79) / [#90](https://github.com/check-spelling/check-spelling/issues/90))
- Ensure that [Spanish](https://docs.check-spelling.dev/Feature:-Configurable-word-characters.html#spanish) works (a consumer is using this, so it should work reliably)

## Fixes
- [macOS: Consistently use check-spelling dictionary instead of looking at the system dictionary](https://github.com/check-spelling/check-spelling/issues/84)
- [Fix `check_for_newline_at_eof` for `allow.txt`](https://github.com/check-spelling/check-spelling/issues/81)
- Improve handling of [`inputs.ignored`](https://github.com/check-spelling/check-spelling/wiki/Configuration#ignored) events
- Fix [`inputs.debug`](https://github.com/check-spelling/check-spelling/wiki/Configuration:-Advanced#debug) handling
- Fix **merge** instructions order
- Fix pattern for validating expect entries
- Fix [`noisy-file-list`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#noisy-file-list) handling
- Fix 504 handling for [`only_check_changed_files`](https://github.com/check-spelling/check-spelling/wiki/Configuration#only_check_changed_files) when unshallowing
- Restore comment (`#`) support for expect files
- Include last character in [`token-is-substring`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#token-is-substring) warning

## Improvements
- [Line ending detection](https://github.com/check-spelling/check-spelling/issues/83)
- [RSQM](https://www.fileformat.info/info/unicode/char/2019/index.htm) handling
- Dictionary download times by skipping delays for `30x` redirects
- Excludes paths generation
- Error handling of various components
- Documentation links
- GitHub error detection patterns for when check-spelling has bugs
- Handling of `We'd`

### Messages
- Improve use of `` ` ``s
  - Remove them from `Line` for [`candidate-pattern`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#candidate-pattern)
  - Add them with better escaping for more user content
- Treat [`ignored-expect-variant`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#ignored-expect-variant) as a warning

### SARIF
- Switch to talking to [`/code-scanning/analysis`](https://github.com/github/docs/issues/38037) directly
- [Properly encode `#` in filenames](https://github.com/check-spelling/check-spelling/issues/82)
- Stop trying to publish SARIF for commits from other repositories
- Use [`note`](https://docs.oasis-open.org/sarif/sarif/v2.1.0/csprd01/sarif-v2.1.0-csprd01.html#_Toc10541086) severity for [`no-files-to-check`](https://github.com/check-spelling/check-spelling/wiki/Event-descriptions/#no-files-to-check)
- Support [`defaultConfiguration.level`](https://docs.oasis-open.org/sarif/sarif/v2.1.0/csprd01/sarif-v2.1.0-csprd01.html#_Toc10541288) when `problem.severity` is absent
- Add additional fields
- Only include used rules

### Candidate patterns
- Suggest using `#` to suppress candidates (you can do this for forbidden patterns too, but this version won't suggest that)

### Apply
- Improve error handling

### Summary Tables
- List all present event classes at the top level
- Support cross repository pull requests

### Checkout
- Suppress useless message about default branch
- Add [failed checkout diagnostics](https://github.com/check-spelling/check-spelling/wiki/Feature:-Diagnose-failed-checkouts)
- [Limit checkout credentials](https://github.com/check-spelling/check-spelling/issues/91)

### Testing
- Replace [`jd`](https://github.com/josephburnett/jd) with [`Test::More::is_deeply`](https://perldoc.perl.org/Test::More)
- Improve test suite and test coverage
- Work to consistently order output

### Upgrade components
- [checkout-merge](https://github.com/check-spelling/checkout-merge)@[v0.0.7](https://github.com/check-spelling/checkout-merge/releases/v0.0.7)
- [gh-program-downloader](https://github.com/check-spelling/gh-program-downloader)@[v0.0.4](https://github.com/check-spelling/gh-program-downloader/releases/v0.0.4)


## 🐛 Known Issues
- [`act`](https://github.com/nektos/act) as of [v0.2.77](https://github.com/nektos/act/releases/tag/v0.2.77) is not supported with `checkout: true` (there's a [PR to `act`](https://github.com/nektos/act/pull/2108) to fix this)

## Full Changelog

**Full Changelog**: https://github.com/check-spelling/check-spelling/compare/v0.0.24...v0.0.25

