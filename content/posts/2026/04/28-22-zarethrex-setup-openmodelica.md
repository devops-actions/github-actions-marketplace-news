---
title: Setup OpenModelica
date: 2026-04-28 22:03:34 +00:00
tags:
  - zarethrex
  - GitHub Actions
draft: false
repo: https://github.com/zarethrex/setup-openmodelica
marketplace: https://github.com/marketplace/actions/setup-openmodelica
version: v2
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/zarethrex/setup-openmodelica** to version **v2**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-openmodelica) to find the latest changes.

## Action Summary

The **OpenModelica Install & Run Action** automates the setup and execution of the OpenModelica compiler within GitHub Actions workflows. It installs the OpenModelica toolchain and specified Modelica libraries, adds the `omc` executable to the system `PATH`, and allows users to compile and simulate Modelica models or execute Modelica scripts. This action streamlines tasks related to Modelica model simulation and testing, reducing manual setup and ensuring consistency across CI/CD pipelines.

## What's Changed

Action will no longer try to guess which model script is used when none is provided, will setup OMC only.
