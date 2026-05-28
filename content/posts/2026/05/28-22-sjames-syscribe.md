---
title: Validate Syscribe Model
date: 2026-05-28 22:57:03 +00:00
tags:
  - sjames
  - GitHub Actions
draft: false
repo: https://github.com/sjames/syscribe
marketplace: https://github.com/marketplace/actions/validate-syscribe-model
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sjames/syscribe** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/validate-syscribe-model) to find the latest changes.

## Action Summary

Syscribe is a GitHub Action designed to enable human-readable, LLM-friendly, and version-controlled systems modeling using Markdown and YAML instead of proprietary or complex formats. It automates the creation, validation, and traceability of SysMLv2 models, integrating seamlessly with Git workflows while supporting comprehensive modeling constructs like requirements, test cases, architecture decisions, and safety/security analyses. By leveraging plain text files, Syscribe enhances collaboration, simplifies tool integration, and improves accessibility for humans and AI systems alike.

## What's Changed

- chore: bump version to 0.2.0 (81b1a3c)
- Update CLAUDE.md examples to use -m flag for model root (83acc0a)
- Remove positional model root arg; add -m short flag (b5d5bbe)
- Enrich model_auto documentation with detailed engineering content (3aa33f2)
- Add --model flag and SYSCRIBE_MODEL env var for model root (97a44c6)
- Add model_auto and model_sil example models (b6cec98)
- Add syscribe spec subcommand for browsing the format specification (68ce074)
- Add safety/security graph edges, Vec allocatedFrom/To, and disclaimer (b6f84a6)
- Add Part 7b: leaf PartDef closure pass to agent instructions (a043e29)
- Fix demo model regressions from new integrity-level rules (81aeb7d)
