---
title: Argus AI Code Reviewer
date: 2026-08-08 14:28:57 +00:00
tags:
  - SahooShuvranshu
  - GitHub Actions
draft: false
repo: https://github.com/SahooShuvranshu/Argus
marketplace: https://github.com/marketplace/actions/argus-ai-code-reviewer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  ARGUS is a GitHub Action that automates an AI-driven 3-stage review process on Pull Requests, generating visual topology flowcharts, enforcing architectural compliance, and catching technical debt. It uses Google Gemini for LLM inference and supports OpenAI cloud compatibility.
---


Version updated for **https://github.com/SahooShuvranshu/Argus** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-ai-code-reviewer) to find the latest changes.

## Action Summary

ARGUS is a GitHub Action that automates an AI-driven 3-stage review process on Pull Requests, generating visual topology flowcharts, enforcing architectural compliance, and catching technical debt. It uses Google Gemini for LLM inference and supports OpenAI cloud compatibility.

## What's Changed

# v1.0.0 — ARGUS: Autonomous 3-Stage AI Code Reviewer & Architecture Guardian 👁️⚡

## 👁️ ARGUS v1.0.0 — Autonomous 3-Stage AI PR Reviewer

We are excited to announce the initial release of **ARGUS v1.0.0**, an autonomous GitHub Action that executes a 3-stage AI code review pipeline on every Pull Request. ARGUS automatically generates visual topology maps, enforces architectural compliance, and scans for technical debt and security leaks before code merges into production.

---

## ✨ Key Features & Capabilities

### 1. 🎨 Stage 1: Atlas (Visual Impact Map)
- Parses raw PR git diffs into interactive **Mermaid.js flowcharts** (`flowchart TD`).
- Visualizes modified files, module relationships, and control flow changes in a clean, collapsible section inside the PR review comment.

### 2. 🏛️ Stage 2: Athena (Architecture Compliance Guard)
- Cross-references PR code changes against your repository's `architecture.md` specification.
- Detects architectural decay, forbidden cross-layer imports, and modular boundary violations automatically.

### 3. ⚡ Stage 3: Hermes (Technical Debt & Security Scanner)
- Inspects modified files line-by-line to flag code quality issues and secret leaks:
  - `🔴 BLOCK`: Hardcoded API keys, private tokens, or security vulnerabilities.
  - `🟡 WARN`: Unfinished `// TODO`, `// FIXME`, or empty function stubs.
  - `🔵 INFO`: Leftover debugging statements (e.g., `console.log`).

### 4. 🤖 Universal AI Cloud Provider Support
- **Google Gemini (Default)**: Natively powered by `@google/genai` (`gemini-2.0-flash`).
- **OpenAI-Compatible Providers**: Configure custom endpoints and API keys for **NVIDIA NIM**, **OpenRouter**, **Groq Cloud**, or **OpenAI Direct**.

### 5. 🛡️ Fallback Static Analysis Engine
- Includes an offline static regex parser. If AI model rate limits (HTTP 429) or network errors occur, ARGUS seamlessly completes the PR evaluation without breaking your CI build pipeline.

### 6. 👁️ Idempotent PR Commenting
- Automatically creates and updates a single review comment (`<!-- ARGUS-REVIEW-COMMENT -->`) per Pull Request, keeping discussion threads clean and organized.

---

## 🚀 Quick Start Setup (`.github/workflows/argus.yml`)

Add ARGUS to your repository by creating `.github/workflows/argus.yml`:

```yaml
name: ARGUS AI Code Review

on:
  pull_request:
    types: [opened, synchronize, reopened]

jobs:
  argus-review:
    name: ARGUS 3-Stage AI PR Review
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
      issues: write

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20
          cache: 'npm'

      - name: Install Dependencies
        run: npm ci

      - name: Run ARGUS AI Reviewer
        uses: SahooShuvranshu/Argus@v1.0.0
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          gemini-api-key: ${{ secrets.GEMINI_API_KEY }}
```

---

## 🔗 Documentation & Links

- 🛒 **GitHub Marketplace**: [Argus AI Code Reviewer](https://github.com/marketplace/actions/argus-ai-code-reviewer)
- 🌐 **Live Showcase & Playground**: [Interactive Showcase Site](https://sahooshuvranshu.github.io/Argus/)
- 📖 **Technical Setup Guides**: [Documentation Hub](https://sahooshuvranshu.github.io/Argus/documentation.html)
- 📜 **Architecture Spec**: [`architecture.md`](https://github.com/SahooShuvranshu/Argus/blob/main/architecture.md)

---
*Developed by [SahooShuvranshu](https://github.com/SahooShuvranshu).*

