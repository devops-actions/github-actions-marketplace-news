---
title: AI Context Files (claude-init)
date: 2026-06-20 15:04:04 +00:00
tags:
  - horiastanxd
  - GitHub Actions
draft: false
repo: https://github.com/horiastanxd/claude-init
marketplace: https://github.com/marketplace/actions/ai-context-files-claude-init
version: v0.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/horiastanxd/claude-init** to version **v0.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-context-files-claude-init) to find the latest changes.

## What's Changed

### Added
- New language ecosystems: TypeScript on Deno (`deno.json`/`deno.jsonc`), C#/.NET (`*.csproj`), Elixir (`mix.exs`), Kotlin (`build.gradle.kts`) and Dart (`pubspec.yaml`), each with package manager and command detection.
- New frameworks: Fresh (Deno), ASP.NET Core (.NET), Phoenix (Elixir), Android (Gradle `com.android` plugin) and Flutter (Dart).
- .NET test runner detection (xUnit / NUnit / MSTest) from the `*.csproj`.
- Toolchain commands for the new ecosystems: `deno test/lint/fmt`, `dotnet restore/build/test`, `mix deps.get/compile/test`, and `flutter`/`dart` pub + test + analyze + format.
