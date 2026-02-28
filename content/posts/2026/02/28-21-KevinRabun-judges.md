---
title: Judges Code Review
date: 2026-02-28 21:17:34 +00:00
tags:
  - KevinRabun
  - GitHub Actions
draft: false
repo: https://github.com/KevinRabun/judges
marketplace: https://github.com/marketplace/actions/judges-code-review
version: v3.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/KevinRabun/judges** to version **v3.3.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/judges-code-review) to find the latest changes.

## Action Summary

The Judges Panel GitHub Action provides automated, multi-dimensional code evaluations for AI-generated code, addressing common failure modes such as security vulnerabilities, poor error handling, and compliance issues. It leverages deterministic pattern matching alongside LLM-powered expert analysis to assess 35 specialized domains, generating plain-language findings, prioritized fixes, and actionable reports. Designed for seamless integration into CI pipelines, it simplifies quality assurance through instant evaluations, auto-generated patches, and support for SARIF output for GitHub Code Scanning.

## Release notes

## What's Changed

### Unified AST Engine
- **Consolidated** typescript-ast.ts (TypeScript Compiler API) into tree-sitter-ast.ts — all 8 languages now use a single tree-sitter WASM engine
- **Removed** the TypeScript Compiler API dependency for JS/TS parsing
- TypeScript and JavaScript parsed via tree-sitter-typescript.wasm (superset grammar)

### C++ Language Support
- Added **C++** as the 8th supported language for AST analysis
- Language aliases: cpp, c++, cc, cxx, c, h, hpp
- Full support: functions, complexity, nesting, parameters, void*/auto weak type detection, #include imports, classes/structs

### Bug Fixes
- **Rust**: Fixed unsafe fn declaration detection (previously only detected unsafe blocks)
- **TypeScript**: Fixed require() import detection (CommonJS-style imports now counted)
- **Test timing**: Moved tree-sitter WASM warm-up before test registration to prevent race conditions

### Tests
- **711 tests** across 139 suites — all passing
- Added 9 new C++ test cases covering parsing, complexity, nesting, parameters, weak types, imports, classes, and evaluator integration

### Supported Languages (AST)
TypeScript, JavaScript, Python, Rust, Go, Java, C#, **C++**

