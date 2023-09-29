---
title: Check Spelling
date: 2023-09-29 11:04:21 +00:00
tags:
  - check-spelling
  - GitHub Actions
draft: false
repo: check-spelling/check-spelling
marketplace: https://github.com/marketplace/actions/check-spelling
version: v0.0.22
dependentsNumber: "1,691"
---


Version updated for **check-spelling/check-spelling** to version **v0.0.22**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **1,691** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/check-spelling) to find the latest changes.

## Release notes

## ⏩ Upgrading
* 🏷️ You can just change your workflow tags/references to this release.

## 🐣 Breaking Changes

### 🗜️ [Reorganized cspell Dictionaries](https://github.com/check-spelling/check-spelling/wiki/Breaking-Change%3A-Reorganized-cspell-Dictionaries-in-v0.0.22)

`cspell:` dictionaries have been reorganized.

#### Background

There are 3 related configuration items:
* `dictionary_source_prefixes` 
    - In `v0.0.21`, this had: `"cspell": "https://raw.githubusercontent.com/check-spelling/cspell-dicts/v20220816/dictionaries/"`
    - In `v0.0.22`, it has: `"cspell": "https://raw.githubusercontent.com/check-spelling/cspell-dicts/v20230509/dictionaries/"`
* `extra_dictionaries`
* `check_extra_dictionaries`
    - The list has changed between `v0.0.21` and `v0.0.22`, a bunch have moved, some have split, and a bunch have been added.

#### Migrating

