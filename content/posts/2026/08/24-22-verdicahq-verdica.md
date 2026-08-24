---
title: Verdica Decision Gate
date: 2026-08-24 22:43:00 +00:00
tags:
  - verdicahq
  - GitHub Actions
draft: false
repo: https://github.com/verdicahq/verdica
marketplace: https://github.com/marketplace/actions/verdica-decision-gate
version: v0.11.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Verdica is a GitHub Action that helps teams enforce architectural decisions by using files in the repository to track them. It ensures that changes conform to previously established design choices, enhancing code quality and preventing accidental violations. The action integrates with a language model (Mistral API) to automatically assess whether pull requests align with recorded decisions, providing clear feedback on potential issues before they are merged.
---


Version updated for **https://github.com/verdicahq/verdica** to version **v0.11.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verdica-decision-gate) to find the latest changes.

## Action Summary

Verdica is a GitHub Action that helps teams enforce architectural decisions by using files in the repository to track them. It ensures that changes conform to previously established design choices, enhancing code quality and preventing accidental violations. The action integrates with a language model (Mistral API) to automatically assess whether pull requests align with recorded decisions, providing clear feedback on potential issues before they are merged.

## What's Changed

Decisions declare their nature: standing choice or temporary tradeoff with a revisit_when condition. The distiller classifies it, the gate labels it, the digest resurfaces open tradeoffs. Born from field feedback on the first hosted deployment (DEC-0011).
