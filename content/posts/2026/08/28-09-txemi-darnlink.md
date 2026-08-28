---
title: darnlink — self-healing Markdown links
date: 2026-08-28 09:15:54 +00:00
tags:
  - txemi
  - GitHub Actions
draft: false
repo: https://github.com/txemi/darnlink
marketplace: https://github.com/marketplace/actions/darnlink-self-healing-markdown-links
version: v0.26.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of fixing Markdown links in a documentation repository. It ensures that links remain valid even after changes are made, such as moving files or folders. The action uses UUIDs to anchor links and automatically updates them if necessary. It also provides an option to convert plain links into robust ones that self-heal in the future. The main purpose of this action is to maintain a reliable reference system for documentation content over time.
---


Version updated for **https://github.com/txemi/darnlink** to version **v0.26.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/darnlink-self-healing-markdown-links) to find the latest changes.

## Action Summary

This GitHub Action automates the process of fixing Markdown links in a documentation repository. It ensures that links remain valid even after changes are made, such as moving files or folders. The action uses UUIDs to anchor links and automatically updates them if necessary. It also provides an option to convert plain links into robust ones that self-heal in the future. The main purpose of this action is to maintain a reliable reference system for documentation content over time.

## What's Changed

Everything since 0.24.0 — the 0.25.0 / 0.25.1 / 0.26.0 CHANGELOG sections were never tagged on their own; this is the first release that carries them. **Consumers pin by SHA or tag: nothing changes for a repo until its `darnlink-gate.json` `ref` moves** (and `recipe_sha256` with it, in the same commit).

> Consolidates everything since 0.24.0: the `0.25.0` / `0.25.1` / `0.26.0` sections that had been
> written ahead of a tag were never released on their own; this is the first tag that carries them.

### The gate recipe: verified downloads, `recipe_sha256`, Windows CR

**The shipped CI templates downloaded the recipe and executed it without verifying a byte** — both
of them, at every released version. `recipes/examples/github-actions-darnlink-gate.yml` and
`recipes/examples/Jenkinsfile-stage.groovy` now compare `recipe_sha256` **before** `chmod +x`, warn
loudly (instead of silently) when the key is absent, reject a value that is not a 64-hex digest with
a message about placeholders rather than crying tampering, and fall back to `shasum -a 256` where
`sha256sum` does not exist.

**New config key `recipe_sha256`** — and "new" understates it: consumers had been using the key for
months while it appeared nowhere in this repo, so every surface that verified had invented it
locally. It is now documented in the recipe's CONFIG header and in `recipes/README.md`, including
the rule that prevents the failure it is most likely to produce: **`ref` and `recipe_sha256` move in
the same commit.** It is the one key the recipe never reads — whoever fetches the script consumes
it, because a downloaded script cannot vouch for its own download. It does **not** cover
`darnlink-gate.ps1`, which is a different file with a different digest.

#### Fixed
- `recipes/darnlink-gate`: the three remaining Python heredocs (finding filter, README-offender
  count and staged summary) now set `sys.stdout.reconfigure(newline="\n")`, as `read_cfg` and
  `read_cfg_len` do since #97. On Windows the offender count came back as `"N\r"`, so the
  `[ "$cr" -gt 0 ]` test failed with "integer expression expected" and the gate aborted; the
  finding details carried a trailing CR. Behaviour on POSIX is byte-identical.

- **A JSON `false` turned `include_mermaid` ON**, and `default_branch: false` reached the tool as
  `--default-branch False`, a branch that exists nowhere. `read_cfg` renders a JSON boolean as the
  string `"False"`, and `[ -n "$X" ]` is true for any non-empty string. Five other keys were already
  normalised; the two that were not sat directly above a `case` belonging to a key assigned thirteen
  lines earlier, which is how both were missed. Normalisers now live beside their own assignment.
- **A docstring in `frontmatter_index.py` claimed a leading BOM survives the read.** `utf-8-sig`
  consumes it. Documentation only — and the same reader's other docstring already said the opposite,
  correctly.
- **`tools/check.sh` run as a git hook redirected the suite's git calls at this repository.** git
  exports `GIT_DIR` to hooks; tests that build their own repo in a temp dir were silently pointed
  here, and one ordinary `git commit` produced a commit that deleted the entire tree. It also made
  four tests fail *only* when the suite was acting as the gate.

