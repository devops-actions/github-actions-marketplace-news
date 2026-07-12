---
title: Publish to FlatPark
date: 2026-07-12 06:18:14 +00:00
tags:
  - flatpark
  - GitHub Actions
draft: false
repo: https://github.com/flatpark/publish-action
marketplace: https://github.com/marketplace/actions/publish-to-flatpark
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/flatpark/publish-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-to-flatpark) to find the latest changes.

## What's Changed

First public release of **Publish to FlatPark** 🎉

Add five lines to your release workflow and your Linux users get the Flatpak update the same day you publish a release — no tokens, no manifest, no build infrastructure:

~~~yaml
on:
  release:
    types: [published]

jobs:
  flatpak:
    runs-on: ubuntu-latest
    # A FlatPark hiccup should never fail your release.
    continue-on-error: true
    steps:
      - uses: flatpark/publish-action@v1
        with:
          app-id: com.example.MyApp
~~~

## What it does

On release, the action notifies [FlatPark](https://flatpark.org), which re-resolves your latest release artifacts and ships the update to its Flatpak repository — where `flatpak update` delivers it to every installed user.

## No secrets required

The webhook trusts nothing at face value: it verifies the app id against FlatPark's public catalog, confirms this repository is the app's registered upstream, and checks the tag exists as a real GitHub release — only then does FlatPark trigger its own pipeline with its own credentials. Nobody can use this endpoint to publish releases for a repository they don't control.

## Requirements

Your app must be listed on FlatPark first — [open an issue](https://github.com/flatpark/flatpark/issues) to get it added. Apps shipping official Linux binaries (AppImage, deb, zip, tarball) usually take a day to package.

---

*v1.0.1 fixes the action metadata for Marketplace listing; functionally identical to v1.0.0. Pin `@v1` to always get the latest v1.x.*
