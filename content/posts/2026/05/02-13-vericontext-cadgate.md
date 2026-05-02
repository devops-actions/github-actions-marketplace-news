---
title: CADGate
date: 2026-05-02 13:39:58 +00:00
tags:
  - vericontext
  - GitHub Actions
draft: false
repo: https://github.com/vericontext/cadgate
marketplace: https://github.com/marketplace/actions/cadgate
version: v0.4.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vericontext/cadgate** to version **v0.4.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cadgate) to find the latest changes.

## Action Summary

CADGate is a GitHub Action designed to validate AI-generated parametric CAD-as-code pull requests, ensuring geometry matches design intent and adherence to design-for-manufacturability (DFM) rules. It automates tasks such as geometric metric comparisons, rule enforcement, and generating rendered previews, while leveraging an AI-powered judge to cross-reference CAD geometry with human-authored PR descriptions for discrepancies. This action helps streamline the review process for hardware repositories, reducing errors in CAD designs and improving collaboration efficiency.

## What's Changed

**Patch release. No functional changes vs v0.4.2.** Binary, MCP tool surface, and GitHub Action inputs/outputs are byte-for-byte identical.

## What changed

GitHub Marketplace caps `action.yml`'s `description` field at **125 characters** — the v0.4.2 description (~190 chars) was rejected by the publish flow. Compressed to 108 chars:

> Validate AI-generated CAD PRs (CadQuery/Build123d): metric diff, DFM rules, 6-view renders, LLM intent judge.

Trade-offs in the rewrite:
- `"an opt-in LLM judge that compares head geometry against the PR description"` → `"LLM intent judge"` (–63 chars). Still names the killer feature; *"intent"* hints at what the judge actually checks (geometry vs PR text).
- `"AI-generated CAD-as-code PRs"` → `"AI-generated CAD PRs"` (–8 chars). The "-as-code" qualifier is implied by listing CadQuery/Build123d.
- `"geometric metric diff"` → `"metric diff"` (–10 chars).
- em-dash → colon. Punchier in the constrained space and dodges the edge case of GitHub counting unicode codepoints vs bytes.

`package.json` bumped to 0.4.3 to match the tag. This release exists *only* so the GitHub Marketplace publish flow — which validates description length against `action.yml` at the release's tagged commit, not at `main` — can succeed.

## Migration

None. Existing workflows pinning `@v0.4.0`, `@v0.4.1`, or `@v0.4.2` keep working unchanged. Bump to `@v0.4.3` only matters if you want Marketplace-aligned semantics.

**Full Changelog:** https://github.com/vericontext/cadgate/compare/v0.4.2...v0.4.3

