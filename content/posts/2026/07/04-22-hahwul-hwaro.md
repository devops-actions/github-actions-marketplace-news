---
title: Hwaro Deploy to Pages
date: 2026-07-04 22:01:47 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.17.0
dependentsNumber: "10"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.17.0**.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## What's Changed

## v0.17.0

### Added
- `[outputs]` config: extra per-page/section output formats (`json`, `txt`, `xml`, `csv`) from user `templates/page.<fmt>.jinja` / `section.<fmt>.jinja`, overridable per page via a front-matter `outputs` key (cascades), exposed as `{{ alternate_output_tags }}`, cache-aware under `--cache`
- Markdown render hooks: `templates/hooks/render-{link,image,heading,codeblock}.html` override element rendering (Hugo/Zola-style), no-op when absent; existing `@/`/shortcode/`srcset`/anchor resolvers still run. See [Render Hooks](https://hwaro.hahwul.com/templates/render-hooks/)
- Fenced code block options after the language (`{linenos=true, hl_lines="2-4 7", linenostart=5}`) plus `[highlight] line_numbers`; `mode = "server"` bakes the result at build time, `mode = "client"` emits `data-*` attributes
- Opt-in inline markup behind `[markdown]` flags (off by default): `ins` (`++`), `mark` (`==`), `sub` (`~`), `sup` (`^`)
- Generalized `{#id .class key=val}` attribute blocks on headings and inline images (`[markdown] attributes`)
- First-class menu system (Hugo-style): `[[menus.<name>]]`, per-language overrides, front-matter registration; exposed via `site.menus`/`get_menu()` with an `active_path` filter; `doctor` validates undefined parents and menu names
- `hwaro init --wizard` and `hwaro new` (no `<path>`) open interactive terminal wizards; archetypes gain a `{{ description }}` placeholder
- Scaffold design tokens ("Hwaro Ember" `:root` with `light-dark()` pairs, fluid type/space scales) and a header theme switcher (auto → light → dark, persisted, flash-free) across every styled scaffold
- `just scaffold-previews`: regenerate docs scaffold screenshots headlessly

### Changed
- `hwaro init` initializes immediately with defaults; `--wizard` opens the interactive flow (removed `-y`/`--yes`)
- Terminal output: the remaining commands (`list`/`stats`/`validate`/`check-links`/`deploy`/`export`/`import`/`unused-assets`/`convert`/`platform`/`agents-md`) adopt the ember language and shared glyph set; machine surfaces (`--json`, `serve` ready line, `--version`, exit codes) are byte-for-byte unchanged
- Scaffold design pass across docs/blog/book (~1,600 lines of duplicated dark CSS deleted)

### Removed
- The `blog-dark`, `docs-dark`, and `book-dark` scaffolds — scaffolds follow the OS scheme and ship a manual switcher; pin one permanently with `:root { color-scheme: dark; }` in `css/style.css`

### Fixed
- macOS release binaries shipped as portable `.tar.gz` archives with bundled OpenSSL, dropping the hardcoded Homebrew `openssl@3` dependency
- Shortcodes: Jinja control tags (`{% if %}`, `{% set %}`) in block bodies no longer desync the nesting scan; mixed positional + named args no longer drop the positional value
- PWA service worker: offline→root navigation fallback restored across all three cache strategies
- `llms-full.txt` honors `in_search_index = false`
- Internal `@/` links with a query string or anchor no longer double-escape `&`
- `hwaro serve`: `authors` front-matter edits update the taxonomy incrementally; equal-weight sections keep a stable prev/next order
- `--cache`: deleting a page regenerates the sitemap/feeds/search index even when no surviving page re-rendered
- Parallel builds surface sitemap/feed/search failures instead of exiting 0; closed section-list and shortcode-init fiber-safety gaps under `-Dpreview_mt`
- AMP: `<img>` with `>` inside a quoted attribute value converts without corrupting the markup

### Performance
- Flat N-page sites avoid an O(N²) render cost — section-page arrays and SEO/OG/canonical/JSON-LD strings are built only when the template's static closure can reach them
- Parallel render workers read prewarmed Crinja caches lock-free (`-Dpreview_mt`); taxonomy generation reuses the running Builder instead of a second O(N) Crinja pass
- Markdown skips footnote/definition-list passes when the markers are absent; builds no longer run the markdown pipeline twice (dropped the legacy hook pre-pass)
- JS minification is no longer O(n²) on non-ASCII files (128KB CJK bundle: 59.5s → 9.6ms); HTML minifier compiles protected-tag patterns once at startup
- `--cache`: touched-but-identical files re-hashed once, page-bundle assets no longer recopied, lock-free hit/miss counters; `serve` incremental rebuilds render the affected set in parallel
- 404 page reuses render-phase template vars; `--stream` builds per-worker engines once per run; `load_data()` memoized per file mtime

---

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.16.0...v0.17.0
