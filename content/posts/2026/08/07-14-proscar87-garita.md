---
title: Garita PII Guard
date: 2026-08-07 14:41:00 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.24.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that helps prevent sensitive information like personal names, credit card numbers, and passwords from being committed to repositories. It uses a configuration file to specify which patterns are prohibited, and it checks files against this list using regular expressions. This ensures compliance with data protection regulations such as the FLPDPPP (Federal Law for Protection of Personal Data in Mexico).
---


Version updated for **https://github.com/proscar87/garita** to version **v0.24.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that helps prevent sensitive information like personal names, credit card numbers, and passwords from being committed to repositories. It uses a configuration file to specify which patterns are prohibited, and it checks files against this list using regular expressions. This ensures compliance with data protection regulations such as the FLPDPPP (Federal Law for Protection of Personal Data in Mexico).

## What's Changed

Los cuatro confirmados del frente de **evasión** de la quinta oleada. Ninguno requiere mala fe: así es como los datos entran de verdad.

- **NFD**: `descifrar()` normaliza a NFC. Sin eso, un archivo con «Cédula» escrito como *e + acento combinante* —lo que produce macOS y varios exportadores— era otra cadena para cada patrón acentuado del proyecto. Los detectores con `exige_contexto` quedaban **completamente** ciegos y el de nombres no casaba un solo nombre con acento.
- **El detector de nombres pasa a `finditer`**: con `search`, un padrón exportado en una sola línea —un JSON de `jq -c`— reportaba **un** nombre de cuatrocientos. Y la línea base congela ese 1, así que después se podían agregar los demás sin que el veredicto cambiara.
- **Secretos sin comillas**: `.env`, `.properties`, `.ini`, el bloque `environment:` de un docker-compose, un `Secret` de Kubernetes. Ahí `DB_PASSWORD=<20 aleatorios>` no lo veía nadie — el hueco justo bajo el consejo que la propia herramienta imprime. El código normal (`password = config.db_password`, la tupla de `requests`) sigue sin marcarse. De paso, el nombre admite prefijos: `DB_`, `APP_`, `spring.datasource.` — antes ni con comillas casaba.
- **Una coincidencia que es un campo completo** ya no vive «dentro de un número»: una fila de export bancario llegaba al umbral de la ventana con sus propios importes y la CLABE válida se descartaba sin validar nada.

Cinco pruebas nuevas (255 en total). En un repo consumidor real, esto destapó **cuatro nombres de personas** que se estaban perdiendo.
