---
title: cache-python-deps
date: 2026-08-01 14:08:23 +00:00
tags:
  - re-actors
  - GitHub Actions
draft: false
repo: https://github.com/re-actors/cache-python-deps
marketplace: https://github.com/marketplace/actions/cache-python-deps
version: v1.0.1
dependentsNumber: "24"
actionType: Composite
actionSummary: |
  This GitHub Action automates the management of ABI-sensitive Python dependencies by caching them based on a hash derived from dependency declaration files. It solves the problem of reusing cached dependencies when the Python runtime or ABI stability changes, reducing build times and improving CI/CD efficiency. The action is designed to be used instead of the default `cache` input in `actions/setup-python`.
---


Version updated for **https://github.com/re-actors/cache-python-deps** to version **v1.0.1**.

- This action is used across all versions by **24** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cache-python-deps) to find the latest changes.

## Action Summary

This GitHub Action automates the management of ABI-sensitive Python dependencies by caching them based on a hash derived from dependency declaration files. It solves the problem of reusing cached dependencies when the Python runtime or ABI stability changes, reducing build times and improving CI/CD efficiency. The action is designed to be used instead of the default `cache` input in `actions/setup-python`.

## What's Changed

<p align="right"><i>So <a href="https://ep2026.europython.eu/speaker/sviatoslav-sydorenko-sviatoslav-sidorenko/">@webknjaz</a> just <a href="https://ep2026.europython.eu/session/reusable-tox-yml-five-patterns-to-eliminate-ci-cd-boilerplate">returned</a> from <a href="https://ep2026.europython.eu/session/defending-open-source-from-ai-slop-a-maintainer-s-practical-guide">EuroPython 2026</a> last week and remembered to release this… Have fun ;)</i></p>

## 🛠️ Internals

`actions/cache` got bumped to v6 and now runs under Node.js 24. No more runtime warnings. Yay!

## 💪 New Contributors
* @Spacetown[💰](https://github.com/sponsors/A5rocks) reminded me to bump an internal action call in #1

**🪞 Full Diff**: https://github.com/re-actors/cache-python-deps/compare/v1.0.0...v1.0.1

**🧔‍♂️ Release Manager:** [@webknjaz 🇺🇦](https://github.com/sponsors/webknjaz)

**💬 Discuss** [on GitHub][release discussion].

[![GH Sponsors badge]][GH Sponsors URL]

[GH Sponsors badge]:
https://img.shields.io/badge/%40webknjaz-transparent?logo=githubsponsors&logoColor=%23EA4AAA&label=Sponsor&color=2a313c
[GH Sponsors URL]:
https://github.com/sponsors/webknjaz

[release discussion]: https://github.com/re-actors/cache-python-deps/discussions/2
