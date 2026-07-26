---
title: Supply Chain Guard
date: 2026-07-26 14:55:43 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.19.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action scans software supply chains for malicious campaigns and vulnerabilities across various ecosystems, including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It detects malware such as GlassWorm, Vidar/GhostSocks, Shai-Hulud, and XZ Utils backdoor, as well as code-level threats like obfuscated execution, invisible Unicode, and steganography. The action generates CycloneDX SBOMs and SLSA provenance reports to provide comprehensive insights into the supply chain's security posture.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

This GitHub Action scans software supply chains for malicious campaigns and vulnerabilities across various ecosystems, including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It detects malware such as GlassWorm, Vidar/GhostSocks, Shai-Hulud, and XZ Utils backdoor, as well as code-level threats like obfuscated execution, invisible Unicode, and steganography. The action generates CycloneDX SBOMs and SLSA provenance reports to provide comprehensive insights into the supply chain's security posture.

## What's Changed

## [5.19.0] - 2026-07-26

### Fixed

- **The threat-feed importer no longer loses advisories silently.** Its page cap
  was a correctness bound disguised as a safety bound. The upstream query sorts
  `published/desc` and the importer keeps no cursor, so hitting the cap kept the
  newest advisories and never fetched the oldest, and the next run started again
  at page 1 and re-fetched the same newest pages. The unfetched remainder was
  therefore unreachable by any number of runs and aged out of the look-back
  window for good, while the run printed "page cap reached" and exited 0.
  Measured against the live advisory database on 2026-07-26: the window held
  11,952 malware advisories mapping to 20,915 new IOCs, of which 1,108 were
  reachable, so 94.7% was never seen; 8 of 54 rolling windows over the previous
  60 days exceeded the cap. A missed malicious package is a silent false negative,
  so truncation is now **fatal** - the import aborts, writes nothing and exits
  non-zero, with `--allow-truncated` to override deliberately. `--max-pages`
  default is now 200 and `--days` is 14, which also lets a week of missed runs be
  recovered rather than lost. `--limit` stays 250: unlike a page cap it is
  recoverable, and the report now states how many entries are waiting and that
  they expire, instead of the bare "(limit reached)" that made the shortfall look
  self-healing. That recovery is conditional, not guaranteed: leftovers survive
  only while `remaining <= limit * runs_left`, so on a burst window the excess
  still ages out. The difference from a page cap is that the number is now
  reported, so the window can be widened or sliced deliberately.
- **`## [5.18.0]`'s changelog section is restored.** The v5.18.1 release commit
  renamed the `## [5.18.0]` heading instead of adding a new one, so two releases'
  notes sat under one heading and the `[5.18.0]:` reference link was orphaned.
  The published v5.18.0 release body was captured at tag time and is unaffected;
  the published v5.18.1 body does carry v5.18.0's notes as a result, and is left
  as-is because a release body is a historical record once tagged.
- **The em-dash gate was scanning almost nothing.** Its `docs/**/*.md` and
  `.ai/handoff/**/*.md` entries are git pathspecs, where `**/` still requires a
  literal intervening slash, so both matched zero tracked files and the rule only
  ever covered four files at the repository root. Corrected to `docs/*.md` and
  `.ai/handoff/*.md`, taking the rule from 4 files to 15.

### Added

- **Repo process: AI-attribution gate.** Tool and model attribution (a `Claude Code` markdown
  link, the `claude[.]com/claude-code` footer URL, or a `Co-authored-by` trailer
  naming the model) is now blocked on every published surface. The indicators are
  defanged here for the same reason IOCs are: writing one raw trips the gate, as
  the first draft of this entry did. `CHANGELOG.md` is deliberately in scope
  because CI turns its matching section into the GitHub Release body, which is
  indexed and cannot be fixed by a later commit. Since a PR body and a commit
  message are not files in the repository, a companion CI step covers those two
  surfaces, and the `pull_request` trigger now includes `edited` so pasting a
  footer into a body after CI has passed cannot slip through. The PR title and
  body reach that step as environment variables and are only ever read as quoted
  shell variables, never interpolated into the script, so an attacker-controlled
  body cannot execute on the runner. `.ai/handoff/**` is out of scope by design:
  that is where an agent note is expected to carry a model id.
- **Repo process: CHANGELOG reference-link gate.** The pinned AAHP changelog gate walks release
  headings to footer links but not the reverse, and never inspects what the
  `[Unreleased]` link points at, which is how a compare link stale by two releases
  shipped green. Two `docSync` groups now assert both directions plus that the
  `[Unreleased]` compare base equals the released version, with no new gate script.

