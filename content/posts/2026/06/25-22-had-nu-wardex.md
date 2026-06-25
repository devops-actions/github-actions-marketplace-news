---
title: Wardex Release Gate
date: 2026-06-25 22:32:19 +00:00
tags:
  - had-nu
  - GitHub Actions
draft: false
repo: https://github.com/had-nu/wardex
marketplace: https://github.com/marketplace/actions/wardex-release-gate
version: v2.2.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/had-nu/wardex** to version **v2.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wardex-release-gate) to find the latest changes.

## What's Changed

# Release v2.2.0 — Configuration Provenance Link (CPL)

**Data:** 2026-06-25

## Destaques

- **Configuration Provenance Link (CPL)**: Nova camada de rastreabilidade criptográfica que liga cada
  decisão do release gate à configuração exacta em vigor no momento da avaliação.
- **`wardex config hash`**: Hash determinístico SHA-256 ou BLAKE3 sobre YAML canónico (chaves
  ordenadas, sem comentários, whitespace normalizado). Mesmo hash para configurações semanticamente
  idênticas, independentemente de formatação.
- **`wardex audit verify-link`**: Verifica se os hashes no audit log correspondem a configurações
  arquivadas. Detecta alterações retroactivas (`MISMATCH`), configurações em falta (`MISSING`),
  ou integridade confirmada (`OK`).
- **`wardex audit verify-chain`**: Valida a hash chain do audit log — cada entrada referencia
  criptograficamente a anterior, tornando qualquer adulteração detectável.
- **BLAKE3**: Algoritmo de hash moderno disponível como alternativa ao SHA-256 via flag
  `--algorithm blake3`. Hashes com prefixo (`sha256:` / `blake3:`) nunca comparados silenciosamente.
- **Webhook de divergência**: Notificação fire-and-forget para SIEM/alerting quando `verify-link`
  detecta anomalias. Configurável em `wardex.yaml` → `notifications.divergence_webhook`.
- **`cli_overrides`**: Flags CLI que sobrepõem a configuração (ex: `--gate-mode`, `--fail-above`)
  são registadas no audit log para proveniência completa.
- **`--strict` melhorado**: Falha com exit 3 se o hash da configuração não puder ser calculado.

## Novos comandos

```
wardex config hash --config <file> [--algorithm sha256|blake3]
wardex audit verify-link --audit-log <file> --config-archive <dir> [--webhook-url <url>]
wardex audit verify-chain --audit-log <file>
```

## Documentação

- [CPL Specification](SPEC-wardex-cpl-v2.2.md) — especificação completa e testes de integridade
- [WARDEX Playbook](doc/operations/WARDEX_PLAYBOOK.md)
- [CHANGELOG](CHANGELOG.md)

