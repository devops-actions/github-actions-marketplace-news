---
title: Agent Vigil
date: 2026-08-22 21:55:58 +00:00
tags:
  - sulmusic2-star
  - GitHub Actions
draft: false
repo: https://github.com/sulmusic2-star/agent-vigil
marketplace: https://github.com/marketplace/actions/agent-vigil
version: v0.11.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Agent Vigil automates the verification of code changes by ensuring they meet a set of criteria, including the presence of necessary evidence, test coverage, and adherence to policy rules. It uses local or GitHub runner environments to run checks on the exact code change before it can be merged, providing PASS, FAIL, or INCONCLUSIVE outcomes based on various verifications such as task completion, test execution, policy adherence, and integrity.
---


Version updated for **https://github.com/sulmusic2-star/agent-vigil** to version **v0.11.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-vigil) to find the latest changes.

## Action Summary

Agent Vigil automates the verification of code changes by ensuring they meet a set of criteria, including the presence of necessary evidence, test coverage, and adherence to policy rules. It uses local or GitHub runner environments to run checks on the exact code change before it can be merged, providing PASS, FAIL, or INCONCLUSIVE outcomes based on various verifications such as task completion, test execution, policy adherence, and integrity.

## What's Changed

## Agent Vigil v0.11.3

Agent Vigil now has two verified public installation channels:

- npm: [@sulmusic/agent-vigil](https://www.npmjs.com/package/@sulmusic/agent-vigil/v/0.11.3)
- GitHub Marketplace: [Agent Vigil](https://github.com/marketplace/actions/agent-vigil)

### Install

    npx --yes @sulmusic/agent-vigil@0.11.3 init --profile maintainer
    npx --yes @sulmusic/agent-vigil@0.11.3 doctor

The scoped npm name avoids confusion with the separate agentvigil package. The installed executables remain agent-vigil and vigil.

### Verification

- 287 tests passed.
- Package smoke covered 11 repository shapes and 33 setup flows.
- A clean registry-backed consumer completed init and doctor with zero failures and zero warnings.
- Linux Node 20/22/24, macOS, Windows, and the required Agent Vigil evidence check passed on pull request #25.
- The attached tarball SHA-256 is d69d8fc9a615a537a5757be5622dd2cac0f143a0eb1dafdccf994c8d44ab32a7.

Publication proves distribution, not external adoption, retention, accepted contradictions, revenue, or commercial demand.

