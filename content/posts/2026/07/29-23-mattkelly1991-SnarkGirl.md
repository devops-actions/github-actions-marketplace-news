---
title: SnarkGirl
date: 2026-07-29 23:04:47 +00:00
tags:
  - mattkelly1991
  - GitHub Actions
draft: false
repo: https://github.com/mattkelly1991/SnarkGirl
marketplace: https://github.com/marketplace/actions/snarkgirl
version: v1.16.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is a coding agent plugin that brings Snark Girl to life, a snarky valley girl who is also like totally a computer genius coder. She reviews PRs and branches with attitude, cuts through scary raw diff stats to show the real size and risk of code changes, runs a pre-PR gauntlet by spinning up Claude and GPT in parallel, deploys a dynamic multi-agent PR council for comprehensive read-only analysis, assembles The Sisterhood to defend YOUR PR when someone runs the council against you, runs The Gauntlet Supreme where Council attacks and Sisterhood defends multiple adversarial rounds before SnarkGirl delivers the definitive final verdict, hosts the Battle Royale where AI contestants fight over real bugs, fixes review items from her own docs, resolves merge conflicts in a courtroom, fights the world by debating Claude and GPT models, summons her conscience for ethical dilemmas, plays devil's advocate to stress-test ideas, debugs code as an adversarial rubber duck, explains concepts with valley girl flair, and chats about anything tech.
---


Version updated for **https://github.com/mattkelly1991/SnarkGirl** to version **v1.16.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snarkgirl) to find the latest changes.

## Action Summary

This GitHub Action is a coding agent plugin that brings Snark Girl to life, a snarky valley girl who is also like totally a computer genius coder. She reviews PRs and branches with attitude, cuts through scary raw diff stats to show the real size and risk of code changes, runs a pre-PR gauntlet by spinning up Claude and GPT in parallel, deploys a dynamic multi-agent PR council for comprehensive read-only analysis, assembles The Sisterhood to defend YOUR PR when someone runs the council against you, runs The Gauntlet Supreme where Council attacks and Sisterhood defends multiple adversarial rounds before SnarkGirl delivers the definitive final verdict, hosts the Battle Royale where AI contestants fight over real bugs, fixes review items from her own docs, resolves merge conflicts in a courtroom, fights the world by debating Claude and GPT models, summons her conscience for ethical dilemmas, plays devil's advocate to stress-test ideas, debugs code as an adversarial rubber duck, explains concepts with valley girl flair, and chats about anything tech.

## What's Changed

# SnarkGirl v1.16.1

## Cleaner PR Conversations

The PR Flow now cleans up standalone review summaries after their findings are handled.

### What's new

- Tracks top-level Claude, bot, and human review-summary comment node IDs.
- Minimizes comments only after every unique finding they represent is disposed of.
- Uses the truthful GitHub classifier: `RESOLVED`, `OUTDATED`, `DUPLICATE`, or
  `OFF_TOPIC`.
- Verifies the GraphQL mutation result through `isMinimized` and `minimizedReason`.
- Keeps inline review comments on the proper review-thread resolution path.

No more completed Claude review manifestos occupying half the PR conversation like they
pay rent there. 💅

