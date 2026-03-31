---
title: sloppy-joe-secure
date: 2026-03-31 06:15:09 +00:00
tags:
  - brennhill
  - GitHub Actions
draft: false
repo: https://github.com/brennhill/sloppy-joe
marketplace: https://github.com/marketplace/actions/sloppy-joe-secure
version: v1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/brennhill/sloppy-joe** to version **v1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sloppy-joe-secure) to find the latest changes.

## Action Summary

Sloppy Joe is a CI tool designed to detect and block compromised, typosquatted, or non-canonical dependencies across multiple ecosystems (e.g., npm, PyPI, Cargo) before they are installed, preventing supply chain attacks. It automates dependency validation using configurable rules, ensuring only trusted and vetted packages are used in production. Key features include support for eight ecosystems, JSON output for pipelines, and robust configuration options to enforce security standards.

## What's Changed

Catch hallucinated, typosquatted, and non-canonical dependencies before they reach production.

The problem

AI code assistants hallucinate package names. When Copilot writes pip install liteelm instead of litellm, that typo might be a real package on PyPI — registered by an attacker to steal credentials. Existing security tools don't catch this because they only scan for known vulnerabilities in packages that already exist in your lockfile. They assume your dependencies are real.

sloppy-joe doesn't.

What it checks

  - Existence — Verifies every dependency actually exists on its registry
  - Similarity — 11 mutation generators flag names close to popular packages (typosquatting, homoglyphs, keyboard proximity, combo-squatting)
  - Canonical — Enforces your team's approved package choices
  - Vulnerabilities — Known CVEs via OSV.dev
  - Metadata signals — Version age gates, maintainer changes, install scripts, missing repository URLs

8 ecosystems

npm, PyPI, Cargo, Go, Ruby, PHP, JVM (Gradle/Maven), .NET

Quick start

 - uses: brennhill/sloppy-joe@v1

With config

 - uses: brennhill/sloppy-joe@v1
   with:
      config: https://raw.githubusercontent.com/yourorg/configs/main/sloppy-joe.json


AI-agent safe

Config lives outside your repo. An AI agent with shell access can't rewrite it to allowlist its own hallucinated dependencies. Use a remote config URL in CI for maximum security:

config: https://raw.githubusercontent.com/yourorg/private-configs/main/sloppy-joe.json

Also available via

  - cargo install sloppy-joe
  - brew install brennhill/tap/sloppy-joe
  - nix profile install github:brennhill/sloppy-joe
  - pre-commit hook
