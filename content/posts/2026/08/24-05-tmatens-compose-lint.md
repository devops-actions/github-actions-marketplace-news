---
title: compose-lint
date: 2026-08-24 05:57:30 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.23.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The GitHub Action `compose-lint` is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It catches these issues in CI before they reach production by automatically fixing the unambiguous ones with a dry-run first approach. The action is grounded in OWASP and the CIS Docker Benchmark and provides full rule documentation online.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.23.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The GitHub Action `compose-lint` is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It catches these issues in CI before they reach production by automatically fixing the unambiguous ones with a dry-run first approach. The action is grounded in OWASP and the CIS Docker Benchmark and provides full rule documentation online.

## What's Changed


### Added

- **CL-0020 and CL-0021 now read the `env_file:` targets a service names**, and
  fire on a credential written in one. Compose merges those files into the
  container's process environment, so moving a line out of `environment:` and
  into an `env_file:` silenced both rules without changing what deploys — the
  silent false negative
  ([#665](https://github.com/tmatens/compose-lint/issues/665)) opened on. The
  decision and its grounding are
  [ADR-027](docs/adr/027-grade-env-file-where-the-document-routes-it.md): a
  value is graded where the document routes it, and an `env_file:` is a
  declaration that every key in the named file becomes a literal in that
  service's process environment.

  Files clean on 0.22.0 may report new HIGH findings. This is the documented
  MINOR behaviour, with the documented escape hatches: pin the version, or gate
  on `--fail-on`. 414 of the 5,417-file corpus (7.64%) name an `env_file:`, and
  496 of the 924 references name the sibling `.env` itself.

  Measured by rebuilding real projects — fetching the targets their repositories
  commit and running the rules with and without them — **55% of projects whose
  env file could be read gained at least one finding**: 538 findings across 90 of
  163 projects, 491 CL-0020 and 47 CL-0021. That is a floor on a biased sample:
  only 44% of named targets are committed at all, and the gitignored remainder is
  where credentials concentrate. If your compose file names an `env_file:` and
  that file is present when compose-lint runs, expect roughly a coin-flip chance
  of a new HIGH finding.

  **No credential value reaches any output surface.** `evidence` is the key
  name, as it always was, and the message names the key and the file. The text
  formatter no longer reads — let alone excerpts — a file that is not a Compose
  document, so the line a key was written on is never printed.

  Paths resolving outside the project directory are refused rather than read,
  and say so on stderr. Compose reads them; an `env_file:` naming a lint-host
  path in a pull request would otherwise put that host's key names into a
  report.

- A note when an `env_file:` target contributed nothing, naming which one and
  why: absent, unreadable, outside the project directory, or a path still
  carrying an unresolved `${VAR}`. A malformed line is noted too, with its line
  number: Compose refuses a whole env file over one, while compose-lint keeps
  the well-formed entries — refusing the file would drop real findings for every
  other key, which is the silent false negative this work exists to remove. A *required* target's absence says Compose
  refuses to start such a project, so the credential rules went unevaluated; an
  optional one's absence says Compose ships the service without it, which is the
  configuration that was graded. This replaces the blanket note added earlier in
  this release cycle, which told every service naming an `env_file:` that the
  rules had not been evaluated — true when nothing was opened, misleading beside
  the findings that now fire. Stderr only, and it never touches the exit code.

### Changed

- `--no-env` now covers both env files beside the Compose file: the sibling
  `.env` and every `env_file:` a service names. The flag's promise is that it
  reproduces the previous release's behaviour, and after this change that
  behaviour includes the `env_file:` read.

### Fixed

- **A v1-shaped or compose-lint-config overlay is now an error instead of a
  silent pass.** Either one in a merge set made compose-lint skip the whole
  project and report `PASS` at exit 0, dropping every finding in the base file.
  Docker Compose *refuses* a project that includes either, so unlike the
  fragment case (#671) there is no configuration to grade and merging is not
  the answer: the run now exits 2 and names the file that caused it. The
  own-config half mattered most — a file whose entire purpose is to disable
  rules could, if named in `COMPOSE_FILE`, silence the linter completely
  rather than disabling one rule
  ([#673](https://github.com/tmatens/compose-lint/issues/673)).

  This also settles the second defect in #671: the skip handler attributed the
  message to the primary path, so a valid v2 base was reported as the
  unlintable file. The error now names the overlay.

  A file linted **on its own** is unchanged — a bare v1 file or a stray
  `.compose-lint.yml` in a sweep still skips quietly at exit 0, which is
  ADR-013 and the reason that policy exists. Only the merge-set case moves.
  Projects that were passing on an overlay Compose would reject will start
  failing, which is the point: they were never graded.

- A fragment overlay carrying only top-level structural keys such as
  `volumes:` or `networks:`, or just `{}`, now merges into the linted
  configuration instead of skipping the whole project. Compose folds it
  into its base and deploys the result, but compose-lint let the
  fragment raise out of the merge and reported `PASS` at exit 0 without
  grading anything in the base file: a two-byte overlay could silence
  every finding, CRITICAL ones included
  ([#671](https://github.com/tmatens/compose-lint/issues/671)).

  Findings only move toward coverage here, the same shape that #648,
  #657 and #668 shipped under: affected projects see previously
  withheld findings. The merge direction does not care which half
  holds the `services:` — a fragment *base* beside an overlay that
  carries them now lints too, where it previously skipped whole. A
  merge set where every selected file is a
  fragment still skips at exit 0, files linted on their own are
  unchanged, and v1-shaped or own-config overlays keep their current
  behavior until their separate error path lands (#673).

  Thanks [@krishna3554](https://github.com/krishna3554) ([#675](https://github.com/tmatens/compose-lint/pull/675)).

- A parse error in an automatically merged `compose.override.yml` is now
  reported against the file that actually failed in text, JSON, and SARIF. It
  previously named the base file at a line number that did not exist there
  ([#666](https://github.com/tmatens/compose-lint/issues/666)).

  Thanks [@nightcityblade](https://github.com/nightcityblade) ([#670](https://github.com/tmatens/compose-lint/pull/670)).

- Every Compose substitution operator now resolves against a sibling `.env`,
  not just `${VAR:-default}` and `${VAR-default}`. `${VAR:?err}`, `${VAR?err}`,
  `${VAR:+alt}` and `${VAR+alt}` fetched the `.env` value and then discarded it,
  so a `${BIND:?required}` that Compose resolves to `0.0.0.0` reached the rules
  as source text and CL-0005 could not fire. The same function also shipped the
  empty string for `${VAR:-default}` where `.env` sets `VAR=` and Compose ships
  the default — a `:`-prefixed operator treats an empty value as unset. All
  eighteen operator/state combinations are now pinned by a differential test
  against the Compose binary
  ([#664](https://github.com/tmatens/compose-lint/issues/664)).

  Findings only change for a project that ships a `.env`: with none, every
  operator was and remains unresolved. The 5,417-file corpus produces a byte-
  identical result set.

- CL-0020 now exempts additional credential-shaped quantity knobs, including
  work factors, retry counters, lengths, strength values, and cost knobs when
  their values are bare quantities ([#681](https://github.com/tmatens/compose-lint/issues/681)).

  Thanks [@AdhravRai](https://github.com/AdhravRai) ([#685](https://github.com/tmatens/compose-lint/pull/685)).



