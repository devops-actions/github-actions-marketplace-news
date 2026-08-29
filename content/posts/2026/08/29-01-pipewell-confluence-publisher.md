---
title: pipewell-confluence-publisher
date: 2026-08-29 01:58:21 +00:00
tags:
  - pipewell
  - GitHub Actions
draft: false
repo: https://github.com/pipewell/confluence-publisher
marketplace: https://github.com/marketplace/actions/pipewell-confluence-publisher
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the synchronization of markdown files in a repository with Confluence pages, using a YAML manifest file to manage page IDs and handle auto-creation. It supports Markdown features like headings, lists, tables, and inline code. The action triggers on push events and performs a one-way sync, converting Markdown to Confluence Storage Format and managing page identity through the manifest. If conflicts occur with manual edits, it logs warnings or fails the build.
---


Version updated for **https://github.com/pipewell/confluence-publisher** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipewell-confluence-publisher) to find the latest changes.

## Action Summary

This GitHub Action automates the synchronization of markdown files in a repository with Confluence pages, using a YAML manifest file to manage page IDs and handle auto-creation. It supports Markdown features like headings, lists, tables, and inline code. The action triggers on push events and performs a one-way sync, converting Markdown to Confluence Storage Format and managing page identity through the manifest. If conflicts occur with manual edits, it logs warnings or fails the build.

## What's Changed

## Fixes

- **Manifest write-back is now per-page, not per-batch.** Previously, an unexpected error on one file in a batch (e.g. a non-UTF8 file) could crash the whole run before the manifest was saved, losing an earlier file's already-created `page_id` and causing a duplicate page on the next run. The manifest is now saved after every file.
- **`create_page` no longer retries on 5xx/429.** A lost response after Confluence had already created the page could previously cause a retried request to create a second, duplicate page. Page creation now fails fast instead of silently duplicating.
- **`space_id` is validated at manifest load time.** A page with no resolvable `space_id` (its own override or `defaults.space_id`) now fails clearly before any API calls, instead of a confusing error deep inside a network request.
- **Ordered list `start=` is preserved.** `3. foo` / `4. bar` no longer silently renders as `1, 2` in Confluence.
- **Table column alignment is preserved.** `:---`, `---:`, and `:---:` now carry through to Confluence instead of always rendering left-aligned.
- **Raw HTML now actually raises a build error, as documented.** ⚠️ Potentially build-affecting: `HtmlSpan`/`HtmlBlock` were never registered with the Markdown parser, so raw HTML previously fell through silently as escaped literal text instead of failing the build per the README's documented behaviour. If your docs contain raw HTML tags, this release will now correctly fail those builds -- convert them to Markdown syntax.
- **Manifest comments now survive automated write-back.** `confluence-manifest.yaml` is written via a comment-preserving YAML round-trip (`ruamel.yaml`, new dependency) instead of plain PyYAML, which silently deleted all comments on every automated commit.

## Docs

- `docs/MANIFEST_SPEC.md` corrected: `space_id` is always a Confluence space key, never the numeric Cloud space ID.

## Also in this release (since v1.0.2)

- `confluence-publisher@v1` now resolves correctly (major tag moved forward).

