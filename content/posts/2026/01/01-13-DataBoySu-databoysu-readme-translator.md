---
title: DataBoySu Readme Translator
date: 2026-01-01 13:10:43 +00:00
tags:
  - DataBoySu
  - GitHub Actions
draft: false
repo: https://github.com/DataBoySu/databoysu-readme-translator
marketplace: https://github.com/marketplace/actions/databoysu-readme-translator
version: v2.1.1
dependentsNumber: "?"
---


Version updated for **https://github.com/DataBoySu/databoysu-readme-translator** to version **v2.1.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/databoysu-readme-translator) to find the latest changes.

## Action Summary

This GitHub Action simplifies the process of translating a repository's README file into multiple languages and automatically adds a language navigation bar for improved accessibility. It automates the end-to-end translation workflow using a privacy-focused pipeline that runs entirely on GitHub Runners, ensuring secure and efficient localization. Designed to handle complex technical documents, the tool provides high-quality translations while preserving key content structure, making it ideal for developers aiming to enhance multilingual support in their repositories.

## Release notes

## Changelog 
 
- Logging added for prompt guidance
- Spanish prompt guidance added

> [!NOTE] 
> This pipeline will suit 99% of the GitHub Projects, completely translating your README \
> Some parts will be left untranslated, but that's intentional as either that part had **IMPORTANT** content, not safe for an automated translation or had ambiguous context. \
> To prevent garbage values and hallucination, I have a rollback option to revert translation of that particular segment. \
> To use this pipeline for custom purposes, simply fork it and edit the .txt files in the scripts folder for custom prompt guidance.
