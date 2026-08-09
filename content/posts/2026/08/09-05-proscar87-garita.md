---
title: Garita PII Guard
date: 2026-08-09 05:54:55 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.27.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that prevents sensitive personal and credential information from entering your repository by enforcing rules for various identity verification codes (e.g., CURP, RFC) using regular expressions in its configuration. It helps automate the process of checking files against a list of prohibited identifiers to maintain data integrity while auditing financial transactions.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.27.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that prevents sensitive personal and credential information from entering your repository by enforcing rules for various identity verification codes (e.g., CURP, RFC) using regular expressions in its configuration. It helps automate the process of checking files against a list of prohibited identifiers to maintain data integrity while auditing financial transactions.

## What's Changed

El arreglo más rentable del roadmap, y el primero que sale del frente de **ruido** — la mitad de la doctrina que llevábamos seis oleadas sin medir.

`llave_privada` casaba la cabecera PEM sin exigir que hubiera llave debajo. **Medido sobre `twilio-python`: 48 hallazgos, los 48 documentación.** Ahora 0, y ese repositorio pasa de rojo a verde, que era el veredicto correcto.

Las señales que separan una llave de su mención resultaron ser tres:

- La cabecera **sin cuerpo** no es una llave (una mención en un docstring, un comentario que explica el formato).
- En la misma línea, el cuerpo va **pegado** a la cabecera o tras un salto escapado —`KEY-----\nMIIE…`, como se guarda en un `.env` o un JSON—, **nunca tras un espacio**: un PEM de verdad lleva salto de línea ahí, y lo que se ve con espacios es el manual enseñando el formato con una llave recortada.
- Y si delante hay una **frase** (seis palabras o más), es documentación: una llave real vive tras `KEY="`, `"key": "` o `private_key = "`.

Las diez formas reales siguen sonando, verificadas una por una: PEM normal, **cifrada** con sus cabeceras RFC 1421 (`Proc-Type`, `DEK-Info`), OPENSSH, en `.env` con `\n` y con `\r\n`, en JSON pegada, en asignación y en una llamada con varios argumentos.

279 pruebas.
