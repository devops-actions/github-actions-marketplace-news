---
title: compose-lint
date: 2026-08-22 06:04:42 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.22.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  compose-lint is a security-focused linter that checks Docker Compose files for potential vulnerabilities, including privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It catches these issues before they reach production and provides automated fixes. The tool uses OWASP and the CIS Docker Benchmark as its foundation and is suitable for developers who ship Docker Compose files to production or want defense in depth in a home lab.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.22.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

compose-lint is a security-focused linter that checks Docker Compose files for potential vulnerabilities, including privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It catches these issues before they reach production and provides automated fixes. The tool uses OWASP and the CIS Docker Benchmark as its foundation and is suitable for developers who ship Docker Compose files to production or want defense in depth in a home lab.

## What's Changed


### Upgrading

**A `.env` beside a Compose file now chooses which documents are linted.**
Compose reads a sibling `.env` for `COMPOSE_FILE`, which replaces its file
discovery *and* suppresses the automatic `compose.override.yml` merge. compose-
lint read neither, so a project configured that way had its real documents
ungraded while an override Compose never loads contributed findings — under a
warning stating that Compose merges it automatically, which was false there.

Values are resolved from it too, so a `${VAR}` a rule consumes now grades as
what deploys rather than as unknowable. Expect new findings on such projects,
including CRITICAL ones, and some existing findings to disappear where the
`.env` supplies a value that clears them (a pinned image tag, for instance) —
the documented MINOR behaviour for tightened coverage.

Expect the reported file list to change on such projects, in both directions.
`--no-env` restores the previous selection exactly, including that false merge.
A `.env` can only *add* documents to a file you named on the command line, never
remove it, so nothing you asked for is skipped ([ADR-026](docs/adr/026-read-the-sibling-env-file.md)).


**Files with a `compose.override.yml` beside them are now graded as the
configuration Compose runs.** `docker compose up` merges that overlay with no
flag and no opt-in, and compose-lint read only the base — so a control-socket
mount added by an overlay was never reported, and the base's own findings were
graded against a document nobody deploys.

Expect new findings on such projects, including CRITICAL ones. That is the
documented MINOR behaviour for tightened coverage; pin the version or gate on
`--fail-on` if a pipeline needs determinism. `--no-merge-overrides` restores
the previous single-file grading exactly.

### Added
- `check` and `fix` read `COMPOSE_FILE` and `COMPOSE_PATH_SEPARATOR` from a
  `.env` in the Compose file's own directory, select the documents it names, and
  merge them in its order. The run states what it selected and why on stderr,
  and the header names every document read. The ambient shell environment stays
  out of scope: a `COMPOSE_FILE` exported in a session and never written down is
  host state, and honouring it would make the same checkout lint differently
  depending on who ran the command. The separator defaults to `:` on every
  platform rather than to the host's, because a `.env` naming two documents
  describes the project wherever it is linted from; Compose's own default is
  the host's path separator, so this deliberately differs on a Windows lint
  host, in the same direction ADR-023 already took for path semantics.
- `--no-env` ignores a sibling `.env` entirely, reproducing the previous file
  selection. A run that skips one says so, because an escape hatch that
  silently changes what is graded is the failure the hatch exists to prevent.
- A note when a bind source is *only* unresolved references (`"${MOUNT}:/data"`
  with nothing supplying `MOUNT`). Compose refuses to start a project with an
  empty bind source, so the document being graded is not one that deploys and
  the mount rules were never evaluated for it. Deliberately narrow — 3.3% of a
  5,417-file corpus, against the 22% that carry *some* defaultless `${VAR}` —
  and it is a note on stderr, so the exit code is unchanged.

- Contract tests pin the JSON envelope and the SARIF log shape, the two
  surfaces `docs/compatibility.md` freezes at 1.0 that nothing enforced.
  `SCHEMA_VERSION` is pinned to its literal value, so a silent bump fails;
  additive keys stay allowed, renames and removals now require editing the
  contract on purpose.
- `check` and `fix` merge a sibling `compose.override.yml` and lint the
  effective configuration (ADR-025). The run header names both documents, and
  a note on stderr states what was merged; the exit code is unchanged, because
  merging is coverage achieved rather than a coverage gap.
- `--no-merge-overrides` on `check` and `fix` opts out.
- Findings carry the document their evidence is written in. Text excerpts are
  read from that file, SARIF points `artifactLocation` there, and JSON gains a
  conditional `source_file` key — additive, so `SCHEMA_VERSION` is unchanged.

### Changed

- `fix` edits only findings written in the file it is fixing when an overlay is
  merged; findings from the overlay are reported for manual review, and the
  overlay is never a write target.

### Deprecated

- **Python 3.10 is deprecated.** It reaches upstream end-of-life in October
  2026, and compose-lint will require 3.11 or newer before its 1.0 release.
  Running on 3.10 now prints a one-line warning to stderr naming the version
  you are on and the version to pin if you need to stay there. Nothing else
  changes yet: 3.10 remains in the test matrix and fully supported until the
  drop lands.

  The warning exists because the drop itself is silent. `requires-python` does
  not fail an install on an unsupported interpreter — pip resolves to the last
  release that allowed it, so after the floor moves `pip install -U
  compose-lint` leaves a 3.10 user on a frozen version with nothing printed in
  either direction. This is the last chance to say so.

### Fixed
- Credential rules are unaffected by a `.env`. A value there is never
  substituted into an `environment:` value, so `POSTGRES_PASSWORD: "${PW}"`
  stays clean however `PW` is set — otherwise CL-0021 would flag the exact
  pattern its own fix text recommends. A written default is still graded:
  `${PW:-changeme}` ships to every clone and keeps firing. Names referenced only
  from `environment:` are not read out of the `.env` at all.
- An overlay is no longer merged into a project whose `.env` sets
  `COMPOSE_FILE`. Compose does not load `compose.override.yml` when
  `COMPOSE_FILE` is set, so those findings described a document that never runs,
  and the accompanying warning asserted the opposite.

- CL-0005 includes a non-default protocol in a long-syntax port's evidence.
  Two publishings of one container port that differ only by protocol — the
  standard shape for a DNS service — derived the same evidence, so SARIF gave
  them one `partialFingerprints` digest and Code Scanning displayed one alert
  instead of two. `tcp` is still not spelled out, so no existing alert is
  re-keyed. Text and JSON always reported both findings.
- `extends:` no longer concatenates every sequence. Compose merges `volumes`
  and `devices` by container path, replaces `command`/`entrypoint`, and
  deduplicates the append-style sequences; concatenating reported a CRITICAL
  socket mount against a service that had replaced that mount at the same
  container path, pointing at the line that replaced it.


