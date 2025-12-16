---
title: Postman to k6 Load Testing
date: 2025-12-16 13:08:36 +00:00
tags:
  - ABNclearroute
  - GitHub Actions
draft: false
repo: https://github.com/ABNclearroute/postman-to-k6-action
marketplace: https://github.com/marketplace/actions/postman-to-k6-load-testing
version: 1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/ABNclearroute/postman-to-k6-action** to version **1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/postman-to-k6-load-testing) to find the latest changes.

## Release notes

Here are concise release notes for the AI features:
Added optional API metadata support (api-metadata-file) so AI load profiles consider domain, business impact, and endpoint criticality; includes example file api-metadata.example.json.
Improved collection analysis to include request URLs and metadata-aware summaries, enabling domain inference when metadata is absent.
Enhanced AI load profile prompt and generator to factor in domain context, criticality, peak hours, and traffic expectations; generator now accepts an optional metadata file.
Added metadata parser (scripts/parse-metadata.js) with domain inference fallback and endpoint matching for richer AI context.
Documented prompts and workflows: new AI-PROMPTS.md, expanded AI-FEATURES.md, and METADATA-FEATURE.md; README updated with the new input.
Updated action workflow (action.yml) to pass metadata into AI profile generation and added logging around metadata usage.
Fixed domain inference bug in extractDomainFromUrl, restoring URL-based domain detection when metadata is not provided.
