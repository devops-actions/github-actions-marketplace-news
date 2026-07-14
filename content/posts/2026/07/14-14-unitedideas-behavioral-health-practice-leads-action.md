---
title: New Behavioral Health Practices Weekly
date: 2026-07-14 14:57:00 +00:00
tags:
  - unitedideas
  - GitHub Actions
draft: false
repo: https://github.com/unitedideas/behavioral-health-practice-leads-action
marketplace: https://github.com/marketplace/actions/new-behavioral-health-practices-weekly
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action fetches behavioral-health NPIs from the latest CMS weekly file using the New Behavioral Health Practices Weekly actor. It exports these NPIs as clean JSON in a workflow, with options to run it as a free preview or a full edition that charges $9 per event. The action is designed to help organizations monitor and manage behavioral health practices efficiently within their workflows.
---


Version updated for **https://github.com/unitedideas/behavioral-health-practice-leads-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/new-behavioral-health-practices-weekly) to find the latest changes.

## Action Summary

This GitHub Action fetches behavioral-health NPIs from the latest CMS weekly file using the New Behavioral Health Practices Weekly actor. It exports these NPIs as clean JSON in a workflow, with options to run it as a free preview or a full edition that charges $9 per event. The action is designed to help organizations monitor and manage behavioral health practices efficiently within their workflows.

## What's Changed

Publishes the cost-capped Action to GitHub Marketplace.

- Preview is the default and returns a deterministic 15-row sample.
- Full editions require an explicit $9.25 total-charge cap and charge the $9 weekly-edition event only after validation.
- Buyer credentials stay in GitHub Secrets and are sent only in the Apify Authorization header.
- Delivered JSON stays in the caller's workflow workspace; the Action does not send messages, commit files, or perform outreach.

Store and Actor details: https://apify.com/actablesite/new-behavioral-health-practices-actor
