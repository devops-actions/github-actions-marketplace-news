---
title: Resolve affected apps
date: 2026-04-22 06:23:36 +00:00
tags:
  - rogiervanstraten
  - GitHub Actions
draft: false
repo: https://github.com/rogiervanstraten/nx-resolve-affected
marketplace: https://github.com/marketplace/actions/resolve-affected-apps
version: v0.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/rogiervanstraten/nx-resolve-affected** to version **v0.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/resolve-affected-apps) to find the latest changes.

## Action Summary

The `nx-resolve-affected` GitHub Action automates the creation of a deployment matrix for NX-based monorepos, identifying which apps in the repository need redeployment based on their last successful deployment SHA. It solves the problem of incorrectly using a single base SHA for all apps by determining the base SHA per app, ensuring only affected apps are included in the deployment matrix. This action streamlines deployment workflows in environments where different apps within a monorepo have varying deployment frequencies.

## What's Changed

First public release of `nx-resolve-affected`: a GitHub Action that builds an
NX deploy matrix for a monorepo, with a **separate base SHA per app**.

In a multi-app monorepo, _what changed_ depends on which app you ask. App A
deployed this morning; App B hasn't shipped in a month. A single base SHA is
wrong for at least one of them. This action asks GitHub Deployments for each
app's last successful deploy SHA and runs `nx show projects --affected`
against _that_ SHA per app — so the matrix only contains apps that genuinely
need redeploying.

**Full Changelog**: https://github.com/rogiervanstraten/nx-resolve-affected/commits/v0.0.1
