---
title: OSS Security Policy as Code
date: 2026-06-17 22:54:25 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v7.3.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v7.3.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v7.3.0

Additive, clone-only release: completes OWASP Agentic ASI coverage and adds CISA Secure-by-Design readiness signals, on top of the immutable-release / org Actions-policy evidence and opt-in ATTESTED work. No breaking changes. 220 controls across 56 profiles.

---

## Highlights

- Complete OWASP Agentic ASI (ASI01–ASI10) source-side coverage and CISA Secure-by-Design readiness signals (ADR-039, ADR-040).
- Opt-in ATTESTED resolution for the verified release attestation, GH-IMMUTREL-070 (ADR-038).
- Auto-collect immutable-release and org Actions-policy evidence via `collect-evidence --platform github` (ADR-038).

---

## Improvements

- _No fixes or performance changes in this release._

---

## Notes

- 220 controls / 56 profiles / 20 CLI commands.
- README counts, CLI flags, and action pins synced with the current state.
- KICS unpinned-SHA note suppressed on the intentional tag pin.

---

**Install:** `pip install oss-policy-kit==7.3.0` — **License:** Apache-2.0

