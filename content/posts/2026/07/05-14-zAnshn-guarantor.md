---
title: Intent Guarantor — Differential Enforcement
date: 2026-07-05 14:49:51 +00:00
tags:
  - zAnshn
  - GitHub Actions
draft: false
repo: https://github.com/zAnshn/guarantor
marketplace: https://github.com/marketplace/actions/intent-guarantor-differential-enforcement
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zAnshn/guarantor** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/intent-guarantor-differential-enforcement) to find the latest changes.

## What's Changed

## Intent Guarantor v0.1.0 — first public release

A tenant-isolation gate for **Next.js + Supabase/Prisma/Drizzle** apps: it flags cross-tenant
data-leak (IDOR) bugs — the class that's #1 on the OWASP API Top 10 and that generic scanners miss.

### What's in it
- **`guarantor sweep`** — deterministic, LLM-free *differential enforcement*: mine a fix commit's
  shape, flag the unfixed sibling endpoints ("you scoped this query in commit X; here are the 6 you
  didn't"). The piece with no direct equivalent elsewhere.
- **`guarantor analyze`** — goal-inference mode (the research thesis), behind a firewall that keeps the
  goals-on/off ablation honest.
- **SARIF 2.1.0** output + a **GitHub Action** → findings in the Security tab / PR annotations.
- Two correctness classes (tenant-isolation + PII-egress) on one Engine/Pack seam; three ORM
  front-ends; synthetic fixtures pinning every behavior. MIT licensed.

### Honest positioning
Published as **open source + a validated research result, not a commercial product.** The thesis held
up under adversarial evaluation on a frozen, hand-adjudicated corpus; the false-positive modes are
measured and reported, not hidden. See `docs/RESULTS.md` and the README's "Honest positioning".

### Note
The wild-app evaluation corpus is intentionally excluded and its results anonymized — the raw labels
quoted code from third-party repos whose vulnerabilities were never coordinated-disclosed.

**Try it:** `npm install && npm run build && node dist/guarantor.js sweep <repo> --sarif out.sarif`
