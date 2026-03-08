---
title: SWEny AI
date: 2026-03-08 21:21:44 +00:00
tags:
  - swenyai
  - GitHub Actions
draft: false
repo: https://github.com/swenyai/sweny
marketplace: https://github.com/marketplace/actions/sweny-ai
version: sweny-ai/providers0.2.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/swenyai/sweny** to version **@sweny-ai/providers@0.2.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sweny-ai) to find the latest changes.

## Action Summary

SWEny is a GitHub Action and workflow platform designed to automate engineering tasks by integrating with various tools, analyzing data through AI, and performing actions like issue triage, ticket creation, and code fixes. It enables users to build customizable workflows with three phases: learning from system inputs, taking AI-driven actions, and reporting results through multiple channels (e.g., Slack, email, GitHub). SWEny simplifies SRE triage and incident management, reducing manual intervention and providing actionable insights and solutions.

## Release notes

### Patch Changes

-   d552edb: Add `description` field to the `Issue` interface. This field was used internally by the engine but missing from the type definition, causing TypeScript errors when accessing `issue.description`.

