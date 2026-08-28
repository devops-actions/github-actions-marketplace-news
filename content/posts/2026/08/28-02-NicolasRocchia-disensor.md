---
title: Disensor Gate
date: 2026-08-28 02:02:17 +00:00
tags:
  - NicolasRocchia
  - GitHub Actions
draft: false
repo: https://github.com/NicolasRocchia/disensor
marketplace: https://github.com/marketplace/actions/disensor-gate
version: v0.9.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates adversarial plan and code review with residue declaration. It uses a controlled disagreement method to validate and close reviews automatically with CI gates, ensuring each finding is resolved, refuted with evidence, or escalated to human judgment. The action records how each event ends, including findings' terminal states and residue, which aims at human reviewer scrutiny instead of quality seals.
---


Version updated for **https://github.com/NicolasRocchia/disensor** to version **v0.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/disensor-gate) to find the latest changes.

## Action Summary

This GitHub Action automates adversarial plan and code review with residue declaration. It uses a controlled disagreement method to validate and close reviews automatically with CI gates, ensuring each finding is resolved, refuted with evidence, or escalated to human judgment. The action records how each event ends, including findings' terminal states and residue, which aims at human reviewer scrutiny instead of quality seals.

## What's Changed

La ronda orquestada: disensor arma el paquete, corre al revisor, mide el árbol y ancla el resultado. El usuario no copia y pega nada entre modelos. Cualquier CLI puede ser el revisor; residue/v0.4 declara la independencia y hace declarable el modo degradado.
