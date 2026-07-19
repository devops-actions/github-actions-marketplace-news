---
title: OWASP Noir Action
date: 2026-07-19 22:09:20 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v1.2.0
dependentsNumber: "4"
actionType: Composite
actionSummary: |
  This GitHub Action leverages the Noir SAST tool to identify and document all exposed endpoints in code, including parameters, headers, cookies, and the source files behind them. It supports various languages and frameworks, provides AI context for LLM-based SAST, and integrates with DAST tools like ZAP, Burp Suite, and Caido. The action is designed to be integrated into CI/CD pipelines and can output results in multiple formats.
---


Version updated for **https://github.com/owasp-noir/noir** to version **v1.2.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

This GitHub Action leverages the Noir SAST tool to identify and document all exposed endpoints in code, including parameters, headers, cookies, and the source files behind them. It supports various languages and frameworks, provides AI context for LLM-based SAST, and integrates with DAST tools like ZAP, Burp Suite, and Caido. The action is designed to be integrated into CI/CD pipelines and can output results in multiple formats.

## What's Changed

## v1.2.0

Noir v1.2.0 broadens attack-surface coverage beyond web frameworks — CLI applications, built-in HTTP servers, schema-generated platforms, and enterprise legacy stacks — and lands a codebase-wide performance sweep across every supported language.

### Added
- **CLI application endpoints**: detect command-line attack surface (argv, flags, environment variables) as endpoints across 17 languages and 40+ CLI libraries (Cobra, Click, clap, Commander, Thor, picocli, Spectre.Console, and more).
- **Built-in web server analyzers**: stdlib HTTP servers for Go (`net/http`), Python (`http.server`), Node (`node:http`), Java (`com.sun.net.httpserver`), C# (`HttpListener`), Ruby (WEBrick), Crystal (`HTTP::Server`), Dart (`dart:io`), and Zig (`std.http.Server`).
- **Schema-generated API analyzers**: Strapi, Directus, Payload CMS, Supabase/PostgREST, Hasura, and Appwrite — platforms that derive their HTTP surface from schema files rather than source-level routes, with attribute definitions expanded into params.
- **Enterprise legacy stacks**: CFML/ColdFusion, Classic ASP, and ASP.NET WebForms, plus the CFML frameworks Taffy, ColdBox, Wheels, and FW/1.
- **BEAM languages**: Erlang (Cowboy, Elli) and Gleam (Wisp).
- New PHP CMS/platform analyzers: WordPress (REST API, admin-ajax, admin-post), Drupal (`*.routing.yml`), and Magento (Web API + MVC controller routes).
- New framework analyzers: Django Ninja (Python) and Plumber (R).
- **Terraform / OpenTofu analyzer**: AWS API Gateway v1/v2 routes from `.tf` HCL and `.tf.json`, resolved module-wide.
- Realtime/event endpoint detection for SignalR, Socket.IO, Phoenix Channels, and Action Cable.
- New specification analyzers: OpenRPC service descriptions, and `.http` / `.rest` request files (VS Code REST Client, JetBrains HTTP Client).
- Machine-readable output for `noir list` and documented `noir cache purge`.
- Added Claude Sonnet 5, Grok 4.5, and GPT-5.6 to the AI provider token map.

### Changed
- Redesigned the HTML report (`-f html`) as a dark-tech theme with semantic method/severity colors, path grouping, table view, and copy URL/curl actions.
- Rebuilt the documentation site around the project's own film-noir artwork.

### Performance
- Codebase-wide analyzer and detector sweep across all 24 language groups: eliminated O(n²) non-ASCII character scans, collapsed chained `includes?` gates into precompiled `Regex.union`, memoized interpolated regexes, and routed file reads through the content cache. Large wins on real projects (e.g. F#/Giraffe 31.7s → 1.1s, Servant 101s → 4ms).
- Guarded specification detectors before YAML/JSON parsing and memoized `applicable?` by extension/basename.
- Memoized tree-sitter extraction results and consolidated multi-pass pre-scans into single-parse surfaces.

### Fixed
- Fixed a wide class of byte-vs-char offset bugs on non-ASCII sources, plus allocation-free line counting.
- Robustness and correctness fixes across the `noir config`, `rules`, `cache`, `list`, and completion subcommands.
- Fidelity and render fixes for the Mermaid mindmap output format.
- Made endpoint ordering deterministic across machines and ran the log spinner as a fiber instead of a bare thread.
- macOS release binaries now ship as portable `.tar.gz` archives with bundled OpenSSL, instead of a bare executable linked against Homebrew `openssl@1.1` that failed to launch on clean machines.
- GitHub Action entrypoint CI coverage, robust image-tag resolution, and injection-safe examples.
- Improved Java, Go, Python, Ruby, Kotlin, Rust (Axum), and tRPC v9 route accuracy.

## New Contributors
* @gords2 made their first contribution in https://github.com/owasp-noir/noir/pull/2175
* @c0d33ngr made their first contribution in https://github.com/owasp-noir/noir/pull/2199
* @ahfoysal made their first contribution in https://github.com/owasp-noir/noir/pull/2247

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v1.1.0...v1.2.0
