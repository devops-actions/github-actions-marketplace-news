---
title: N-Plus-One Guardian
date: 2026-08-24 22:36:00 +00:00
tags:
  - whentony
  - GitHub Actions
draft: false
repo: https://github.com/whentony/n-plus-one-guardian
marketplace: https://github.com/marketplace/actions/n-plus-one-guardian
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The N-Plus-One Guardian is a GitHub Action designed to detect and prevent the "N+1" problem in database queries within Laravel projects. It analyzes modified files in Pull Requests, identifying common methods used for ORM queries inside loops and suggesting refactoring those queries to load data eagerly outside the loop. The action supports multiple languages and ORMs like Laravel Eloquent/Doctrine, Prisma/TypeORM, and Django ORM/SQLAlchemy.
---


Version updated for **https://github.com/whentony/n-plus-one-guardian** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/n-plus-one-guardian) to find the latest changes.

## Action Summary

The N-Plus-One Guardian is a GitHub Action designed to detect and prevent the "N+1" problem in database queries within Laravel projects. It analyzes modified files in Pull Requests, identifying common methods used for ORM queries inside loops and suggesting refactoring those queries to load data eagerly outside the loop. The action supports multiple languages and ORMs like Laravel Eloquent/Doctrine, Prisma/TypeORM, and Django ORM/SQLAlchemy.

## What's Changed

🚀 Primeiro lançamento oficial do N-Plus-One Guardian!

O N-Plus-One Guardian é uma GitHub Action focada em performance e qualidade de código, criada para proteger suas aplicações contra o temido problema de N+1 consultas (queries executadas dentro de laços de repetição).

✨ Principais Funcionalidades
🌍 Suporte Poliglota: Analisa de forma nativa as principais linguagens e ORMs do mercado:
PHP (Laravel Eloquent / Doctrine)
TypeScript & Node.js (Prisma / TypeORM)
Python (Django ORM / SQLAlchemy)
🧠 Análise Estática Inteligente: Utiliza a tecnologia avançada do [Tree-sitter](https://tree-sitter.github.io/tree-sitter/) para converter os arquivos modificados do Pull Request em uma Árvore Sintática Abstrata (AST). Isso garante alta precisão na detecção sem precisar executar o seu código.
💬 Code Review Automático: Insere comentários de alerta (inline) diretamente nas linhas do Pull Request onde a má prática foi detectada, indicando exatamente onde a query deve ser refatorada.
🛡️ Guardião de Integração: Se um problema for detectado, o status do check no GitHub Action falha, impedindo que o código não-otimizado chegue ao ambiente de produção.