### An inert rung now says so

**An inert rung now says so.** When the pending-on-default-branch rung cannot identify the repo or
its default branch it disables itself — correct — but it did so SILENTLY, and a disabled rung looks
exactly like one that ran and found a real break: same `web_not_found`, same exit 4. Three
attempted fixes each looked like they had never arrived, when they had arrived and were switching
themselves off. One line on stderr turns that mystery into a datum.

**New `--default-branch NAME`**, which wins over both automatic sources. It is the only one that
cannot fail, and in CI it is often the only one that CAN answer: the checkout has no `origin/HEAD`
(only the PR ref is fetched) and the credentials for `ls-remote` are usually scoped to the checkout
step rather than to what it spawns.

### The default-branch read was inert in CI

The pending-on-default-branch rung was **inert in CI**, which is the only place it mattered. It read the default branch
from `origin/HEAD` — a LOCAL symref that a CI checkout does not create: a multibranch PR job fetches
only `+refs/pull/<n>/head:refs/remotes/origin/PR-<n>`, so there is no `refs/remotes/origin/master`
and `symbolic-ref` fails. Every ordinary clone HAS that symref, which is why it looked correct.

The local read stays first (free); the remote is asked with `ls-remote --symref` only when it
fails. Unknown default branch still means inert — guessing `main` would forgive links in every repo
whose default is something else.

### A link pending on the default branch is not a broken link

A `blob/<default-branch>/<path>` URL to a file that exists in the working tree but has not reached
the default branch yet was classified `web_not_found` -> `exit 4`. In a blocking gate that is a
**deadlock**: the red blocks the merge that would make the link resolve. Measured in the field as
`not-found 6` on a branch that could not go green before merging and could not merge while red.

It now becomes `web_unverifiable` — the kind that already existed for "cannot tell from here" —
under **five** conditions, every one of which closes a way a permanently-dead link walked through
an earlier draft of this rung, green:

| condition | what it stops forgiving |
|---|---|
| the ref IS the default branch | `blob/<sha>/…`, a tag, a deleted branch — none of which any merge resolves |
| the slug is ASCII and matches `origin` | lookalike hosts; `casefold()` collapses U+212A to `k` |
| the path is confined to the tree | `blob/main//etc/hostname` escaped it entirely |
| the destination is a FILE | a directory is served under `/tree/`, so `/blob/<dir>` 404s forever |
| the destination is TRACKED | a gitignored artefact never reaches the default branch |

The base of the path join is `rev-parse --show-toplevel`, not the scanned directory: scanning a
subdirectory is supported, and there `<path>` (repo-relative) compared against the wrong tree.
Percent-encoded paths are decoded, so the rung is not silently inert on `%2B` and `%20`.

Unknown origin, non-GitHub remote or unknown default branch -> the rung is **inert** and behaviour
is exactly as before. A rung that changed behaviour when it could not identify the repo would be
worse than no rung.

⚠️ **Consumers pin by SHA**, so merging this changes nothing for them until each `darnlink-gate.json`
`ref` is bumped.

### Added

- **Feature 017 — the read axis can see a diagram's `click` destinations** (`--include-mermaid`,
  recipe key `include_mermaid`). **Off by default, per repository.** A `mermaid` diagram carries
  its links in `click` directives, which live inside a fenced block: feature 002 hides them from
  every axis, including the read-only ones, so they die silently when a file moves and no gate ever
  notices. Measured on a real tree, one folder reorganisation killed 14 of a diagram's destinations
  at once while everything stayed green.

  - **The write operations are unchanged.** FR-015 is not amended: repair and robustify still
    ignore every link inside every fence. This is the read axis only.
  - **These links are never anchored** — they are report-only. The anchor is a trailing HTML
    comment, and a diagram treats that as a node rather than a comment, so writing one would
    corrupt the drawing. A diagram destination that stays plain forever is a normal state.
  - **No new dependency.** The destination grammar was measured over 2,165 real directives and
    reduces to three single-line shapes, so it is recognised by a pure textual function; the
    fenced-region computation is reused rather than reimplemented.

