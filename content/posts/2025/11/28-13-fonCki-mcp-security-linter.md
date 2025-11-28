---
title: MCP Security Linter
date: 2025-11-28 13:05:54 +00:00
tags:
  - fonCki
  - GitHub Actions
draft: false
repo: https://github.com/fonCki/mcp-security-linter
marketplace: https://github.com/marketplace/actions/mcp-security-linter
version: v1.4.0
dependentsNumber: "?"
---


Version updated for **https://github.com/fonCki/mcp-security-linter** to version **v1.4.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-security-linter) to find the latest changes.

## Release notes

This release introduces a major overhaul of the security analysis engine, moving from heuristic-based checks to robust, control-flow-aware static analysis.

## 🚀 Key Features

### 1. Advanced Command Execution Detection
- **Taint Analysis**: Tracks untrusted input (`process.env`, function args) flowing into dangerous sinks (`exec`, `spawn`, `eval`, `vm.runInContext`).
- **Complex Flows**: Detects vulnerabilities involving variable reassignment, string concatenation, and template literals.
- **Safety**: Ignores safe hardcoded commands, significantly reducing false positives.

### 2. Token Passthrough Detection
- **Deep Inspection**: Recursively checks `Object` and `Array` expressions passed to logging functions or external network requests.
- **Scope Awareness**: Respects variable scope and shadowing.
- **Origin Tracking**: Reports the exact source of the sensitive data (e.g., `process.env.API_KEY`).

### 3. Unauthenticated Endpoints Detection
- **Middleware Stack Simulation**: Tracks the exact middleware stack active at the moment a route is defined.
- **Hierarchy Resolution**: Correctly resolves middleware inherited from parent applications when mounting routers.
- **Order Sensitivity**: Understands that middleware only applies to routes defined *after* it.

## 🧹 Cleanup & Improvements
- **Removed**: `ai-detector` and `secret-detector` to focus on core security logic.
- **Refactored**: `README.md` to reflect the current state and alignment with Anthropic's recommendations.
- **Verified**: Passed 28/28 tests covering advanced scenarios.

## 📦 Installation

```bash
npm install -g mcp-security-linter@1.4.0
```
