---
title: HyperHawk Link Checker
date: 2026-03-10 22:04:36 +00:00
tags:
  - dvdstelt
  - GitHub Actions
draft: false
repo: https://github.com/dvdstelt/hyperhawk
marketplace: https://github.com/marketplace/actions/hyperhawk-link-checker
version: v1.6.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/dvdstelt/hyperhawk** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hyperhawk-link-checker) to find the latest changes.

## Action Summary

HyperHawk is a GitHub Action designed to automate the detection of broken links in markdown files by scanning internal, external, and same-organization GitHub links. It helps maintain link integrity by reporting issues as inline review comments on pull requests, complete with one-click suggestions for fixes, or by providing a summary table and annotations on pushes or scheduled runs. This action streamlines the process of identifying and resolving link issues, reducing manual effort and ensuring documentation accuracy.

## Release notes

Redirect Detection for External Links

  When checking external links, HyperHawk now detects redirects and suggests updating the URL to point directly to the final destination.
  This helps keep documentation links current as upstream URLs change over time.

  What's new

  - Redirect suggestions: External links that redirect (301, 302, 303, 307, 308) are reported as suggestions with the final URL, both in
  PR review comments and step summary annotations
  - Fragment preservation: When a redirect drops the URL fragment (e.g., #section), it is re-attached to the final URL. If the server
  provides its own fragment, it takes priority
  - Redirect loop detection: Circular redirects are reported as broken with a clear "Too many redirects" message instead of a generic
  network error
  - Separate reporting: The step summary now shows redirect suggestions and root-relative suggestions in distinct tables

  Robustness improvements

  - Malformed Location headers no longer cause misleading "Network error" messages
  - Bot-blocked responses (403/429) after redirects no longer suggest updating to what may be a WAF/captcha page
  - Response bodies are properly discarded during redirect chains to prevent connection pool exhaustion
  - URL replacement in suggestions uses safe string substitution to avoid corruption from $ characters in URLs

  Testing

  - Added a local HTTP test server to the snapshot test suite covering 301 chains, 302, redirect loops, fragment handling, 403 bot-block,
  and 404 scenarios

**Full Changelog**: https://github.com/dvdstelt/hyperhawk/compare/v1.5.0...v1.6.0
