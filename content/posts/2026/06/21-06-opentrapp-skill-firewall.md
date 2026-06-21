---
title: OpenTrApp Skill Firewall
date: 2026-06-21 06:49:36 +00:00
tags:
  - opentrapp
  - GitHub Actions
draft: false
repo: https://github.com/opentrapp/skill-firewall
marketplace: https://github.com/marketplace/actions/opentrapp-skill-firewall
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/opentrapp/skill-firewall** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentrapp-skill-firewall) to find the latest changes.

## What's Changed

# Skill Firewall v1.0.0

Scan agent **skills and plugins for malware and prompt injection before an agent loads them**, right in your CI. No model, no network. This is the published, Marketplace-ready projection of [OpenTrApp](https://github.com/albertdobmeyer/opentrapp)'s Skill Firewall; the source of truth and the full five-container perimeter live there.

Verified end to end in this repository's own self-scan CI (the only place a GitHub Action can actually be exercised).

## Use it

```yaml
permissions:
  contents: read
  security-events: write   # only to upload findings to the Security tab

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: opentrapp/skill-firewall@v1
        with:
          path: ./skills      # a skill dir, a parent of several, or a single SKILL.md
          strict: false
```

Pin `@v1` for patches within major version 1, or `@v1.0.0` for an exact pin.

## What it checks

- An 87 pattern blocklist mapped to MITRE ATT&CK, including 16 prompt injection patterns.
- A zero trust line classifier that quarantines a skill when a single line is unrecognised.
- SARIF output, so findings appear in your repository's Security tab.

## The honesty boundary

This action reads and pattern matches text. It does not execute the skill. Its guarantee is "vet a skill before an agent loads it," not "no untrusted content ever touches your runner." The stronger "untrusted content is only ever processed inside an isolated container" property belongs to the full OpenTrApp perimeter. Only the offline Tier A engine (scan and verify) is shipped here; the model backed reconstruction stays out, so nothing in this action touches a network or a model.

