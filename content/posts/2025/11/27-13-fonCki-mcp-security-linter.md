---
title: MCP Security Linter
date: 2025-11-27 13:08:09 +00:00
tags:
  - fonCki
  - GitHub Actions
draft: false
repo: https://github.com/fonCki/mcp-security-linter
marketplace: https://github.com/marketplace/actions/mcp-security-linter
version: v1.3.0
dependentsNumber: "?"
---


Version updated for **https://github.com/fonCki/mcp-security-linter** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-linter) to find the latest changes.

## Release notes

## What's New

- **AST-based analysis** for command execution detection using Acorn parser
- Smarter detection of dynamic vs static command arguments
- Improved accuracy with fewer false positives
- Graceful fallback to regex when AST parsing fails

## Changes

### New Dependencies
- `acorn` - Fast, ECMAScript-compliant JavaScript parser
- `acorn-walk` - AST walker for traversing parsed trees

### BaseAnalyzer Enhancements
- Added `parseAST()` method for parsing JS/TS content
- Added `walkAST()` method with visitor pattern support

### CommandExecAnalyzer Improvements
- AST-based detection of dangerous execution patterns
- Analyzes argument types (template literals, identifiers, binary expressions)
- Provides precise line/column locations
- Graceful fallback to regex when AST parsing fails

## Full Changelog
https://github.com/fonCki/mcp-security-linter/compare/v1.2.0...v1.3.0
