---
title: Brew Bumper
date: 2026-08-05 06:26:34 +00:00
tags:
  - mattmc3
  - GitHub Actions
draft: false
repo: https://github.com/mattmc3/brew-bumper
marketplace: https://github.com/marketplace/actions/brew-bumper
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Brew Bumper is a GitHub Action that automatically updates Homebrew formula versions and SHA-256 checksums in your tap. It runs on a schedule or manual trigger, resolving the latest tag for each formula, downloading the artifact, and rewriting the file in place. The action supports pinning specific formulas, excluding certain formulas, and handling different release patterns to ensure only relevant updates are made.
---


Version updated for **https://github.com/mattmc3/brew-bumper** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/brew-bumper) to find the latest changes.

## Action Summary

Brew Bumper is a GitHub Action that automatically updates Homebrew formula versions and SHA-256 checksums in your tap. It runs on a schedule or manual trigger, resolving the latest tag for each formula, downloading the artifact, and rewriting the file in place. The action supports pinning specific formulas, excluding certain formulas, and handling different release patterns to ensure only relevant updates are made.

## What's Changed

## [1.0.2] - 2026-08-04

### Added

- **`release-pattern` and `exclude-pattern` inputs.** A tag counts as a release when it fully matches
  `release-pattern`, which defaults to `v?\d+(\.\d+)*`. `exclude-pattern` then drops any tag that
  matched, one unanchored regex per line, so rules stack one at a time instead of growing into an
  alternation. Projects that tag another way opt in by widening the pattern, including those that
  ship nothing but prereleases.
- **Prebuilt-binary formulas with more than one architecture.** Every arch block gets its own
  artifact downloaded and its own checksum rewritten, so `on_arm` beside `on_intel` means two
  downloads and two new checksums. Blocks nested inside `on_macos` or `on_linux` count too.
- **`recheck` input.** Re-downloads the assets and rewrites any checksum that no longer matches, even
  when the version is already current. Off by default, since it costs a download per asset per run.

### Changed

- **Tag selection is a pattern you supply rather than a set of built-in heuristics.** The digit test,
  the prerelease word list and the fallback to whatever GitHub called the latest release are gone.
  A repo with no matching tag is skipped rather than guessed at.
- **A formula's repo falls back to its download `url`** when `homepage` points at a project site
  instead of the repo.
- **The tag scan warns when it stops at its page cap**, rather than reporting the newest tag it
  happened to see as the newest tag there is.
- **The `updated` output reports every asset, which changes its shape.** Entries are now
  `{formula, version, assets}`, where each asset is `{path, url, sha256}`. The old
  `{formula, version, url, sha256}` carried one url and one checksum, so a two-arch formula
  published half of what it had written. Anything reading `.url` or `.sha256` off an entry needs to
  read `.assets` instead.

### Removed

- **`prerelease-markers` input**, replaced by `release-pattern` and `exclude-pattern`. Anyone setting
  it needs to move to the new inputs. It shipped and was removed the same day, before anything
  depended on it.

### Fixed

- **Parenthesized stanzas are read.** Calls like `url("...")`, `version("...")` and `sha256("...")`
  used to be invisible and could make a formula read as head-only.
- **Binary urls with extra interpolation are refused.** After `#{version}` is replaced, any leftover
  interpolation now fails before download instead of reporting a nonsense url.
- **A lone plain source url must already be a GitHub tag archive.** Other plain urls are refused
  instead of silently becoming `github.com/<repo>/archive/refs/tags/<tag>.tar.gz`.
- **GitHub repo detection requires the exact `github.com` host.** Lookalike hosts no longer count,
  and fallback release urls still derive the repo from their first two path segments.
- **Duplicate stanza keys are disambiguated consistently.** Duplicate arch paths now get distinct
  checksums instead of tripping the edit guard.
- **A `url` templated with `#{version}` no longer needs an arch block.** A formula naming a single
  artifact at the top level, with no `on_arm` or `on_intel`, was refused outright. The mirror case,
  a plain top-level url sitting beside an arch block, is now refused rather than bumping the plain
  one and leaving the arch checksum stale.
- **A second architecture no longer keeps its old checksum.** A formula with an `on_intel` block had
  its `version` and `on_arm` checksum bumped while `on_intel` kept the stale one, producing a formula
  that installed on one architecture and failed verification on the other, silently. Run with
  `recheck` to repair a formula already in that state.
- **`on_arm` nested inside `on_macos` is found.** It used to read as head-only and was never bumped.
- **A `patch` or `livecheck` url is no longer mistaken for the formula's own.** A patch's `sha256`
  could be overwritten with a release checksum, and a `livecheck` url stopped a head-only formula
  from being skipped.
- **Single-quoted stanza values are read.** `url '...'` used to vanish, and an invisible url reads as
  head-only.
- **A url that cannot be read fails the formula instead of passing as head-only**, naming the block it
  is in. "Nothing to bump" and "I could not read this file" were the same answer, which is how
  several of these bugs stayed hidden.
- **A binary url that hardcodes its version is refused.** Without `#{version}` in the url there is
  nowhere to put the new version, so the old asset was hashed and filed under the new one.
- **Committing no longer writes a git identity into your repo.** `github-actions[bot]` was written
  into `.git/config` and overrode an identity you had already set. It is now passed for the commit
  alone, and only when the repo has none of its own.
- **`GITHUB_OUTPUT` uses a random heredoc delimiter**, so a value containing the old fixed one cannot
  close the block early.
- **`changed` and `updated` are set on every exit.** A run that gave up early, on a missing formula
  directory, an unknown formula name, or an invalid pattern, wrote no outputs at all, so a step
  reading `steps.bump.outputs.changed` got an empty string rather than `"false"`.

### Security

- **The API token is attached by exact host match.** It was decided by string prefix, so a host like
  `api.github.com.example` would have received it. For binary formulas the download url comes from
  the formula file, so a tap could steer a token-bearing request off-host.
