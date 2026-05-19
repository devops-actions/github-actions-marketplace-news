---
title: Ghcr.io Cleanup Action
date: 2026-05-19 15:24:52 +00:00
tags:
  - dataaxiom
  - GitHub Actions
draft: false
repo: https://github.com/dataaxiom/ghcr-cleanup-action
marketplace: https://github.com/marketplace/actions/ghcr-io-cleanup-action
version: v1.1.0
dependentsNumber: "891"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/dataaxiom/ghcr-cleanup-action** to version **v1.1.0**.

- This action is used across all versions by **891** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghcr-io-cleanup-action) to find the latest changes.

## Action Summary

The **GitHub Container Registry Image Cleanup Action** is a GitHub Action designed to automate the deletion of container images from the GitHub Container Registry (ghcr.io). It simplifies image management by supporting multi-architecture images, handling attestation and Sigstore cosign referrers, and providing flexible retention policies based on tag patterns, image age, or a specified number of recent images to retain. This action helps streamline repository maintenance by automating cleanup tasks, reducing storage usage, and ensuring better organization of container images.

## What's Changed

* fix: preserve OCI 1.1 subject-bearing referrers (cosign sigstore-bundles, attestations) during cleanup — were silently deleted as untagged  #71 
* fix: keep-n-tagged now gates untag operations; a matched tag is not stripped from an image that keep-n-tagged would protect (#99, #101)
* fix: shared multi-arch platform digests no longer cascade-deleted when one of multiple parent indexes is removed (#91)
* fix: delete-partial-images excludes fully ghost images #112 
* fix: Octokit error output visible at all log levels (was suppressed when log-level was error or warn)
* fix: expand-packages rejects fine-grained PATs upfront with a clear message
* fix: setFailed message no longer overwritten by an empty Error in early-failure paths
* feat: ReDoS guard on user-supplied regex (delete-tags, exclude-tags, package) when use-regex: true
* feat: code refactor/split, removal of anys where possible using typed classes
* chore(deps): Node.js 24
* docs: README rewrite + Limitations section (5,000-download undeletable policy, nested-manifest non-support)

