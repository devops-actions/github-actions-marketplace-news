---
title: Doc Pilot Gate
date: 2026-04-20 14:28:51 +00:00
tags:
  - UnguisAI
  - GitHub Actions
draft: false
repo: https://github.com/UnguisAI/docpilot
marketplace: https://github.com/marketplace/actions/doc-pilot-gate
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/UnguisAI/docpilot** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/doc-pilot-gate) to find the latest changes.

## Action Summary

DocPilot is a GitHub Action designed to automate the detection of missing documentation updates in pull requests, such as changes to README files, changelogs, or other key documentation directories. It helps teams maintain release hygiene by flagging documentation gaps and suggesting updates directly within the PR workflow. By integrating seamlessly with existing repositories and workflows, it ensures documentation stays aligned with code changes, eliminating the need for a separate platform or manual checks.

## What's Changed

DocPilot Docs Gate v1.0.1

DocPilot Docs Gate is a GitHub Action that catches missing documentation updates before merge.

It checks pull requests for missing updates across:

README.md
docs/
CHANGELOG.md
UPGRADING.md
high-signal doc-rich directories discovered automatically
Why this release

This release updates the Marketplace-facing action metadata so the listing uses a unique publishable name:

from DocPilot
to DocPilot Docs Gate
This fixes the Marketplace naming conflict and keeps the action ready for publication.

What the action does

flags missing README, docs, changelog, and upgrade-guide updates
starts safely in read-only report mode
can later post PR comments or auto-update docs
works inside your existing GitHub PR workflow
uses your own OpenAI API key
Recommended first use

Start with report mode for a safe trial, then enable comments or auto-updates if the workflow fits your repo.

Source and development repo

This repository is the action-only Marketplace distribution.

Source repo:
https://github.com/goat-ai-claw/docpilot
