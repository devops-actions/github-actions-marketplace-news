---
title: QWED Finance Guard
date: 2026-05-02 21:31:45 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-finance
marketplace: https://github.com/marketplace/actions/qwed-finance-guard
version: v2.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/QWED-AI/qwed-finance** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-finance-guard) to find the latest changes.

## Action Summary

QWED-Finance is a middleware solution designed to provide deterministic verification for AI-generated financial calculations, ensuring mathematical accuracy and compliance before outputs are used in production. By leveraging symbolic mathematics and formal proofs, it automates error detection in tasks like NPV/IRR calculations, loan amortization, compound interest formulas, and currency handling, reducing risks associated with floating-point errors and incorrect computations. It serves as a robust safety layer for fintech workflows, complementing financial AI platforms by guaranteeing verified outputs with mathematical certainty.

## What's Changed

**Deterministic security audit remediation.** All P0 and P1 findings resolved. Zero IEEE-754 float remaining in any financial math path.

### 🔴 Security Fixes
- **Fail-closed enforcement:** Unregistered tools in OpenResponses now REJECTED (was auto-approved)
- **AML country list unified:** Yemen, Venezuela, Pakistan flagged consistently across all paths
- **Rate parsing fail-closed:** `_parse_rate()` no longer guesses format — returns `Decimal`, raises on invalid input

### 🟠 Precision Migration
- **BondGuard:** Newton-Raphson YTM, Duration, Convexity → `Decimal` (`getcontext().prec = 50`)
- **DerivativesGuard:** Black-Scholes → `mpmath` (30 dp) — `log/exp/sqrt/erf` all arbitrary-precision
- **RiskGuard:** VaR, Beta, Sharpe, Sortino → `Decimal.sqrt()`, zero catastrophic cancellation
- **Integration layer:** `OpenResponses._verify_option_price` delegates to `DerivativesGuard` (single source of truth)

### ⚠️ Breaking Changes
- `greeks` values are now `str` (Decimal-quantized), not `float` — cast via `Decimal(greeks["delta"])`
- `BondGuard._parse_rate()` returns `Decimal` instead of `float`
- Unknown `compounding` frequency raises `ValueError` (was silent default to annual)
- Unregistered tools → `REJECTED` (was `APPROVED`)

### 📦 Dependencies
- `mpmath>=1.3.0` added as explicit runtime dependency

### 📊 Test Coverage
150 tests passing (up from ~125 in v2.0.1)

