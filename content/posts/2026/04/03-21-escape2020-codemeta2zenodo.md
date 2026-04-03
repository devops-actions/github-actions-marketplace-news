---
title: CodeMeta to Zenodo Converter
date: 2026-04-03 21:45:57 +00:00
tags:
  - escape2020
  - GitHub Actions
draft: false
repo: https://github.com/escape2020/codemeta2zenodo
marketplace: https://github.com/marketplace/actions/codemeta-to-zenodo-converter
version: v1.3.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/escape2020/codemeta2zenodo** to version **v1.3.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codemeta-to-zenodo-converter) to find the latest changes.

## Action Summary

The "CodeMeta to Zenodo Converter" GitHub Action automates the conversion of `codemeta.json` metadata files into the `.zenodo.json` format using the eOSSR library. It streamlines the process of generating Zenodo-compatible metadata for software releases, ensuring compliance with Zenodo's schema and supporting features like metadata validation and optional ESCAPE2020 community integration. This action helps developers efficiently manage metadata for archiving and citation purposes in research and software projects.

## What's Changed

The v1.3.0 uses eossr v2.3.0, which improved a few points on metadata support:

* Add CodeMeta v3.0 support in metadata conversion
* CodeMeta maintainer is converted to Zenodo ContactPerson
* supports convert legalName from Organization
* supports `@id` in Person to be an ORCID id 
