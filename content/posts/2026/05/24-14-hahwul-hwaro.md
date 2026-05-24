---
title: Hwaro Deploy to Pages
date: 2026-05-24 14:17:43 +00:00
tags:
  - hahwul
  - GitHub Actions
draft: false
repo: https://github.com/hahwul/hwaro
marketplace: https://github.com/marketplace/actions/hwaro-deploy-to-pages
version: v0.14.2
dependentsNumber: "9"
actionType: Composite
---


Version updated for **https://github.com/hahwul/hwaro** to version **v0.14.2**.

- This action is used across all versions by **9** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hwaro-deploy-to-pages) to find the latest changes.

## Action Summary

Hwaro is a lightweight and high-performance static site generator written in Crystal that automates the creation of static websites from Markdown content, templates, and various data formats. It solves the challenges of building and managing complex static sites by providing features like parallel builds, incremental caching, live-reload development server, SEO optimization, responsive image processing, and multi-platform deployment configurations. Key capabilities include advanced content management, templating, custom theming, and support for multilingual sites, making it a powerful tool for developers and content creators.

## What's Changed

## v0.14.2

### Fixed
- Security: the GitHub Action no longer leaks the workflow token into the `hwaro build` environment. The composite action previously defaulted the `token` input to `${{ github.token }}` and the Docker entrypoint exported it as `GITHUB_TOKEN` for the duration of the build, so user-defined pre/post-build hooks could read the workflow token from environment-driven site configuration even on `build_only` runs. The action now only falls back to `github.token` when the run actually deploys (`build_only != 'true'`), masks the value, and the entrypoint scopes the credential to a local `DEPLOY_TOKEN` used only by the OG cache restore and final `git push`; `GITHUB_TOKEN` / `INPUT_TOKEN` are unset before `hwaro build` runs (gh#550).
- Security: `redirect_to` pages no longer escape the configured output directory. A content file whose front-matter `path` traversed upward (e.g. `../../poc`) bypassed the `PathUtils` / `OutputGuard` normalization that regular pages go through and could plant `index.html` outside `output_dir`. The redirect writer now routes through the same `sanitize_path` + `safe_output_path` guard used by `get_output_path` and skips writing entirely if the resolved path is still outside `output_dir` (gh#549).
- Multi-threaded builds: `Hwaro::Utils::FileSafe.mkdir_p` no longer surfaces `Unable to create directory: '...': File exists` when parallel render workers race on shared parent directories (`/ko/development/page1`, `/ko/development/page2`, …). The previous wrapper deferred to Crystal's `Dir.mkdir_p` with a single whole-call retry, but the retry could re-race on a *different* shared parent and the post-hoc `Dir.exists?(leaf)` check returned false because the walk never reached the leaf. The wrapper now walks components itself and absorbs `EEXIST` per component; a 50×64-fiber MT stress test goes from 129 failures to 0.

### Changed
- `hwaro build --minify` actually shrinks HTML now (~-12% on the docs site, 1223 KB → 1077 KB). The flag was deliberately conservative after a past revert — only comments, trailing whitespace, and blank lines were touched — because aggressive minification broke pages. Two longstanding bugs are addressed directly: (1) the protected-tag regex used `<(pre|script|...)>...</(pre|script|...)>` alternation that did not enforce opener/closer pairing, so a `<pre>` could pair with a `</script>` if both appeared on the page; each whitespace-sensitive tag now runs in its own pass, with `<style>` processed before `<script>` so a literal `<script>` string inside CSS can't false-pair with a real `</script>`. (2) Indiscriminate whitespace stripping removed the visible gap between adjacent inline siblings; collapse now classifies both neighbours against an HTML block-level list, so inter-tag whitespace is stripped whenever *either* neighbour is block-level while inline neighbours keep a single space (`<a>x</a> <a>y</a>` stays visually identical). Protected-block placeholders carry their original display class, so a sealed `<pre>` next to a `<div>` is also stripped while a `<code>` between two inline siblings still keeps a space on each side. Runs of whitespace inside tag openings shrink via a byte-level, quote-aware scan (`<a   href="x"   >` → `<a href="x">`), preserving quoted values that contain `>` (`title="x > y"`) and UTF-8 in `alt="안녕 세계"`. Protected blocks cover `<pre>`, `<code>`, `<script>`, `<style>`, `<svg>`, `<math>`, `<textarea>`, and `<noscript>` (gh#411).

### Performance
- OG image generation: pre-render the config-only background fill, optional background-image blit, overlay, style pattern, and top accent bar once into a ~3MB base layer buffer and `memcpy` it into each per-page buffer; only text, logo, and the bottom accent bar are layered per page. The per-page loop is split into a serial cache-check pass and a parallel render pass dispatched through the existing `Hwaro::Core::Build::Parallel` worker pool (the stb bindings have no global state and each worker owns its own pixel buffer and output file). Output is bit-identical to the previous renderer. Measured on a 200-page PNG site: `style="default"` 6056ms → 1345ms (~4.5x), `style="gradient"` 6151ms → 932ms (~6.6x).

**Full Changelog**: https://github.com/hahwul/hwaro/compare/v0.14.1...v0.14.2
