---
title: SkilLock CI
date: 2026-06-08 15:24:55 +00:00
tags:
  - skills-lock
  - GitHub Actions
draft: false
repo: https://github.com/skills-lock/skil-lock-action
marketplace: https://github.com/marketplace/actions/skillock-ci
version: v0.2.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/skills-lock/skil-lock-action** to version **v0.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skillock-ci) to find the latest changes.

## What's Changed

## v0.2.0 — integrity hardening

Pairs with `skil-lock` CLI **v0.2.0**. Closes an integrity gap surfaced by an external security review: a bundled script's body could previously be rewritten without moving the lockfile.

### What's new (CLI v0.2.0)
- **Per-bundled-script content digests** — a rewritten script body (e.g. `scripts/extract.sh`) now produces a blocking diff instead of slipping past an unchanged `content_hash`. Approvals are bound to the new digest, so a stale approval can't be replayed.
- **Signed releases** — cosign keyless signatures + SLSA build provenance + SBOMs (verify with `cosign verify-blob`; see SECURITY.md).
- **Documented detection boundary** — the README states exactly what is and isn't gated.
- Hardening: symlinked/irregular bundle files no longer abort a scan; CI blocks when a skill fails to parse.

### Action usage
```yaml
- uses: skills-lock/skil-lock-action@v0.2.0
  with:
    pin-binary: v0.2.0
    sarif: true   # optional; requires security-events: write
```

No breaking changes to Action inputs.

