---
title: Zyrax Guard
date: 2026-07-08 06:21:13 +00:00
tags:
  - tiagosilva07
  - GitHub Actions
draft: false
repo: https://github.com/tiagosilva07/zyrax-guard
marketplace: https://github.com/marketplace/actions/zyrax-guard
version: v0.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tiagosilva07/zyrax-guard** to version **v0.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zyrax-guard) to find the latest changes.

## What's Changed

## v0.11.0 — BLOCK means attack

One deliberate verdict-policy change.

### ⚠️ Changed: vulnerabilities in legitimate packages now WARN instead of BLOCK

**BLOCK is now reserved for known-malicious packages** — typosquats, hallucinated names, denylist and OSV `MAL-*` malware entries. A vulnerability advisory on a legitimate package (any severity) now yields **WARN**, with the severity shown in the message:

```
$ zyrax-guard check some-pkg
! some-pkg@2.1.0 — WARN
  - GHSA-xxxx (high severity): Denial of Service in some-pkg
```

**Why:** popular packages routinely carry high-severity advisories — `next` and `vite` were BLOCKing installs over a real-but-ordinary DoS advisory. A false BLOCK on a household-name package teaches users to `zyrax-guard allow` it or remove the shell hook entirely, which destroys the gate's value against actual malware. BLOCK should mean *"we think this is an attack"*, not *"this has a known bug"*. Vulnerability management belongs to `npm audit` / Dependabot; Guard is the supply-chain attack gate.

**If you want the old behavior in CI:** run with `--strict` — WARN becomes a failure, so any advisory still fails the build.

Malware detection is unchanged: known-malicious packages BLOCK exactly as before, and ERROR (could-not-verify) still fails closed.

**Full Changelog**: https://github.com/tiagosilva07/zyrax-guard/compare/v0.10.0...v0.11.0

