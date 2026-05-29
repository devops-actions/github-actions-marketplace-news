---
title: GitGalaxy Scanner
date: 2026-05-29 22:46:46 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v2.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v2.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## Action Summary

GitGalaxy is a high-performance static analysis and knowledge graph engine designed to analyze code repositories at scale without relying on traditional Abstract Syntax Trees (ASTs) or Large Language Models (LLMs). It automates repository-wide assessments by deterministically mapping code structures, scoring functions based on 50+ metrics, and generating comprehensive insights into project architecture, dependencies, and cognitive load across 50+ programming languages. By addressing limitations of ASTs and LLMs, it provides accurate, fast, and customizable code analysis for enterprise-grade applications.

## What's Changed

This release marks a massive structural evolution for the blAST Engine. GitGalaxy significantly hardens the core engine with proactive testing, completely overhauls the mathematical and architectural documentation into a flawless, closed-loop topological web, and introduces commercial licensing guardrails. 

### 🚀 Major Features & Core Engine Updates
* **Proactive Engine Hardening:** Drastically increased core test coverage from 68% to 89%. This proactive sweep successfully intercepted and corrected two latent bugs before they could impact production environments.
* **PEP8 Standardization:** Executed a repository-wide formatting sweep to strictly configure the codebase to PEP8 standards, ensuring enterprise-ready structural hygiene and readability.
* **Commercial Licensing Guardrails:** Implemented the PolyForm Noncommercial License 1.0.0 guardrails, introducing audit tripwires and environmental execution friction for unverified CI/CD pipelines. 

### 🕸️ Documentation & Topological Perfection
* **Standardized Engine Expansion (Add a New Language in Minutes):** Because the blAST engine is 100% AST-free, we can add new languages and scan multi-language repos with zero friction. Want to add your company's proprietary, highly classified version of C++ into this zero-trust, air-gapped code scanning system? Fine. Fill out the calibration worksheet, drop it into `language_standards.py`, and start scanning. It takes the time of a single LLM prompt. We have finalized and published this strict protocol to ensure any language you add is immediately ReDoS immune. 
* **The 'Proof of Work' Architecture:** Deployed a massive, thesis-grade index mapping the empirical validation and mathematical physics behind heuristic code parsing. You've got questions, I've got receipts. 
* **Topological Dead-End Eradication:** Added a meticulously wired web of backlinks to the wiki and readmes to allow for better education and user flow. I have the receipts, and now you can actually navigate them easily.  

### 🏦 Legacy Modernization (Mainframe Toolchain)
* **COBOL Refactoring:** Applied standard configuration and extraction updates to the massive COBOL toolchain suite, ensuring the Microservice Slicer, Schema Forge, and DAG Architect maintain perfect alignment with the core engine.

### 🛡️ Security, Testing & Chore
* **Extraction Gauntlets:** Upgraded all extraction gauntlets and integrated dynamic `PYTHONPATH` injections to ensure licensing checks are safely bypassed during CI/CD test runs.
* **CodeQL Integrity:** Bypassed a known CodeQL caret parsing bug by structurally splitting vulnerability-hunting regex.
* **Environment Hygiene:** Locked `pytest` strictly to the tests directory and added comprehensive Flake8 configuration to lock in the new formatting rules.
