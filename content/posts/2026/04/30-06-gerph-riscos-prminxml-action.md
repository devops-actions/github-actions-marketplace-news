---
title: RISC OS PRM-in-XML builder
date: 2026-04-30 06:02:49 +00:00
tags:
  - gerph
  - GitHub Actions
draft: false
repo: https://github.com/gerph/riscos-prminxml-action
marketplace: https://github.com/marketplace/actions/risc-os-prm-in-xml-builder
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gerph/riscos-prminxml-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/risc-os-prm-in-xml-builder) to find the latest changes.

## Action Summary

The **PRM-in-XML GitHub Action** automates the process of converting PRM-in-XML documents into documentation formats such as HTML and optionally PDF. It handles tasks like installing dependencies, linting XML files, and generating output files, streamlining the creation of modern, structured documentation directly within GitHub workflows. This action simplifies documentation management by ensuring consistent, automated builds and supports optional PDF generation via Prince XML or WeasyPrint.

## What's Changed

Initial release of the RISC OS PRM-in-XML documentation generation action.

Features:

* Generate documentation for multiple files.
* Optional PDF generation (Prince XML and Weasy Print).
* Explicit override of parameters, including the CSS variant.
* Multi-document compilation into a single PDF ('indexed' format).
* Shortcut styles for common formats.

Consult the [source repository](https://github.com/gerph/riscos-build-service-action) for full details of options.
Tool documentation can be found in its [source repository](https://github.com/gerph/riscos-prminxml-tool).

To build with PDF output using Prince XML, a licence is required (personal and non-commercial use is a valid use of Prince XML - see https://www.princexml.com/purchase/license_faq/). Your selection of `prince` as a generator implies the agreement that you have a valid licence.
