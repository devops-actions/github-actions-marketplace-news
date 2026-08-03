---
title: Garita PII Guard
date: 2026-08-03 22:48:20 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that prevents sensitive personal and credential information from being pushed to your repository. It uses patterns to detect and block sensitive data such as names, CURPs, RFCs, CLABEs, NSS numbers, Mexican phone numbers, JWTs, and passwords. The main functionality is to maintain the principle that "the line is the lot, not the name," ensuring that financial information can be versioned while personal data remains private.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that prevents sensitive personal and credential information from being pushed to your repository. It uses patterns to detect and block sensitive data such as names, CURPs, RFCs, CLABEs, NSS numbers, Mexican phone numbers, JWTs, and passwords. The main functionality is to maintain the principle that "the line is the lot, not the name," ensuring that financial information can be versioned while personal data remains private.

## What's Changed

Garita revisa lo que git rastrea y bloquea el commit cuando encuentra un dato personal o una credencial. Sin dependencias.

## Qué trae

**Siete países.** Argentina, Brasil, Chile, Colombia, España, México y Perú — cada uno un módulo que el registro descubre solo. CURP, RFC, CLABE, NSS, CPF, CNPJ (incluido el alfanumérico de 2026), RUT, NIT, CUIT, DNI/NIE/CIF/IBAN, RUC. Todos validados por dígito verificador, no por forma.

**Validado contra proyectos reales.** axios, Chart.js, express, faker, flask, hugo, prettier, requests, sinatra y vite: 19,920 archivos, **cero errores**. Es el número que importa — un guardián ruidoso se desinstala, y ese día deja pasar el dato de verdad.

**Lee la lista de nombres del propio proyecto.** Si ya tienes un generador de datos sintéticos con los nombres que no deben salir, Garita los extrae por AST sin ejecutar el archivo. La lista no se duplica y no se desincroniza.

**Avisa de exenciones muertas.** Una exención que no coincide con ningún archivo significa que algo se renombró y la protección se cayó sin decírtelo.

## Cómo se usa

```yaml
- uses: proscar87/garita@v0.2.0
```

```yaml
# .pre-commit-config.yaml
- repo: https://github.com/proscar87/garita
  rev: v0.2.0
  hooks: [{id: garita}]
```

`docs/AGREGAR_PAIS.md` explica cómo agregar el tuyo: es un archivo, no una rama.
