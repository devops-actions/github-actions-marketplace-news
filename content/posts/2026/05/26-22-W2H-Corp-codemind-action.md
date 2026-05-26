---
title: CodeMind Security Scan
date: 2026-05-26 22:51:00 +00:00
tags:
  - W2H-Corp
  - GitHub Actions
draft: false
repo: https://github.com/W2H-Corp/codemind-action
marketplace: https://github.com/marketplace/actions/codemind-security-scan
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/W2H-Corp/codemind-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codemind-security-scan) to find the latest changes.

## Action Summary

The CodeMind Security Scan GitHub Action automatically analyzes code for security vulnerabilities whenever changes are pushed or pull requests are created. It helps developers identify potential issues early in the development process, ensuring code security and compliance. Key capabilities include customizable file scanning, severity filtering, and workflow integration for automated reporting of security findings.

## What's Changed

CodeMind Security Scan — v1.0.0
 
Initial release of the official CodeMind GitHub Action.

Integrate CodeMind's security analysis directly into your CI/CD pipeline. Every push and pull request is automatically scanned, with findings surfaced as inline annotations in your PR diff.

Features

- Inline PR annotations — findings aparecem diretamente no diff do pull request, na linha exata do problema
- Workflow summary — tabela de resultados (erros, warnings, info) na aba Summary do GitHub Actions
- Fail on findings — bloqueia o merge automaticamente se vulnerabilidades forem encontradas (configurável)
- Zero dependencies — roda em qualquer runner Ubuntu/macOS/Windows sem npm install
- Multi-language — suporta Python, JavaScript, TypeScript, Go, Java, Ruby, PHP, C#, C/C++, Rust e mais
- Configurável — controle de severidade mínima, extensões, diretórios excluídos e URL do servidor (para instâncias self-hosted)

Usage

- uses: actions/checkout@v4

- name: CodeMind Security Scan
  uses: W2H-Corp/codemind-action@v1
  with:
    api_token: ${{ secrets.CODEMIND_TOKEN }}

Requirements

Requires a valid CodeMind API token. Get access at codemind.w2hcorp.com (https://codemind.w2hcorp.com).
