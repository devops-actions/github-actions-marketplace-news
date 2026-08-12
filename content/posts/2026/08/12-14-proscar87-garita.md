---
title: Garita PII Guard
date: 2026-08-12 14:58:34 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.33.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that prevents sensitive personal information and credentials from entering a repository. It checks for common identifiers such as CURP, RFC, CLABE, and phone numbers to ensure they are not included. Garita uses a single configuration file to specify which sensitive data should be blocked, making it easy to maintain and update without needing to modify the Git history.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.33.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that prevents sensitive personal information and credentials from entering a repository. It checks for common identifiers such as CURP, RFC, CLABE, and phone numbers to ensure they are not included. Garita uses a single configuration file to specify which sensitive data should be blocked, making it easy to maintain and update without needing to modify the Git history.

## What's Changed

El README prometía que «un identificador con dígito verificador no valida fuera de su país, así que no dispara». Es cierto entre familias distintas y **falso** dentro de una misma. Medido antes de tocar nada:

| Colisión | Cruce |
|---|---:|
| NIT guatemalteco ↔ RUC paraguayo (el mismo módulo 11, la misma base, las mismas palabras de contexto) | **100 %** |
| CUIT argentino ↔ RUC peruano (los mismos pesos; el prefijo 20 es válido en los dos) | **82.2 %** |
| Cédula ecuatoriana ↔ NIT colombiano («cédula» satisface el refuerzo del NIT base 9) | **8.3 %** |

El reporte emitía **dos hallazgos sobre el mismo número**, cada uno afirmando una nacionalidad distinta con la misma seguridad. Las dos no pueden ser ciertas, y quien lee no tiene cómo saber cuál lo es.

## Qué se hizo

La información para desambiguar **no está en el número**, así que no hay arreglo que la deduzca. Lo que sí se puede es dejar de fingir que la hay: cuando dos países reclaman el mismo valor en la misma línea se emite **un** hallazgo, con los candidatos nombrados y con el camino para volverlo inequívoco (`paises:`). Se conserva el de mayor severidad y, a igualdad, el primero por nombre de detector, para que la línea base y el SARIF sigan casando entre corridas.

La promesa falsa estaba en tres lugares —README, `paises/__init__.py` y `Config.paises`— y los tres quedaron corregidos con los porcentajes medidos.

## Lo que casi sale mal

La regla exige países **distintos**, y no es un detalle: la primera versión agrupaba por (archivo, línea, valor recortado) a secas, y al medirla contra un repositorio real **se comió un RFC**. El valor va recortado, así que el CURP y el RFC de una misma persona —que empiezan igual y pueden terminar igual— compartían clave. Dos documentos del mismo país no se contradicen: se suman.

## Verificación

322 pruebas, cuatro de ellas de contrapeso. Medido contra siete repositorios reales, incluidos los cuatro consumidores del tag `v0`: reportes byte a byte idénticos.
