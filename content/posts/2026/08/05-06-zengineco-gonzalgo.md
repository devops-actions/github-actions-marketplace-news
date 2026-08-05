---
title: Gonzalgo trust audit
date: 2026-08-05 06:04:52 +00:00
tags:
  - zengineco
  - GitHub Actions
draft: false
repo: https://github.com/zengineco/gonzalgo
marketplace: https://github.com/marketplace/actions/gonzalgo-trust-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  `gonzalgo` is a Python tool that helps developers understand how Lean theorems depend on axioms and other assumptions. It can identify if a theorem relies on `sorry` statements, detect where an axiom is inherited from dependencies, and help determine which steps introduced specific axioms into proofs. The action also allows for automated checks to fail builds when certain axioms are used in incomplete or unproven code.
---


Version updated for **https://github.com/zengineco/gonzalgo** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gonzalgo-trust-audit) to find the latest changes.

## Action Summary

`gonzalgo` is a Python tool that helps developers understand how Lean theorems depend on axioms and other assumptions. It can identify if a theorem relies on `sorry` statements, detect where an axiom is inherited from dependencies, and help determine which steps introduced specific axioms into proofs. The action also allows for automated checks to fail builds when certain axioms are used in incomplete or unproven code.

## What's Changed

Composite GitHub Action: fails a Lean 4 build when any theorem rests on an unfinished proof or on trusting the compiler rather than the kernel. Verified in CI against a clean project and one whose sorry is two steps upstream -- Lean reports one warning, the audit finds two contaminated theorems.
