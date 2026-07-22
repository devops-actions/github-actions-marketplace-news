---
title: AIBOM Scanner
date: 2026-07-22 06:12:24 +00:00
tags:
  - saasvista
  - GitHub Actions
draft: false
repo: https://github.com/saasvista/aibom-scanner
marketplace: https://github.com/marketplace/actions/aibom-scanner
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action scans codebases for AI SDK usage and generates an AI Bill of Materials (AIBOM) with compliance risk findings mapped to NIST AI RMF, ISO 42001, and EU AI Act. It detects AI SDKs in various programming languages, including Python, JS/TS, Go, Java, Rust, Ruby, Swift, C#,/.NET, and provides comprehensive coverage accounting and zero dependencies.
---


Version updated for **https://github.com/saasvista/aibom-scanner** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aibom-scanner) to find the latest changes.

## Action Summary

The GitHub Action scans codebases for AI SDK usage and generates an AI Bill of Materials (AIBOM) with compliance risk findings mapped to NIST AI RMF, ISO 42001, and EU AI Act. It detects AI SDKs in various programming languages, including Python, JS/TS, Go, Java, Rust, Ruby, Swift, C#,/.NET, and provides comprehensive coverage accounting and zero dependencies.

## What's Changed

## 1.2.0 (2026-07-21)

.NET detection depth.

1.1.0 taught the scanner to open `.cs`/`.fs`/`.vb` files; it still could not
understand them. 28 of the existing patterns are import-shaped (`from x`,
`import x`, `require('x')`) and none matched a C# `using` directive, and no NuGet
manifest format was parsed. Measured on `OneIdentity/safeguard-mcp`: 1 detection
across 13,689 lines of C#, and zero dependencies, despite the repo declaring
`ModelContextProtocol 1.4.0` in its `.csproj` and using it in 12 source files.

### Added

- **C# `using`-directive patterns.** 9 new patterns covering `ModelContextProtocol`
  (including the `[McpServerTool]` / `[McpServerResource]` attribute family),
  `Microsoft.SemanticKernel`, `Azure.AI.OpenAI`, `OpenAI`, `Anthropic`,
  `Amazon.BedrockRuntime`, `Google.Cloud.AIPlatform`, and `Mscc.GenerativeAI`.
  Every pattern is anchored to line start and requires a PascalCase namespace, so
  `using`-as-resource-disposal (`using var client = ...`, `using (var stream = ...)`)
  never triggers a false positive.
- **NuGet manifest parsing.** `.csproj`, `.fsproj`, `.vbproj`, `Directory.Packages.props`,
  and `packages.config` are now parsed for `PackageReference` / `PackageVersion` /
  `package` elements, matched against a new NuGet-specific package map
  (`NUGET_DEPENDENCY_MAP`) using longest dot-boundary prefix matching, so
  `Azure.AI.OpenAI` resolves to `azure_openai` and never collides with `openai`.
  Central package management's optional `Version` attribute is handled — a
  missing version does not drop the dependency. Manifests are parsed with regex,
  not an XML parser, and a malformed manifest degrades to no dependencies found
  rather than raising.
- These manifests are scannable but are not counted as source, exactly like
  `package.json` today — `coverage_pct` is unaffected by their presence.

### Result on the measured fixture

`OneIdentity/safeguard-mcp`: 1 detection / 0 dependencies before this release,
23 detections / 2 dependencies after, with `mcp` correctly surfaced as a detected
provider and `ModelContextProtocol` surfaced as a dependency.