You can migrate in a couple of ways:
* Assuming you haven't set `dictionary_source_prefixes`, you can _temporarily_ clear `extra_dictionaries` and `check_extra_dictionaries` and then use one run to get a new set of recommended `extra_dictionaries` and then set `check_extra_dictionaries` (typically to `''`).
* If you want to keep your current cspell `extra_dictionaries`, change `cspell` to `cspell_old` (or anything that isn't `cspell`) and set `dictionary_source_prefixes` to something like this: `{"cspell": "https://raw.githubusercontent.com/check-spelling/cspell-dicts/v20220816/dictionaries/", "cspell_old": "https://raw.githubusercontent.com/check-spelling/cspell-dicts/v20220427/dictionaries/"}`.

Note that the `main` branch for `check-spelling/cspell-dicts` will move (roughly at the time of the `v0.0.22` release and again for future releases).

### [Dropping printf special cases](https://github.com/check-spelling/check-spelling/wiki/Breaking-change%3A-Dropping-printf-special-cases)

#### Background

check-spelling has evolved from a [very simple script](https://github.com/jsoref/spelling/blob/5ad4784ec4402209dd3bee028e0c87f1dee174a4/w) that [included some special handling for `\r`/`\t`/`\n`](https://github.com/jsoref/spelling/blob/5ad4784ec4402209dd3bee028e0c87f1dee174a4/w#L33) because it was originally developed to focus on C++ and similar files. Over time, check-spelling has been used on many repositories where these patterns can appear in contexts where they aren't C style escapes, and thus it has outgrown this assumption.

#### Migrating

You can copy the code from:
https://github.com/check-spelling/spell-check-this/blob/b968ca32e0e5961a85c7fe3e9431f81553c3f434/.github/actions/spelling/candidate.patterns#L591-L595 into `candidate.patterns` and consider one of those patterns is the appropriate pattern to include in your configuration.

If you have workarounds for the old behavior, you should be able to remove them.

### 💔 [Dropping support for broken act](https://github.com/check-spelling/check-spelling/wiki/Breaking-Change%3A-Dropping-support-for-broken-act)

#### Background

[nektos/act](https://github.com/nektos/act) is an alternate implementation of the GitHub Actions api environment. Each of check-spelling, GHA, and act have bugs and evolve at different rates (check-spelling releases on by far the slowest cycle). check-spelling had some workarounds for quirks of `act` from a long time ago and those interacted badly with newer GHA behaviors. In order to simplify life, support for some of those quirks has been removed.

#### Migrating

Install a newer version of [nektos/act](https://github.com/nektos/act).

check-spelling will use components that rely on `node20`, support for not complaining about it was added to act in [v0.2.51](https://github.com/nektos/act/releases/tag/v0.2.51)

## 🎏 [Deprecations](https://github.com/check-spelling/check-spelling/wiki/Deprecations)

### [🗣️ Dropping support for `on: schedule`](https://github.com/check-spelling/check-spelling/wiki/Breaking-change%3A-Dropping-support-for-on%3A-schedule)

Support for `on: schedule` will be removed in a future release (it probably hasn't been working for a while, but this is an official announcement that its support will be removed).

## ✨ New features

* [🗣️ Support for non English languages](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Support-for-non-English-languages)
* [🚆 Hunspell dictionary support](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Hunspell-dictionary-support)
* [🔢 Configurable word characters](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Configurable-word-characters)
* [🧙 Character Encoding Auto Detection](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Character-Encoding-Auto-Detection)
* [⏱️ Timing Report](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Timing-Report)
* [⌛ Parsing Timeouts](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Parsing-Timeouts)
* [🙈 Advanced exclusion suggestions](https://github.com/check-spelling/check-spelling/wiki/Feature:-Heuristic-exclude-suggestions#advanced-exclusion-suggestions)
* [🃏 Warning about substring matches](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Warning-about-substring-matches)
* [🙊 Masked content will be excluded from minified file detection](https://github.com/check-spelling/check-spelling/wiki/Feature:-Minified-file-detection#masked-content-will-be-excluded-from-accounting)
* [📝 Report instances of items that used to be covered by a now missing expect entry](https://github.com/check-spelling/check-spelling/wiki/Bug-fix%3A-Report-instances-of-items-that-used-to-be-covered-by-a-now-missing-expect-entry)
* [🔁 Handle GitHub Varnish failures](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Handle-GitHub-Varnish-failures)
* [🗒️ Plain text version of expect updates for people who do not want to run perl](https://github.com/check-spelling/check-spelling/wiki/Accepting-%2ASuggestions#preformatted-commit-v0022)

## 📚 Dictionary changes
* [❄️ Dictionaries with unique value](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Dictionaries-with-unique-value)
* [🥷 Suggest dictionaries when dictionaries aren't available](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Suggest-dictionaries-when-dictionaries-aren%27t-available)
* [🐫 Parallel dictionary retrieval](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Parallel-dictionary-retrieval)
* [🗑️ Removed Dictionaries](https://github.com/check-spelling/check-spelling/wiki/Removed-Dictionaries)
* [📗 K8s](https://github.com/check-spelling/check-spelling/wiki/Dictionary%3A-K8s)
* [📙 Lisp](https://github.com/check-spelling/check-spelling/wiki/Dictionary%3A-Lisp)
* [📊 Improve suggested dictionaries order](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Improve-suggested-dictionaries-order)

## 🔧 Tuning

* [🎨 Adjust Sarif output](https://github.com/check-spelling/check-spelling/wiki/Feature:-Sarif-output#adjusting-sarifjson)

## 💅 Minor polish

* [🔢 Fix error counts for Check filenames and paths](https://github.com/check-spelling/check-spelling/wiki/Feature%3A-Check-filenames-and-paths)
* 🏃 Performance fix for workflows that don't use patterns / forbidden / candidates
* 🔧 Matrixes generate archives that the latest apply.pl can consume (fixes regression in [v0.0.21](https://github.com/check-spelling/check-spelling/releases/tag/v0.0.21))
* 🔧 Matrixes generate SARIF reports with distinct categories enabling them all to render properly (fixes bug in [v0.0.21](https://github.com/check-spelling/check-spelling/releases/tag/v0.0.21))
* 👼 SARIF should work again


**Full Changelog**: https://github.com/check-spelling/check-spelling/compare/v0.0.21...v0.0.22


---

Note that there are over 200 commits in this release, the above is not a complete list of features.


