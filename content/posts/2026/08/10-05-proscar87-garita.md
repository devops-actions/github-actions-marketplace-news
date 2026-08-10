---
title: Garita PII Guard
date: 2026-08-10 05:57:53 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.30.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is an open-source GitHub Action that helps protect sensitive data like personal identifiers and credentials from entering your repository. It checks for potential PII (Personally Identifiable Information) in commits and files using a configurable list of patterns. Garita uses abstract syntax tree parsing to monitor the repository without executing code, ensuring that any false positives are caught before they make their way into production.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.30.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is an open-source GitHub Action that helps protect sensitive data like personal identifiers and credentials from entering your repository. It checks for potential PII (Personally Identifiable Information) in commits and files using a configurable list of patterns. Garita uses abstract syntax tree parsing to monitor the repository without executing code, ensuring that any false positives are caught before they make their way into production.

## What's Changed

Arreglo de pruebas. **Ningún cambio de comportamiento.**

La prueba del escapado de la tabla del resumen creaba un archivo llamado `tubo|corte.py`, y en Windows eso no se puede ni crear: `OSError 22` antes de llegar a la aserción. Tumbó los tres casos de la clase en `windows-latest` y dejó CI en rojo con v0.30.0 ya publicada.

Es el mismo molde que los dos puntos en v0.15.0, y ahí la salida fue saltarse Windows. Esta vez no: el escapado se prueba llamando a `resumen_markdown` con hallazgos construidos a mano, **sin tocar el disco**, así que corre en las cinco plataformas — incluida la única donde el carácter es ilegal, que es justo la que un skip habría dejado sin cubrir.

Verificado que la prueba nueva falla contra el `reporte.py` de v0.29.0. 299 pruebas.
