---
title: TODO NUKEM PR Ticket Link
date: 2026-03-27 21:45:04 +00:00
tags:
  - jolution
  - GitHub Actions
draft: false
repo: https://github.com/jolution/todo-nukem-pr-ticket-link
marketplace: https://github.com/marketplace/actions/todo-nukem-pr-ticket-link
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jolution/todo-nukem-pr-ticket-link** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/todo-nukem-pr-ticket-link) to find the latest changes.

## Action Summary

The **TODO NUKEM - PR Ticket Link Action** automates the process of appending ticket links to pull request descriptions based on ticket IDs extracted from branch names. It ensures consistent and traceable references to project management tools like JIRA or Azure DevOps, improving collaboration and workflow transparency. Key capabilities include customizable ticket link formatting and support for different ticketing systems.

## Release notes

## 🎫 TODO NUKEM PR Ticket Link – v1.0.0

Automatically adds ticket links to Pull Request descriptions based on branch names.

### Features

- Extracts ticket numbers from branch names (e.g. `feature/PROJ-123-my-feature` → `#123`)
- Appends a ticket link to the PR description (only once, duplicate-safe)
- Supports **Markdown links** (default) and **plaintext** (e.g. for Azure DevOps auto-linking via `AB#123`)
- Configurable via `package.json`, `.todonukem.json`, or `.todonukem-local.json`
- Optional `ticketPrefix` for display (e.g. `AB#123`)
- Optional promotion link can be hidden via `hidePromotion: true`
