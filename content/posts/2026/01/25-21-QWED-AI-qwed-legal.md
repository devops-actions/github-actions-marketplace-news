---
title: QWED Legal Verification
date: 2026-01-25 21:51:56 +00:00
tags:
  - QWED-AI
  - GitHub Actions
draft: false
repo: https://github.com/QWED-AI/qwed-legal
marketplace: https://github.com/marketplace/actions/qwed-legal-verification
version: v0.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/QWED-AI/qwed-legal** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qwed-legal-verification) to find the latest changes.

## Action Summary

QWED-Legal is an open-source verification tool designed to ensure the accuracy of AI-generated legal analyses, such as deadline calculations, clause consistency, and liability evaluations. By using deterministic methods like symbolic math and formal proofs, it acts as a safety layer to validate AI outputs, reducing the risk of errors that could lead to disputes, missed deadlines, or litigation. It integrates seamlessly into workflows, providing a reliable and precise verification process for legal professionals.

## Release notes

# 🏛️ QWED-Legal v0.2.0

**Major update with 2 new guards, npm package, and extended jurisdiction support!**

## ✨ New Features

### New Guards
- **JurisdictionGuard** - Verify choice of law, forum selection, and international conventions (CISG, Hague, NY Convention)
- **StatuteOfLimitationsGuard** - Check claim periods across US states, UK, EU, Australia, and India

### npm Package
- Published `@qwed-ai/legal` v1.0.0 to npm
- Full TypeScript SDK with all 6 verifiers
- `npm install @qwed-ai/legal`

### Extended Jurisdiction Support
- Full US state name recognition (Delaware, California, New York, etc.)
- Added statute periods for 14+ jurisdictions

## 📦 Installation

```bash
# Python
pip install qwed-legal==0.2.0

# TypeScript/JavaScript
npm install @qwed-ai/legal
