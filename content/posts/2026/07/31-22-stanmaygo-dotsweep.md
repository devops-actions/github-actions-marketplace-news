---
title: Domain watch and availability check — dotsweep
date: 2026-07-31 22:23:00 +00:00
tags:
  - stanmaygo
  - GitHub Actions
draft: false
repo: https://github.com/stanmaygo/dotsweep
marketplace: https://github.com/marketplace/actions/domain-watch-and-availability-check-dotsweep
version: v1.2.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action is an agent skill that checks domain name availability and prices across 1,200+ extensions. It provides the renewal price, registry's minimum term, and who can register it without requiring an API key or account. The action never reports an unreachable registry as available and outputs a table to the job summary with the full JSON results.
---


Version updated for **https://github.com/stanmaygo/dotsweep** to version **v1.2.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/domain-watch-and-availability-check-dotsweep) to find the latest changes.

## Action Summary

This GitHub Action is an agent skill that checks domain name availability and prices across 1,200+ extensions. It provides the renewal price, registry's minimum term, and who can register it without requiring an API key or account. The action never reports an unreachable registry as available and outputs a table to the job summary with the full JSON results.

## What's Changed

Domain availability across 1,200+ TLDs for an AI agent — with the renewal price, the registry's minimum term, and who is allowed to register.

**Never reports an unreachable registry as available.** A raw `whois` returns text for a throttled registry that reads like a not-found, so a hand-rolled check reports a taken domain as free. Unconfirmed answers here are marked `estimated`, never `available`.

## Install

Skill — paste into any agent that can write files:

> Add a skill called dotsweep, for checking domain availability. Fetch https://dotsweep.com/skill.md and save it verbatim as `dotsweep/SKILL.md` inside whichever skills directory you read.

MCP server, for clients that take a URL — including the phone apps, where nothing can be installed:

```
https://dotsweep.com/mcp
```

Setup click-path at [dotsweep.com/setup](https://dotsweep.com/setup).

## New in this release: a GitHub Action

For the cases with no agent in the loop — watching a name until it drops, or checking candidates on a schedule.

```yaml
- uses: stanmaygo/dotsweep@v1
  id: names
  with:
    domains: acme brandnew
    tlds: com io ai dev
- run: echo "free: ${{ steps.names.outputs.available }}"
```

Four output buckets, and three of them are not `available`. A rate-limited registry lands in `unconfirmed`. An unreachable API fails the step rather than answering, because a name missing from `taken` reads exactly like a free one. `closed` is separate because a `.brand` TLD answers with a genuine not-found — `shoes.nike` is unregistered and unbuyable at once.

## Limits

- Premium and reserved names return the same registry answer as an ordinary free domain. Every quoted price is a floor.
- A TLD with no eligibility entry has not been checked — that is not the same as having no requirements.
