---
title: OWASP Noir Action
date: 2026-06-15 23:25:49 +00:00
tags:
  - owasp-noir
  - GitHub Actions
draft: false
repo: https://github.com/owasp-noir/noir
marketplace: https://github.com/marketplace/actions/owasp-noir-action
version: v1.1.0
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/owasp-noir/noir** to version **v1.1.0**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/owasp-noir-action) to find the latest changes.

## What's Changed

## v1.1.0

Noir v1.1.0 is a large coverage and accuracy release. It introduces mobile deep-link analysis, Zig support, and a broad set of new framework, tagger, and specification analyzers, alongside a codebase-wide accuracy sweep and significant performance work.

### Added
- **Mobile analyzer**: Android (manifest) and iOS (Info.plist/entitlements) deep-link entry points, linked to handler code with callees, input params, and AI context. Includes universal links (assetlinks.json / AASA), Jetpack Navigation graphs, exported components (explicit-intent surfaces), and ContentProviders (`content://` IPC).
- **Zig support**: Jetzig, Zap, httpz, and Tokamak framework analyzers.
- New framework analyzers:
  - C++: oat++, cpp-httplib
  - Go: go-restful
  - Lua: lor (OpenResty)
  - Dart: GetServer, Alfred, Angel3
  - PHP: Mautic, Laminas, ThinkPHP
  - Perl: Catalyst, Dancer2
  - Clojure: Pedestal
  - Java: Apache Wicket, Apache Struts 2
  - C#: ASP.NET Core Minimal API
- New specification analyzers: Kamal (`deploy.yml`), Apache httpd, nginx, and Kubernetes Ingress.
- OAS2/OAS3 security-scheme parameter extraction (API key, OAuth2, and HTTP auth schemes emitted as endpoint parameters).
- New endpoint taggers: `pii`, `admin`, `payment`, `webhook`, `crypto`, `debug`, `api_docs`, and `account_recovery`.
- New framework security taggers for Rails, Spring, Go, and Rust (CSRF, CORS, rate-limit, security-headers, and more).
- `-f adb` and `-f simctl` output formats to launch Android and iOS mobile entry points directly.
- Structural miniparsers for PHP (`PhpLexer`), C# (`CSharpLexer`), and Scala (`ScalaLexer`) to cut false positives/negatives in code/string-aware scanning.
- Added `claude-opus-4-8`, `claude-fable-5`, `claude-mythos-5`, and `grok-build-0.1` to the AI provider token map.

### Changed
- Redesigned the HTML report (`-f html`) as a self-contained monochrome theme with light/dark toggle, collapsible cards, and search/method/severity filters.
- Refactored the AI-context augmentor monolith into focused modules.

### Performance
- Eliminated PCRE2/interpolated-regex recompilation across Python, JS/TS, JVM, Scala, C++, Ruby, Go, Elixir, and security-tagger analyzers, yielding large speedups on big projects (e.g. Elixir/Blockscout 32s → 1.7s).
- Improved monorepo multi-base-path scanning (path-boundary scoping and cache-first reads).
- Reduced per-file work in the PHP, Kotlin/Spring, and Python analyzers.
- Removed quadratic (O(n²)) scans in the GraphQL SDL detector and type-definition extractor.

### Analyzer Accuracy
- Codebase-wide FP/FN, parameter, and callee accuracy sweep validated against real OSS applications across nearly every supported language: Java/Kotlin (Spring, Armeria, Play, Spark, JSP, Struts), JavaScript/TypeScript (Express, Hono, NestJS, Next.js, Koa, tRPC, TanStack Router, SvelteKit, Remix, and more), Python (Flask, FastAPI, Django, Tornado, Pyramid, Starlette, Sanic, Litestar), Ruby (Rails, Sinatra, Grape, Hanami, Roda), PHP (Laravel, CakePHP, Symfony, Laminas), Go (Gin, Echo, Chi, mux, GoFrame, go-zero, PocketBase), Rust (Actix, Axum, Warp, Salvo, Poem, Rocket, Loco, RWF, Gotham, Tide), Swift (Vapor, Hummingbird, Kitura), Scala (Play, Akka, http4s, tapir, ZIO HTTP, Scalatra), Dart, Crystal, Clojure, Lua, Perl, Haskell, F#, C++, and C#.
- Standardized prefix composition (nested groups, scopes, mounts, and cross-file/cross-function route registration) across many frameworks.
- Improved tagger precision/recall, including `oauth`, `webhook`, `account_recovery`, `api_docs`, and `debug`.
- Improved specification-format coverage and precision across OAS/Swagger, GraphQL SDL (operation documents and `.gql`), RAML (`uses:` libraries, non-API fragment skipping, optional/pattern params, annotated `baseUri`), WSDL (`wsdl:import` split definitions, RPC scalar message parts), gRPC (cross-import and fully-qualified request messages, `additional_bindings` and custom-verb HTTP transcoding), and Postman/Insomnia (auth schemes and raw-string bodies).

### Fixed
- Hardened source scanning against a crash and several O(n²) DoS hangs on large or adversarial inputs.
- Fixed a wide class of byte-vs-char index bugs causing crashes, callee corruption, and wrong line numbers across the Rust, Java, Python, PHP, Go, C++, Dart, Clojure, Haskell, and Ruby analyzers.
- Fixed header truncation, `.http` rewrite, fiber leak, config probe coercion, OpenRouter limit, and TOML/diff/Postman output edge cases.
- Reduced passive-scan secret false positives — suppressed matches on variable names merely referenced in comments, prose, or dependency lists; env-helper reads (`env('X')`, `process.env`); CI and shell interpolation; empty values; and documentation placeholders (`your-access-key`, `<token>`).
- Hardened specification parsing against silently dropped documents — recover OAS specs that libyaml rejects over stray tabs, ignore commented-out gRPC declarations, and require a real `service` block in the gRPC detector to cut false-positive detections.

## New Contributors
* @chinmaypant21 made their first contribution in https://github.com/owasp-noir/noir/pull/1772
* @gitrlawton made their first contribution in https://github.com/owasp-noir/noir/pull/2101

**Full Changelog**: https://github.com/owasp-noir/noir/compare/v1.0.0...v1.1.0
