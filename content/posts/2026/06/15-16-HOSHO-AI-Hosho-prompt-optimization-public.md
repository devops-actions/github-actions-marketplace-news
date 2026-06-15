---
title: Hosho Prompt Reviewer
date: 2026-06-15 16:10:37 +00:00
tags:
  - HOSHO-AI
  - GitHub Actions
draft: false
repo: https://github.com/HOSHO-AI/Hosho-prompt-optimization-public
marketplace: https://github.com/marketplace/actions/hosho-prompt-reviewer
version: v1.36.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/HOSHO-AI/Hosho-prompt-optimization-public** to version **v1.36.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hosho-prompt-reviewer) to find the latest changes.

## What's Changed

## assembly_config + finding provenance

- **New `assembly_config` input** (optional): a minimal exception-list (`inject_when_referenced` + `require_reference`) that bundles shared reference docs (e.g. a security-rules doc referenced by path) into the reviewed prompt and runs deterministic, no-LLM convention checks. See README.
- **Finding provenance**: reviews now send a segment manifest so findings map back to the correct **source file + line**. A finding inside a bundled skill/reference is attributed to that file and marked out-of-scope when it isn't the file under review (snippet-anchored; falls back to file-level).
- **Back-compat**: no `assembly_config` ⇒ unchanged behavior; missing config/referenced files degrade gracefully.

Pairs with the engine-side provenance + prompt-hygiene changes.
