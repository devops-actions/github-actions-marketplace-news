---
title: vibecheck-ai-slop
date: 2026-08-06 06:09:11 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.19.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  vibecheck is an AI code quality tool that detects common code smells and security vulnerabilities in JavaScript/TypeScript projects. It provides 39 rules to catch errors, security issues, and stylistic problems in generated AI-generated code. The action runs locally, stays fast, and requires no configuration or API keys.
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## Action Summary

vibecheck is an AI code quality tool that detects common code smells and security vulnerabilities in JavaScript/TypeScript projects. It provides 39 rules to catch errors, security issues, and stylistic problems in generated AI-generated code. The action runs locally, stays fast, and requires no configuration or API keys.

## What's Changed

This closes the class of bug where vibecheck exits 0 and prints "no issues" while a real finding sits in a file it was supposed to scan.

**Existing builds may newly report findings.** That is the point of the release. If a run goes red after upgrading, it was passing on something it never looked at.

## `--staged` read the wrong file

It built its line map from `git diff --cached` and then scanned the **working tree**. Stage an `eval()`, overwrite the working copy with clean code, and the commit went through green — the pre-commit hook case, which is the entire reason the flag exists.

The index is now snapshotted once with `git write-tree`, and both the line map and the file contents come from that immutable tree, so they can never describe different states. Blobs are fetched by OID. Discovery moved to git too, since a file staged and then deleted from the working tree never came back from the file glob.

## Files the scanner could not read were reported as clean

"Couldn't look" and "looked, it's fine" were the same outcome. An unreadable file, a file over the 1MB cap, an explicitly named symlinked file, and a filename with a leading `!` or a backslash all exited 0 on a file containing `eval()`.

Skips are now reported with a reason and exit 2. Files you mean to skip belong in `ignore`, which stays silent.

## `--diff-stdin` trusted that your checkout matched the diff

It took line numbers from the diff and bytes from the checkout, and nothing checked the two described the same content. `gh pr diff 42 | vibecheck --diff-stdin .` against any other checkout looked for findings at line numbers that meant nothing. It now verifies through the blob hashes in the `index` headers and exits 2 on a mismatch.

## Config could hide files from the linter

`.gitattributes` marking a source file `binary`, a textconv filter, `diff.mnemonicPrefix` and `diff.noprefix` each made whole files or whole diffs parse as nothing changed.

## Also

- `--staged --fix` is refused: once findings describe the index there is nothing coherent for a fixer that writes the working tree to do.
- Unborn SHA-256 repositories work.
- Slop score counts baselined findings (from v1.18.0), so a baseline cannot send it to 100.

407 tests, up from 376. Three adversarial review rounds; the third caught two false positives the second introduced.

## Known limitations

Documented in the README. All need non-default git configuration: a `.gitattributes` clean filter shifts `--diff` line numbers (`--staged` is unaffected); a diff from another repository with sub-7-character `index` hashes cannot be verified; explicitly naming a staged symlink scans its referent; a modify-then-delete stream is not refused.

Separately, diff mode reports findings on changed lines, so a multiline finding whose anchor line did not change is not reported even when your edit created it.
