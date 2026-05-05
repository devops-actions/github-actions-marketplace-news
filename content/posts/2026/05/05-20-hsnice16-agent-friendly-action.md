---
title: Agent-friendly score diff
date: 2026-05-05 20:54:58 +00:00
tags:
  - hsnice16
  - GitHub Actions
draft: false
repo: https://github.com/hsnice16/agent-friendly-action
marketplace: https://github.com/marketplace/actions/agent-friendly-score-diff
version: v0.1.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hsnice16/agent-friendly-action** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-friendly-score-diff) to find the latest changes.

## Action Summary

The **agent-friendly-action** GitHub Action evaluates pull requests by calculating and commenting on the delta in the Agent Friendly Code score between the base and head commits, including a breakdown of contributing factors. It automates the process of assessing code changes for compatibility and optimization with AI agents, providing actionable feedback directly within PRs. The action is self-contained, runs entirely within CI without external dependencies, and supports opt-in usage via repository secrets.

## What's Changed

## [0.1.2] - 2026-05-05

### Changed

- Six static signals now recognise more language-ecosystem conventions, so repos correctly scaffolded in non-Node idioms (JVM, .NET, Swift, Ruby, Elixir, Haskell, OCaml, Erlang, Crystal, Zig, Dart, PHP, Lua, Clojure, Nim, C/C++) no longer score low for the ecosystem-equivalent setup:
  - `contributing` — accepts `CONTRIBUTING.rst` (Python/Sphinx, e.g. pytest/Django) and `CONTRIBUTING.adoc` (AsciiDoc / JVM), in root, `.github/`, and `docs/`.
  - `dev_env` — accepts `tox.ini` and `noxfile.py` (Python), `mvnw` / `gradlew` (JVM build wrappers), `bin/setup` (Ruby/Rails), and `compose.yaml` (the Docker-preferred canonical name, alongside the existing `compose.yml` / `docker-compose.yml`).
  - `deps_manifest` — accepts `mix.exs` (Elixir), `Package.swift` (Swift), `build.gradle.kts` (Kotlin DSL), `build.sbt` (Scala), `deps.edn` / `project.clj` (Clojure), `stack.yaml` + root `*.cabal` (Haskell), `dune-project` (OCaml), `rebar.config` (Erlang), `shard.yml` (Crystal), `build.zig` (Zig), `CMakeLists.txt` / `meson.build` / `conanfile.txt`/`.py` / `vcpkg.json` (C/C++), root-level `*.csproj` / `*.fsproj` / `*.vbproj` / `*.sln` (.NET), and root `*.nimble` (Nim). `global.json` is intentionally **not** counted here — it pins the .NET SDK version, not dependencies (real .NET deps live in `*.csproj`).
  - `type_config` — typed-by-default credit extended to JVM (`pom.xml` / `build.gradle[.kts]`), Scala (`build.sbt`), Swift (`Package.swift`), C# (`global.json` or root `*.csproj` / `.sln`), OCaml (`dune-project`), Haskell (`stack.yaml` / root `*.cabal`), and Zig (`build.zig`), in addition to the existing Rust/Go credit.
  - `linter` — accepts `.rubocop.yml` / `.standard.yml` (Ruby), `.swiftlint.yml` / `.swiftformat` / `.swift-format` (Swift, both Nick Lockwood's and Apple's tools), `detekt.yml` + `config/detekt/detekt.yml` / `.scalafmt.conf` (JVM), `phpstan.neon[.dist]` / `psalm.xml[.dist]` / `.php-cs-fixer.dist.php` (PHP), `.credo.exs` / `.formatter.exs` (Elixir), `stylua.toml` (Lua), `checkstyle.xml` + `config/checkstyle/checkstyle.xml` (Java, including the canonical Gradle plugin path), `analysis_options.yaml` (Dart/Flutter — the canonical lint config), `.clang-format` / `.clang-tidy` (C/C++), and `.clj-kondo/config.edn` (Clojure). Intentionally **not** counted: `.editorconfig` (formatting baseline, no feedback loop) and `.ktlint` (not a real config file — ktlint reads `.editorconfig`).
  - `tests` — adds `Tests/` (Swift convention, case-sensitive filesystems) and `src/test/` (Java/Kotlin) to the directory list. File regex now also recognises `*Test.java`, `*Test[s].kt`, `*_test.exs` (Elixir), `*_test.dart` (Dart), and `*Spec.scala` / `*Test.scala`.

