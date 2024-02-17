---
title: Limpar Workspace
date: 2024-02-17 03:25:19 +00:00
tags:
  - jailson-silva
  - GitHub Actions
draft: false
repo: jailson-silva/limpar-workspace
marketplace: https://github.com/marketplace/actions/limpar-workspace
version: v0.0.1
dependentsNumber: "?"
---


Version updated for **jailson-silva/limpar-workspace** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/limpar-workspace) to find the latest changes.

## Release notes

## [Release] Primeira release do Github action limpar workspace

**[New]**  Uma action simples para remover os arquivos criados dentro do workspace nos runners self-hosted.

## Descrição

Parece que a action de checkout é executada com o usuário do host que configurou o runner, mas os arquivos criados por outras
action são executadas pelo root. Com isso check-out subsequente não é capaz de remover os arquivos criados a partir da execução anterior (pois estão com o usuário root como owner). O Action Runners não faz está limpeza automaticamente, portanto foi desenvolvido está action para lidar com este gap.
