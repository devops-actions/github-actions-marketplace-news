---
title: Garita PII Guard
date: 2026-08-07 22:42:25 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.26.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is an action designed to prevent personal and sensitive data from entering your repository by detecting patterns that match known identifiers such as CURP, RFC, CLABE, CPF, CUIT, RUT, DNI, IBAN, etc. It uses a YAML configuration file to specify which patterns are considered potentially sensitive, allowing you to control what is protected while still maintaining flexibility for testing and development purposes.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.26.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is an action designed to prevent personal and sensitive data from entering your repository by detecting patterns that match known identifiers such as CURP, RFC, CLABE, CPF, CUIT, RUT, DNI, IBAN, etc. It uses a YAML configuration file to specify which patterns are considered potentially sensitive, allowing you to control what is protected while still maintaining flexibility for testing and development purposes.

## What's Changed

Usar Garita en un repositorio real **implica** tener exenciones: siempre hay datos que sí deben estar ahí —un catálogo público, los vectores oficiales de un validador, las actas donde alguien aparece por su cargo—. El reporte ya decía «exenta el archivo CON SU MOTIVO», pero no decía cómo, y escribir el YAML de memoria es fricción; la fricción termina en «mejor apago el paso».

```bash
garita --proponer-exenciones     # escribe el bloque; el motivo lo escribes tú
```

Imprime el bloque listo para pegar, agrupado por archivo y acotado a los detectores que dispararon, **con el motivo en blanco**.

Lo importante es que el circuito ya cerraba solo: **un motivo vacío es código 2**, así que el esqueleto no se puede pegar y olvidar — detiene a Garita en vez de callarla. Quien lo llena está escribiendo la justificación que dentro de un año permitirá evaluar si la exención sigue valiendo.

No imprime ningún valor (la exención se define por archivo y detector), y no se combina con `--historial`, `--linea-base` ni los formatos de documento: como `--explicar`, rechaza con 2 lo que no va a cumplir.

Seis pruebas nuevas (276 en total).
