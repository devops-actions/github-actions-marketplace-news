---
title: Carbon-Aware Dispatcher
date: 2026-06-02 06:53:30 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.2.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.2.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

v1.2.2 — Cleaner routing chart
Minor refinement to the routing comparison panel from v1.2.1: removed the in-chart "avoided (dirtiest)" label. The chart is sorted by intensity, so the dirtiest zone is already obvious, and the chosen zone is still clearly marked.

```
Carbon-aware routing
--------------------------------------
  BR-NE   #.........    26 gCO2eq/kWh  <- routed here (cleanest)
  GB      ####......   175 gCO2eq/kWh
  AU-NSW  ##########   485 gCO2eq/kWh
--------------------------------------
Avoided up to 459 gCO2eq/kWh vs the dirtiest candidate (AU-NSW), ~95% lower
Routed zone is ~94% below the 450 gCO2eq/kWh global average
```
___
Full changelog: https://github.com/peterklingelhofer/carbon-aware-dispatcher/compare/v1.2.1...v1.2.2
