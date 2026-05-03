---
title: OWASP Noir Action
date: 2026-05-03 21:31:10 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v0.30.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/owasp-noir/noir** to version **v0.30.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## Action Summary

OWASP Noir is a security-focused GitHub Action that bridges the gap between static application security testing (SAST) and dynamic application security testing (DAST) by analyzing source code to generate a comprehensive, accurate inventory of application endpoints. It automates the detection of shadow APIs, deprecated endpoints, and hidden routes that are often missed by traditional tools, providing a single source of truth for attack surface discovery. Its key capabilities include AI-powered multi-language analysis, integration with DAST tools, and output in multiple formats for seamless DevSecOps pipeline integration.

## What's Changed

## v0.30.0

### Added
- Tree-sitter foundation: vendored grammars for Java, Kotlin, JavaScript, and Python
- Tree-sitter Query API for declarative detectors
- ImportGraph module: unified Java/Kotlin cross-file resolution, relative-import support, Python half
- 30+ new framework analyzers:
  - Java/Kotlin: JAX-RS, Quarkus, Dropwizard, Micronaut, Javalin, Spark Java, http4k, Kotlin Gateway
  - Node.js/JS/TS: Next.js, Hapi, Astro, SvelteKit, Remix, Fresh, Elysia, AdonisJS
  - Python: Bottle, Falcon, Starlette, aiohttp, Pyramid, Litestar
  - Ruby: Roda, Grape
  - PHP: Slim, Yii2, CodeIgniter
  - Go: Iris, Hertz
  - Rust: Poem
  - C++: Crow, Drogon
  - Dart: Dart Frog
- MCP endpoint tagger
- `--exclude-path` flag to filter files by glob
- Crystal 1.20 support
- RPM, DEB, APK, and AUR package release workflows
- Shared engine base classes for PHP, Ruby, Rust, Elixir, Swift, Crystal, Scala, JavaScript, Python, and Go analyzers
- Analyzer architecture documentation
- Unit tests for previously untested miniparsers, framework tagger, and base64 analyzer
- Korean localization for the docs site (sidebar, header, footer)

### Changed
- Migrated Spring, Armeria, Ktor, and Flask analyzers to tree-sitter; retired legacy Java/Kotlin miniparser/minilexer
- Migrated Python and Go route extraction to tree-sitter
- Switched builder to official `crystallang/crystal` (Alpine) image
- Consolidated duplicate `Endpoint` initializers
- AI provider docs and Ollama model token map updates (gemma3/4, llama4, phi4)
- Native ARM CI runners with cache optimization for release builds
- Removed Nix flake build from CI and dropped LLVM 21 overlay
- Removed cyclonedx-cr from development dependencies

### Performance
- Cached file contents in `CodeLocator` for analyzer reuse
- Parse-once Spring/Kotlin extractors with shared DTO sibling cache
- Skip already-matched detectors in the per-file detect loop
- Pruned ignored directories at walk time and deduped media stats
- Passive scan early-out per matcher
- Migrated unified_ai, example, fasthttp, phoenix, and Python analyzers to `file_map`
- Skip non-`.rb` files in Sinatra analyzer

### Fixed
- Bounded recursion depth in tree-walker extractors (security)
- Added boundary check to `ImportGraph.resolve_relative_import` (security)
- Express config-array mount pattern resolution
- JS miniparser: reject bare-identifier routes from `Promise.all`, accept wildcard/bare param routes
- Go miniparser: accept grouped routes without leading slash, guarantee separator on single-match group prefix
- OAS2 analyzer: merged duplicate form/formData branches and corrected `form` → `json` param-type mapping
- Non-deterministic endpoint dedup in Nitro and Nuxt.js analyzers
- Elevated regex compile failures from debug to warn in passive scan
- GraphQL analyzer now uses `Log.debug` instead of `STDERR.puts`
- Warn when falling back to default `max_tokens` for unknown models
- Corrected `SKIPPED_LEAVES` constant spelling in Fresh analyzer
- GHCR publish workflow: corrected Dockerfile path

## New Contributors
* @SEORY0 made their first contribution in https://github.com/owasp-noir/noir/pull/1227

## Contributors
Thanks to @tmchow, and @SEORY0 for the commits in this release!

> Special thanks to [@chrisdev](https://aur.archlinux.org/account/chrisdev) for originally packaging Noir on the AUR and granting co-maintainer access — starting with this release, Noir is officially supported on the Arch User Repository.

---

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v0.29.1...v0.30.0
