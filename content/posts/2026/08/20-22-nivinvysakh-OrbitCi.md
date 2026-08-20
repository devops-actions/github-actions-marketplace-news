---
title: OrbitCI - Autonomous AI PR Assistant
date: 2026-08-20 22:49:07 +00:00
tags:
  - nivinvysakh
  - GitHub Actions
draft: false
repo: https://github.com/nivinvysakh/OrbitCi
marketplace: https://github.com/marketplace/actions/orbitci-autonomous-ai-pr-assistant
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  **OrbitCI** is an AI-powered pull request assistant that automates code reviews, refactoring, and debugging in GitHub. It integrates with Google Gemini's AI capabilities to provide instant feedback and suggestions on PRs, ensuring efficient development workflows. The action enhances collaboration by allowing developers to focus on the core of their work while benefiting from AI-driven improvements.
---


Version updated for **https://github.com/nivinvysakh/OrbitCi** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/orbitci-autonomous-ai-pr-assistant) to find the latest changes.

## Action Summary

**OrbitCI** is an AI-powered pull request assistant that automates code reviews, refactoring, and debugging in GitHub. It integrates with Google Gemini's AI capabilities to provide instant feedback and suggestions on PRs, ensuring efficient development workflows. The action enhances collaboration by allowing developers to focus on the core of their work while benefiting from AI-driven improvements.

## What's Changed

# 🪐 OrbitCI v2.0.0 - Native Node.js 20 Runtime & Next-Gen AI Suite

**OrbitCI v2.0.0** is a major milestone! We have completely rewritten the core action from Python/Docker to a native **Node.js 20 GitHub Action**, rebranded to **OrbitCI**, and introduced a full suite of autonomous AI developer tools.

---

### ✨ What's New in v2.0.0:

* **⚡ Native Node.js 20 Runtime (`using: "node20"`)**:
  * Executed directly on GitHub runner VMs with **sub-100ms startup times** (down from ~4s Docker spin-up).
  * Bundled into a standalone, zero-dependency distribution with `@vercel/ncc`.

* **🪐 OrbitCI Rebrand & Multi-Handle Support**:
  * Trigger runs using `@orbit` or `@orbitci` (e.g. `@orbit refactor`, `@orbit fix-ci`).
  * Full backward compatibility with `@antigravity` / `@antigravityci`.

* **🩹 Self-Healing CI (`@orbit fix-ci`)**:
  * Automatically reads failed test and build logs from GitHub Actions and generates a patch PR that fixes the broken tests.

* **📝 PR Enhancer (`@orbit polish-pr`)**:
  * Rewrites existing PR titles to Conventional Commits and formats a structured markdown description with test checklists and metrics.

* **💬 Inline PR Reviews (`@orbit review`)**:
  * Posts line-by-line review comments with native **one-click GitHub suggestion diff blocks**.

* **🎨 Automated Mermaid Diagrams (`@orbit explain`)**:
  * Automatically generates and embeds visual **Mermaid sequence & architecture flowcharts** in PR bodies and walkthrough comments.

* **📊 AI Quality & Risk Scorecards**:
  * Every generated PR includes an automated evaluation of risk level (`Low` / `Medium` / `High`), breaking changes, and file counts.

* **⚙️ Custom Team Rules (`.orbitci.json`)**:
  * Enforce repository-specific coding standards, style guides, and conventions via an optional `.orbitci.json` config file.

* **🎛️ Inline Command Flags**:
  * Override models or request deeper reasoning directly in comments (e.g. `@orbit perf --model=gemini-3.7-flash --deep`).

* **📦 Ultra-Compact 20-Line Workflow**:
  * Streamlined the workflow template to just 20 lines without separate inline JavaScript scripts.

---


