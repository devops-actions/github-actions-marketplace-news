---
title: VulnHawk Security Scan
date: 2026-04-09 06:08:21 +00:00
tags:
  - momenbasel
  - GitHub Actions
draft: false
repo: https://github.com/momenbasel/vulnhawk
marketplace: https://github.com/marketplace/actions/vulnhawk-security-scan
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/momenbasel/vulnhawk** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vulnhawk-security-scan) to find the latest changes.

## Action Summary

VulnHawk is an AI-powered code security scanner designed to detect vulnerabilities that traditional tools like Semgrep and CodeQL may miss. By leveraging AI to analyze business logic and cross-file patterns, it identifies issues such as missing authorization checks, insecure direct object references (IDOR), and logic bugs without requiring manual rule configuration. This tool automates security scans with natural language explanations and context-specific fixes, making it an efficient addition to CI/CD pipelines.

## What's Changed

## VulnHawk v0.1.0

AI-powered code security scanner that finds vulnerabilities Semgrep and CodeQL miss.

### Features

- **AI-Powered Analysis** - Uses LLMs to understand business logic, not just pattern matching
- **Context Enrichment** - Cross-references how other parts of your codebase handle auth, validation, and security to spot inconsistencies
- **3 LLM Backends** - Claude (default), OpenAI, Ollama (free/local)
- **6 Scan Modes** - `full`, `auth`, `injection`, `secrets`, `config`, `crypto`
- **4 Output Formats** - Terminal (rich), JSON, SARIF (GitHub Code Scanning), Markdown
- **GitHub Action** - Drop-in CI/CD integration with SARIF upload
- **Smart Chunking** - Splits codebases into logical pieces (functions, classes, routes) with surrounding context
- **Zero Config** - Works out of the box, no rules to write

### Supported Languages

- Python
- JavaScript / TypeScript
- Go

### Quick Start

```bash
pip install vulnhawk
export ANTHROPIC_API_KEY=sk-ant-...
vulnhawk scan ./src
```

### GitHub Action

```yaml
- uses: momenbasel/vulnhawk@v0.1.0
  with:
    target: '.'
    api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

### What It Finds That Others Don't

| Feature | Semgrep / CodeQL | VulnHawk |
|---------|-----------------|----------|
| Detection method | AST pattern matching | AI code understanding |
| Business logic bugs | Cannot detect | Detects missing auth, IDOR, logic flaws |
| Cross-file analysis | Requires custom rules | Automatic |
| Setup | Write rules, configure | Zero config |

**Full Changelog**: https://github.com/momenbasel/vulnhawk/commits/v0.1.0
