---
title: Setup runner cli
date: 2026-07-05 22:06:59 +00:00
tags:
  - kjanat
  - GitHub Actions
draft: false
repo: https://github.com/kjanat/runner
marketplace: https://github.com/marketplace/actions/setup-runner-cli
version: v0.19.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/kjanat/runner** to version **v0.19.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-runner-cli) to find the latest changes.

## What's Changed

### Added

- `runner lsp` completes `[tasks.overrides]` entry keys with the
  project's own task names (discovered from the document's directory,
  same detection as the CLI), each carrying its source and description.
  Works both under the `[tasks.overrides]` header and as a dotted
  `overrides.<task>` key in `[tasks]`; names that aren't bare TOML keys
  (e.g. `build:web`) insert quoted. Dotted `overrides.<task> =` values
  now complete the source-label vocabulary like their
  `[tasks.overrides]` equivalents.
- `runner lsp` key completions scaffold the value shape the field's
  schema type calls for, when the client supports snippets: array fields
  insert `pms = ["|"]`, string fields `node = "|"`, others a bare tab
  stop; table fields continue the dotted key path (`overrides.`), which
  re-triggers completion. Clients without snippet support keep the plain
  `name =` insert.

### Fixed

- `runner lsp` no longer offers field completions after a dotted key
  (`group_output.` suggested the section's whole field list; TOML reads
  the dot as a key path, and no section has enumerable sub-keys). Key
  completions also now carry an explicit text edit replacing the typed
  token, so a completion accepted from a stale list (e.g. left open
  across a backspace) substitutes the token instead of pasting after it
  (`group_outputgroup_output =`).
- `runner lsp` value completions inside an open string literal
  (`prefer = ["ba`) insert the bare word instead of a quoted one — the
  quotes are already typed (and auto-paired), so accepting previously
  produced `""bacon""`.
- `runner lsp` is now comment-aware: no completions or hover at or after
  a `#` (whole-line or trailing); a `#` inside a string literal still
  isn't treated as a comment.

## What's Changed
* fix(lsp): dotted-key completion fixes + complete [tasks.overrides] keys with project task names by @kjanat in https://github.com/kjanat/runner/pull/85


**Full Changelog**: https://github.com/kjanat/runner/compare/v0.19.0...v0.19.1

