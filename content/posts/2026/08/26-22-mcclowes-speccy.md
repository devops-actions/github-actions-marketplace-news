---
title: Speccy API review
date: 2026-08-26 22:56:49 +00:00
tags:
  - mcclowes
  - GitHub Actions
draft: false
repo: https://github.com/mcclowes/speccy
marketplace: https://github.com/marketplace/actions/speccy-api-review
version: docusaurus-plugin-speccy0.13.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Speccy is an OpenAPI renderer that provides a React-based solution for rendering API specifications across various platforms such as web, macOS, and Docusaurus. It automates tasks like linting and diffing OpenAPI documents, making it easier to maintain consistent documentation and ensure compliance with the specification standard.
---


Version updated for **https://github.com/mcclowes/speccy** to version **docusaurus-plugin-speccy@0.13.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/speccy-api-review) to find the latest changes.

## Action Summary

Speccy is an OpenAPI renderer that provides a React-based solution for rendering API specifications across various platforms such as web, macOS, and Docusaurus. It automates tasks like linting and diffing OpenAPI documents, making it easier to maintain consistent documentation and ensure compliance with the specification standard.

## What's Changed

### Minor Changes

- [#62](https://github.com/mcclowes/speccy/pull/62) [`54e9a75`](https://github.com/mcclowes/speccy/commit/54e9a75688cb3f46ecbd5ab91f3599be2433ce32) Thanks [@mcclowes](https://github.com/mcclowes)! - Add a Webhooks reference page listing every webhook the API delivers.

  Webhooks still appear under their tag in the sidebar, but the Reference group now also links to `/reference/webhooks`, a single list of every webhook in the spec. The entry and its generated route appear only when the document declares webhooks.

### Patch Changes

- [#62](https://github.com/mcclowes/speccy/pull/62) [`ac83fee`](https://github.com/mcclowes/speccy/commit/ac83fee12fcf9b6575d88fa669980f59fa789859) Thanks [@mcclowes](https://github.com/mcclowes)! - Serve the published OpenAPI description under `docusaurus start`. The file was only emitted from `postBuild`, so the overview's link to it 404ed for the whole time an author worked locally. The plugin now writes the description into its generated files directory and mounts that directory on the dev server at the same URL.

  The overview card also shows the description's URL instead of a second "Open OpenAPI description" label, and opens it in a new tab rather than navigating the reader out of the docs.

- Updated dependencies [[`ac83fee`](https://github.com/mcclowes/speccy/commit/ac83fee12fcf9b6575d88fa669980f59fa789859), [`54e9a75`](https://github.com/mcclowes/speccy/commit/54e9a75688cb3f46ecbd5ab91f3599be2433ce32), [`8a798d1`](https://github.com/mcclowes/speccy/commit/8a798d1d0dc9c98d75ff8443d5069ea8d33ed927), [`eb610fc`](https://github.com/mcclowes/speccy/commit/eb610fc94281a40352b093746f2084c9368da817), [`1e75c06`](https://github.com/mcclowes/speccy/commit/1e75c06c9d473c264140c2404ed89f70c5507832)]:
  - speccy-renderer@0.13.0
  - speccy-spectral@0.13.0
