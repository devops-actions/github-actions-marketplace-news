---
title: AutoSpec AI - Android E2E Test Generator
date: 2026-03-04 05:43:29 +00:00
tags:
  - autospec-ai
  - GitHub Actions
draft: false
repo: https://github.com/autospec-ai/android
marketplace: https://github.com/marketplace/actions/autospec-ai-android-e2e-test-generator
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/autospec-ai/android** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/autospec-ai-android-e2e-test-generator) to find the latest changes.

## Action Summary

The **AutoSpec AI — Android E2E Test Generator** is a GitHub Action designed to automate the generation of Android end-to-end (E2E) tests using large language models (LLMs). It analyzes code changes in pull requests, detects UI-impacting modifications, and generates tests in either Maestro YAML or Espresso Kotlin formats, tailored to your project context. This action streamlines the testing process by automating test creation, prioritizing tests based on user impact, and providing optional features like API mock generation, accessibility checks, and screenshot comparisons, reducing manual effort and improving CI/CD efficiency.

## Release notes

## AutoSpec AI Android — v1.0.0

AI-powered Android E2E test generation from commit diffs.

### Highlights

- **Maestro (YAML)** as default test framework — no compilation, works against any APK
- **Espresso (Kotlin)** as opt-in alternative for teams with existing infrastructure
- **Two-phase LLM generation** — plans tests first, then generates code
- **Auto-detection** — reads `build.gradle` and `AndroidManifest.xml` for project context
- **Android file classifier** — categorizes 15 file types with UI impact scoring
- **Severity tagging** — sev1-sev4 priority levels
- **API mock generation** — Maestro mock server or MockWebServer support
- **Screenshot comparison** and **accessibility checks** as optional features
- **159 unit tests**, lint clean, ncc-bundled

### Usage

```yaml
- uses: autospec-ai/android@v1
  with:
    llm_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
```

See [README](https://github.com/autospec-ai/android#readme) for full documentation.
