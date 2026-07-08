---
title: ansede-static
date: 2026-07-08 22:23:06 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Ansede
marketplace: https://github.com/marketplace/actions/ansede-static
version: v6.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mattybellx/Ansede** to version **v6.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansede-static) to find the latest changes.

## What's Changed

## [6.0.0] — 2026-07-08

### Added
- **Rust language analyzer** (RS-001–006): CWE-119 (unsafe blocks), CWE-798 (hardcoded credentials), CWE-78 (command injection), CWE-327 (weak crypto), CWE-532 (sensitive panics), CWE-362 (TOCTOU)
- **LSP code actions + hover**: VS Code now offers one-click fix suggestions via the lightbulb (codeAction) and vulnerability details on hover
- **Live playground** at `/scan`: paste code, see findings — no install required. Available at ansede.onrender.com/scan
- **GitLab CI + Azure DevOps + Jenkins templates** in `docs/ci-templates/`
- **Adaptive Rules** section in README — `--suggest` documented prominently
- **`--all-findings` flag**: escape hatch to see all findings regardless of confidence
- **Random-repo noise-gate CI**: validates 0% HIGH/CRIT false-negative rate on every release
- **`fast`/`full`/`enterprise` extras** in pyproject.toml for friendlier optional-dependency names

### Changed
- **Confidence threshold default: 0.0 → 0.65** — scans now filter low-signal findings by default. CRITICAL/HIGH findings are never suppressed regardless of confidence. Use `--all-findings` to see everything.
- **`post-pr-comments` default: false → true** in GitHub Action — PRs now get inline security review comments by default
- **Confidence score displayed** in text output for findings < 80% confidence
- **OWASP recall badge**: 93.3% (unchanged, confirmed)
- **Language count**: 5 → 6 (added Rust)
- **Test count**: 1,234 → 1,249

### Measured Impact (fresh random repos)
- **HIGH/CRITICAL findings lost: 0 out of 790** across 5 diverse codebases
- Noise reduction: 5–41% depending on codebase maturity (average ~22%)
- Zero regressions; all 1,249 tests pass

### Competitive Position (July 2026)
- **#1 CVE Recall**: 100% (164/164 across 5 languages)
- **#1 OWASP Recall**: 93.3%
- **#2 OWASP Youden Score**: +0.8%
- **#1 Language Breadth**: 6 languages (Python, JS/TS, Go, Java, C#, Rust)
- **Only SAST with built-in IDOR/auth-bypass/ownership detection**


