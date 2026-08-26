---
title: citeguard — retracted citation checker
date: 2026-08-26 22:38:25 +00:00
tags:
  - wedo911
  - GitHub Actions
draft: false
repo: https://github.com/wedo911/citeguard
marketplace: https://github.com/marketplace/actions/citeguard-retracted-citation-checker
version: v0.1.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification of citations in academic papers and research outputs by checking against Crossref's real API to detect retracted publications. It provides a simple command-line interface and integrates with MCP servers for automated checks, ensuring that retractions are accurately flagged before being included in documents or reviews. The action helps researchers maintain up-to-date and accurate bibliographies by reducing the risk of citing retracted papers.
---


Version updated for **https://github.com/wedo911/citeguard** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/citeguard-retracted-citation-checker) to find the latest changes.

## Action Summary

This GitHub Action automates the verification of citations in academic papers and research outputs by checking against Crossref's real API to detect retracted publications. It provides a simple command-line interface and integrates with MCP servers for automated checks, ensuring that retractions are accurately flagged before being included in documents or reviews. The action helps researchers maintain up-to-date and accurate bibliographies by reducing the risk of citing retracted papers.

## What's Changed

Adds `CITATION.cff`, so the repository is formally citable: GitHub renders a **Cite this repository** button from it, and it is the metadata Zenodo reads when archiving a release and minting a DOI.

**No functional change.** The detection logic, the CLI, the MCP server and the Action are byte-identical to v0.1.1. This release exists to produce an archived, citable snapshot.

### Verification

All checks were run locally before tagging:

- 55 Python tests — passed
- 17 TypeScript tests — passed
- `CITATION.cff` — valid against CFF schema 1.2.0

GitHub Actions did not pick up this commit (the two preceding runs ended in `startup_failure` and cancelled jobs, and no run was queued for this one) — an Actions-side issue, not a code failure; the same workflow passed on earlier commits and other repositories in this account ran fine at the same time. Noting it here rather than implying a green CI badge that was never produced.
