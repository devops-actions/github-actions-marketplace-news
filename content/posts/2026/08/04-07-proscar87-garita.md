---
title: Garita PII Guard
date: 2026-08-04 07:22:16 +00:00
tags:
  - proscar87
  - GitHub Actions
draft: false
repo: https://github.com/proscar87/garita
marketplace: https://github.com/marketplace/actions/garita-pii-guard
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Garita is a GitHub Action that blocks sensitive personal data and credentials from entering your repository by comparing them against predefined patterns or lists. It helps prevent the inclusion of PII like names, CURPs, RFCs, CLABEs, NSSs, Mexican phone numbers, secrets, and sensitive configurations in version-controlled files. The tool uses regular expressions to identify and block sensitive data, providing a secure way to manage project information without exposing personal identifiable information.
---


Version updated for **https://github.com/proscar87/garita** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/garita-pii-guard) to find the latest changes.

## Action Summary

Garita is a GitHub Action that blocks sensitive personal data and credentials from entering your repository by comparing them against predefined patterns or lists. It helps prevent the inclusion of PII like names, CURPs, RFCs, CLABEs, NSSs, Mexican phone numbers, secrets, and sensitive configurations in version-controlled files. The tool uses regular expressions to identify and block sensitive data, providing a secure way to manage project information without exposing personal identifiable information.

## What's Changed

Dos frentes, ambos con evidencia de repos reales:

## Calibración de datos raspados

Un repo de scraping enseñó dos clases de falso positivo nuevas: los **segmentos de dígitos en URLs de CDN** (un ID de foto de Instagram pasa el módulo de la CLABE y el catálogo de bancos) y las **marcas de tiempo de 14 dígitos** (un timestamp del Wayback Machine pasa el doble módulo 11 del CNPJ). Dos reglas con principio:

- **Dentro de una URL, el hallazgo baja a aviso** — no se calla, porque una CLABE en la ruta de un API sí puede ser fuga real y cegarse está prohibido; pero tampoco rompe el build por cada foto raspada. Aplica a todos los detectores de identificadores.
- **CNPJ pelón exige que lo nombren** — la misma medicina que ya tomaba el CPF, por otra enfermedad. Con la puntuación oficial (`12.345.678/0001-XX`) dispara solo.

El repo que originó el reporte pasó de 5 errores a **0**, con todo el ruido degradado a avisos visibles. Los 10 proyectos de control: idénticos a la base, 0 errores.

## Dos países más: 🇪🇨 🇩🇴

- **Ecuador — cédula**: módulo 10 del Registro Civil (coeficientes 2-1-2-1…), con estructura de provincia (01-24, 30) y tercer dígito de persona natural.
- **Rep. Dominicana — cédula**: el Luhn de la JCE, formato `001-1234567-8`.

Ambas con contexto obligatorio: diez u once dígitos pelones compiten con teléfonos y folios, y en ningún país se escribe una cédula sin llamarla cédula.

Son **trece países**: 🇲🇽 🇦🇷 🇧🇷 🇨🇱 🇨🇴 🇪🇨 🇪🇸 🇵🇪 🇺🇾 🇩🇴 🇺🇸 🇨🇦 🇵🇹

**Instalación**: `pip install garita` · Action `proscar87/garita@v0` · pre-commit `rev: v0.7.0`

