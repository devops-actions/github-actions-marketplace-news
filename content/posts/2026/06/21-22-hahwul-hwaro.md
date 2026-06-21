---
title: Hwaro Deploy to Pages
date: 2026-06-21 22:28:08 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.16.0
dependentsNumber: "10"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.16.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## What's Changed

## v0.16.0

### Added
- Section `[cascade]` front matter: defaults inherited by descendant pages and sections (Hugo-style); nearer cascades and a page's own keys win, `extra`/`taxonomies` merge per key, and cached/serve builds invalidate affected descendants
- `[highlight] mode = "server"`: build-time syntax highlighting via Tartrazine (250+ languages, pure Crystal). Emits Highlight.js-compatible classes (existing hljs themes keep working) and ships zero JavaScript; default stays `"client"`
- Template dependency tracking: editing a template only rebuilds the pages that render it, in `--cache` builds and `hwaro serve`; opt out with `[build] template_deps = false`
- `page.taxonomies` template variable and Zola-style `[taxonomies]` front-matter tables
- OG styles `terminal`, `bauhaus`, `halftone`, plus upgraded `artistic`/`hero`/`surreal` renders
- `hwaro build --jobs N`: cap parallel render concurrency (#655)

### Changed
- Terminal output redesign ("ember" identity): `build`/`serve`/`init`/`new`/`doctor` share one warm visual language — a live status line collapses into an aligned receipt ending on a single ember outcome line; humanized durations. Machine output (`--json`, the `serve` ready line, `--quiet`, `NO_COLOR`/non-TTY) is byte-for-byte unchanged; scripts grepping human stdout should switch to `--json` (#637)
- `init`/`new` scaffolds unified under the ember identity (#624)
- Template errors report `templates/<file>:line:col` with a caret-marked source excerpt instead of an anonymous `<string>` template
- Docs redesign: collapsible sidebar, header search trigger, command-palette

### Fixed
- Security: hardened importers (path traversal, entity DoS), dev-server CORS, and redirect/report sinks (#643); closed symlink-exfil, WS-origin, and `rm_rf` gaps (#623)
- Dogfood sweeps: 40+ correctness fixes across feeds, markdown, SEO, AMP, PWA, scaffolds, permalinks, and tooling (#640, #641); `--cache` listing-page staleness (#642)
- Friends audit: llms/search/feed discovery surfaces, taxonomy SEO registration, feed absolutization, and CJK-capable OG fonts (#648, #650, #651, #652)
- Markdown: fence tracking, pass ordering, code-span/table-cell corruption, math-span emphasis, unquoted YAML dates, and table code-span pipes (#638)
- Taxonomies: `get_taxonomy` slugs match written pages for drafts and non-default-language terms; closed the authors-taxonomy gap
- `slugify` lowercases uppercase Unicode letters (#639); OG cache invalidates when logo/background file contents change; `get_section().pages` honors the section's `sort_by`; `hwaro serve` removes orphaned output when a watched source is deleted
- `tool export jekyll` preserves the `authors` field (#645); `tool unused-assets --delete` honored in JSON mode plus a new `--force` (#647); Astro singular `author` mapped to `authors` on import (#646)
- Latent-bug and stability audits across subsystems: 10+ edge-case fixes (parse-time, falsy bools, minifier overflow, XML CDATA, etc.) (#620, #653)

### Performance
- Render: per-page template hash computed once, O(1) current-page exclusion in section lists, cache bookkeeping skipped when caching is off
- Feeds/search: memoized fallback markdown renders shared between the two surfaces

## New Contributors
* @anishTechie made their first contribution in https://github.com/hahwul/hwaro/pull/634
* @KaustAbhinand made their first contribution in https://github.com/hahwul/hwaro/pull/635
* @SAY-5 made their first contribution in https://github.com/hahwul/hwaro/pull/639

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.15.3...v0.16.0
