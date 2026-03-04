---
title: Sarthak AI Code Reviewer
date: 2026-03-04 21:26:58 +00:00
tags:
  - sarthakagrawal927
  - GitHub Actions
draft: false
repo: https://github.com/sarthakagrawal927/code-reviewer-action
marketplace: https://github.com/marketplace/actions/sarthak-ai-code-reviewer
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sarthakagrawal927/code-reviewer-action** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sarthak-ai-code-reviewer) to find the latest changes.

## Action Summary

The AI Code Reviewer (Enterprise v1) GitHub Action automates pull request reviews by integrating with an enterprise control plane, providing AI-driven review capabilities. It facilitates tasks such as workspace role-based access control (RBAC), review tracking, and webhook ingestion while offering a dashboard for management and API integration for seamless workflow automation. This action streamlines PR workflows, enhances traceability, and ensures secure handling of review processes.

## Release notes

## CodeVetter v2.0.0

Full platform release.

### What's live
- **API**: `api.codevetter.com` — GitHub OAuth, workspace management, PR webhook ingestion, review queue
- **Dashboard**: `app.codevetter.com` — workspace overview, repository sync, review triggers
- **Review Worker**: Cloudflare Scheduled Worker (every minute) — pulls jobs, fetches PR diffs via GitHub App, runs AI review via Groq (llama-3.3-70b-versatile), posts inline comments
- **Landing**: `codevetter.com`

### How to connect
1. Install the GitHub App: `https://github.com/apps/core-reviewer/installations/new`
2. Sign in at `app.codevetter.com`
3. Create a workspace → GitHub Sync → enter installation ID
4. PRs are reviewed automatically on open/push
