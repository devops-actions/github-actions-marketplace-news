---
title: Garita PII Guard
date: 2026-08-07 07:32:57 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.23.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that enforces data protection policies by monitoring and preventing sensitive information from being added to repositories. It uses regular expressions and validation rules to check file contents against predefined lists of prohibited patterns such as names, CURPs, RFCs, CLABEs, NSS numbers, Mexican phone numbers, secret tokens, and JWTs. The action focuses on ensuring that personal data is not included in source code or commit history by leveraging existing tools like `git-secrets` and provides a simple YAML configuration file to manage the list of prohibited patterns.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.23.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that enforces data protection policies by monitoring and preventing sensitive information from being added to repositories. It uses regular expressions and validation rules to check file contents against predefined lists of prohibited patterns such as names, CURPs, RFCs, CLABEs, NSS numbers, Mexican phone numbers, secret tokens, and JWTs. The action focuses on ensuring that personal data is not included in source code or commit history by leveraging existing tools like `git-secrets` and provides a simple YAML configuration file to manage the list of prohibited patterns.

## What's Changed

Lo urgente de la **quinta oleada**: diez confirmados, cero refutados, los diez falsos negativos. Cinco salen aquí.

**Tres eran regresiones propias de las últimas horas:**

- **La codificación se decide por byte.** Tercera versión de `descifrar()` y segunda ceguera: v0.17.0 leía el archivo entero como cp1252 y un byte Latin-1 arruinaba los acentos del UTF-8 mayoritario; v0.20.2 lo invirtió y bastaba **un** carácter UTF-8 para arruinar los del padrón Latin-1 — la población que v0.17.0 existía para leer. Ahora sólo la secuencia inválida se lee como cp1252: las tres direcciones conservan sus acentos. No había que elegir.
- **`Ilegible` sólo cubría `read_bytes`**: un *directorio* sin permiso —la forma en que aparece en un contenedor de CI con otro UID— dejaba el archivo en «binarios o muy grandes» y aprobaba con 0.
- **`os.geteuid()` no existe en Windows** y el decorador se evalúa al crear la clase: desde v0.22.0 el job de `windows-latest` **no corría ni una de las 248 pruebas**. «Cero pruebas» y «todo verde» se parecen demasiado en un tablero.

**Y dos más:**

- **Un BOM en la lista de nombres borraba el primer nombre** y el repo salía verde. Es lo que v0.21.0 cerró en `config.py` y no se llevó a `fuentes.py`; aquí lo que desaparece no es una clave, es una persona del padrón.
- **`dentro_de_url` se acota de verdad**: el arreglo de v0.23.0 quitó la copia, pero los siete separadores ausentes seguían barriendo la línea entera. Y la prueba de rendimiento pasa a medir la forma, no el reloj.

El resto de la oleada —NFD, los secretos sin comillas de un `.env`, el padrón de una sola línea— queda en `ROADMAP.md` con recetas.
