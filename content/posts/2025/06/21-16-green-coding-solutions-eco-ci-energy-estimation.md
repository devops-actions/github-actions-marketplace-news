---
title: Eco CI Energy Estimation
date: 2025-06-21 16:57:58 +00:00
tags:
  - green-coding-solutions
  - GitHub Actions
draft: false
repo: https://github.com/green-coding-solutions/eco-ci-energy-estimation
marketplace: https://github.com/marketplace/actions/eco-ci-energy-estimation
version: v5
dependentsNumber: "0"
---


Version updated for **https://github.com/green-coding-solutions/eco-ci-energy-estimation** to version **v5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eco-ci-energy-estimation) to find the latest changes.

## Release notes

Electricity Maps gave us quite some trouble in the last months :(

Sadly they have not continued their offering for a free worldwide CO2 grid intensity through their API. The product was called "CO2 Signal" at the time of launch but discontinued.

The reality for Eco CI was: No more location based carbon intensity data and thus no more CO2 display at all :( :(

Thanks to the idea from @mrchrisadams we have now integrated a constant grid intensity option that is actually the default.
The default from Eco-CI is 472, which is the worldwide average value from Ember compiled by The Green Web Foundation from https://github.com/thegreenwebfoundation/co2.js/blob/main/data/output/average-intensities.json#L1314

[Read up in the readme](https://github.com/green-coding-solutions/eco-ci-energy-estimation?tab=readme-ov-file#github-action-mandatory-and-optional-variables) if you still want to continue location based data with APIs like ElectricityMaps if you have a global premium key.

## What's Changed
* Adding possiblity to use constant CO2 value by @ArneTR in https://github.com/green-coding-solutions/eco-ci-energy-estimation/pull/132


**Full Changelog**: https://github.com/green-coding-solutions/eco-ci-energy-estimation/compare/v4.7...v5.0
