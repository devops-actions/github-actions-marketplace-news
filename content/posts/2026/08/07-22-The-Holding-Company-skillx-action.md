---
title: skillx — verify a signed skill
date: 2026-08-07 22:27:00 +00:00
tags:
  - The-Holding-Company
  - GitHub Actions
draft: false
repo: https://github.com/The-Holding-Company/skillx-action
marketplace: https://github.com/marketplace/actions/skillx-verify-a-signed-skill
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the verification of signed agent "SKILL.md" files using JWS signatures and DID documents. It solves the problem of trusting unsigned or tampered skills in workflows by providing a CI-native gate that checks for validity and potential prompt-injection vulnerabilities. The action supports multiple use cases, including verifying single skills, several skills simultaneously, and handling results without failing builds when necessary.
---


Version updated for **https://github.com/The-Holding-Company/skillx-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillx-verify-a-signed-skill) to find the latest changes.

## Action Summary

This GitHub Action automates the verification of signed agent "SKILL.md" files using JWS signatures and DID documents. It solves the problem of trusting unsigned or tampered skills in workflows by providing a CI-native gate that checks for validity and potential prompt-injection vulnerabilities. The action supports multiple use cases, including verifying single skills, several skills simultaneously, and handling results without failing builds when necessary.

## What's Changed

- Verifies a signed agent `SKILL.md` (detached ES256 JWS + `did:web` resolution from the publisher's own domain) before your pipeline or agent trusts it.
- Exact outcomes: `VERIFIED`, `UNSIGNED`, `INVALID`. INVALID always fails the job; UNSIGNED fails unless `allow-unsigned: 'true'`.
- Optional prompt-injection content scan (on by default).
- Verifier `skillx.py` is vendored and pinned in this release — nothing is fetched at runtime except the skill under test and the publisher's public DID document.

```yaml
- uses: The-Holding-Company/skillx-action@v1
  with:
    skill-url: https://example.com/SKILL.md
```

Docs: https://skillx.md/publish.html
