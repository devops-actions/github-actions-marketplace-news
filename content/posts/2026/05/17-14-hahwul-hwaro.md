---
title: Hwaro Deploy to Pages
date: 2026-05-17 14:05:32 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.14.0
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.14.0**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and high-performance static site generator designed to convert Markdown content with front matter and Jinja2-compatible templates into fully functional static websites. It automates tasks such as content management, SEO optimization, and website deployment, while offering features like incremental build caching, live reload during development, and support for advanced templating and content customization. With built-in tools for responsive image processing, multilingual support, and platform-specific deployment configurations, Hwaro simplifies the creation and maintenance of modern static websites.

## What's Changed

## What's Changed
## v0.14.0

### Behavior changes
- `hwaro new <path>.md` now honors the path the user typed instead of silently rerouting bare filenames to `content/drafts/`. `hwaro new foo.md` lands at `content/foo.md`; explicit `hwaro new drafts/foo.md` still drops into drafts and marks the file as draft.
- `hwaro new` refuses to run outside a Hwaro project (missing `config.toml`) with `HWARO_E_CONFIG`, matching `hwaro build`'s contract.
- `hwaro build --drafts` no longer includes drafts in `sitemap.xml`, matching the existing behavior of feeds, llms.txt, and the search index.

### Fixed
- `tool list drafts`: column header no longer renders `TitlePath` glued together when the only draft has a short title.
- `tool convert`: round-tripping front matter (TOML↔YAML) no longer strips the blank line between the closing delimiter and the body. Also doesn't invent one when none existed.
- `tool export jekyll`: produce a Jekyll-conventional layout. Dated content lands flat in `_posts/<YYYY-MM-DD>-<slug>.md` (subdirectories used to nest under `_posts/posts/…`, which Jekyll reads as a category hint). Non-dated content like `about.md` / `index.md` / `archives.md` stays at the export root as regular pages instead of being buried in `_posts/`.
- `Logger.progress` no longer emits `\r`-overwriting animation when stdout isn't a TTY (CI logs, pipes, file redirects). Per-step output is suppressed and a single completion line is emitted, so logs stay readable.
- `doctor`: stop reporting niche optional sections (`[pwa]`, `[amp]`, `[build]`, etc.) as missing — `doctor --fix` in its minimal mode wouldn't add them anyway, so the advice was a dead end. Freshly-init'd `bare` sites are now doctor-clean.
- `book` scaffold: emit `[related]` commented (book ships no `[[taxonomies]]`, so the default enabled snippet referenced an undefined taxonomy and tripped doctor on a fresh init).
- All shipped scaffolds (`simple`/`bare`/`blog[-dark]`/`docs[-dark]`/`book[-dark]`) now populate `description` in scaffolded content so freshly-init'd sites pass `tool validate` cleanly.

### Changed
- Build summary: `Generated N pages` → `Generated N content pages` (taxonomy/archive/section index files weren't in the count, and the bare wording misled users diffing against `find public -name '*.html'`).
- `hwaro build` now surfaces a one-line hint when a build produces zero content pages, so empty sites don't deploy silently.
- `hwaro init` now prints a `Tip: update base_url in config.toml before deploying` line so the localhost default doesn't ship unchanged. The inconsistent "Added N optional config section(s)" line was demoted to debug.
- `--env <name>`: the warning when `config.<name>.toml` is missing now names both the env and the file we looked for, and explains the recovery (create the file or fix the typo). Catches the common "shipped localhost build to prod because `--env prdo`" foot-gun.
- `hwaro build` now warns once per page when Hugo-style `{{</* … */>}}` shortcode syntax is found in content. Hwaro uses Crinja syntax (`{% name(args) %}body{% end %}`); unconverted Hugo shortcodes would otherwise reach Markdown and ship as HTML-escaped literals (`{{&lt; alert &gt;}}`) in the rendered page.
- `[markdown] math = true` and `mermaid = true` now actually render math/diagrams in the browser. Hwaro emits the right wrapper markup (`<span class="math math-*">` for math, `<div class="mermaid">` for diagrams) but didn't load the renderer, so users saw literal TeX (`\(E=mc^2\)`) or DOT source. The default header partials in `simple`/`blog[-dark]`/`docs[-dark]`/`book[-dark]` scaffolds now pull in KaTeX (or MathJax, per `math_engine`) and Mermaid.js from a CDN when the corresponding flag is on. Templates can opt out via `{{ math_tags }}` / `{{ mermaid_tags }}`.
- Importers (Hugo, Jekyll, Obsidian, Hexo, Eleventy, Astro, Notion, WordPress) now strip the imported body's leading `# Title` when it matches the front-matter title, so imported pages don't render two `<h1>` elements (the Hwaro page template renders one from `page.title` already). Same rationale as the existing `hwaro new` behavior (gh#525).
- `tool import obsidian` now resolves `[[Wiki-Link]]`, `[[Wiki-Link|alias]]`, and `[[Wiki-Link#anchor]]` to absolute site URLs (`/posts/note-two/#section`) by pre-scanning the vault for filenames, titles, and `aliases:`. Previously the importer produced `[Note](note)`, which the browser resolved relative to the current page and 404'd. Inline-tag stripping no longer eats URL fragments either.

### Performance
- Multi-threaded build is now enabled by default. All release/dev/CI build paths compile with Crystal's `-Dpreview_mt`, so `hwaro build` actually uses multiple OS threads instead of running every fiber on one core. On a 1000-page site with `CRYSTAL_WORKERS=8` this is roughly **~30% wall-clock faster** (0.39s → 0.28s on an M1 Pro; CPU utilization jumps from ~1 core to ~3 cores). Smaller sites are mostly startup-bound and see little change. Tune the worker count via the `CRYSTAL_WORKERS` env var (default: 4). Spec suite runs under MT in CI to catch fiber-race regressions.
- New `Hwaro::Utils::FileSafe.mkdir_p` wrapper replaces `FileUtils.mkdir_p` in the build hot path. Crystal's stdlib `Dir.mkdir_p` is check-then-create, which races under MT (two workers can both pass `Dir.exists?` and then both `mkdir`, the loser getting `File::AlreadyExistsError`). The wrapper retries once and then verifies the directory exists, which is the post-condition `mkdir -p` semantics already promise.
- Shortcode template cache and the missing-shortcode warning Set are now mutex-protected. Both had check-then-write patterns that race under MT — a shared cache resize during concurrent writes could corrupt the underlying Hash.
- `Hwaro::Models::MarkdownConfig#math_tags` and `#mermaid_tags` plus the matching scaffold header partials skip output entirely when the feature flag is off (cheap fast path that avoids string concat per build).
- `Hwaro::Utils::TextUtils.escape_xml` now short-circuits when no XML-special bytes are present in the input — sitemap/feed/llms.txt URL escaping skips a `String.build` allocation for the common case where escaping isn't needed.
- `related_posts` Crinja value lookup skips the cache mutex entirely when the page has no related posts. The cache key is per-page (unique), so for sites without `[related]` enabled the cache could never hit anyway — the lock acquire was pure overhead.

----
**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.13.1...v0.14.0
