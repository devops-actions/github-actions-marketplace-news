---
title: Cullit — AI Release Notes
date: 2026-06-20 22:11:37 +00:00
tags:
  - mttaylor
  - GitHub Actions
draft: false
repo: https://github.com/mttaylor/cullit
marketplace: https://github.com/marketplace/actions/cullit-ai-release-notes
version: v3.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mttaylor/cullit** to version **v3.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cullit-ai-release-notes) to find the latest changes.

## What's Changed

# Cullit v3.3.0 — Fully Open-Source Dashboard

This release completes the open-source alignment of the dashboard and API. Organization and team features are now available to everyone, all remaining paid-tier gating has been removed, and the docs and API surface have been brought up to date.

## ✨ Features

- **Open organization creation** — any authenticated user can now create an organization and use team workflows. The previous "Pro plan required" gate has been removed.
- **Team API keys for everyone** — team key provisioning no longer references subscriptions; create scoped keys to share access with your team.

## 🐛 Fixes & Cleanup

- Removed misleading "Pro plan" / "subscribe" messaging across the dashboard settings and team panels.
- Removed dead seat-picker billing code (seat counters, proration UI, upgrade/checkout handlers) from the dashboard.
- Dropped unused legacy paid-tier logic (`isPaidTier`, `PAID_TIERS`) from the API.
- Clarified that `orgs.tier` and `orgs.max_seats` are legacy, unenforced fields.

## 📚 Docs & API

- Updated the OpenAPI 3.1 spec so retired billing endpoints (`/v1/billing/*`) reflect their `410` / open-source compatibility behavior instead of describing active Stripe checkout.
- Refreshed the README API reference to include organization, GitHub App, and org-settings endpoints, and removed stale seat wording.
- Aligned `DATABASE.md` notes for legacy tier/seat columns.

## ✅ Quality

- All **671 tests** pass across 53 test files.
- Full monorepo build green (CLI, API, GitHub App, core, config, pro, licensed).

## 🙌 Contributors

- [@mttaylor](https://github.com/mttaylor)

---

**Full Changelog**: https://github.com/mttaylor/cullit/compare/v3.2.0...v3.3.0

