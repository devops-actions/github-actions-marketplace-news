---
title: Supply Chain Guard
date: 2026-07-03 06:43:50 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## What's Changed

### v5.6.0 (2026-07-03)
**Install-time guard + GitLab-native output + registry hardening (both remaining roadmap bets)**

Ships the last two strategic bets from the 2026-07 roadmap. A second 4-lens
adversarial verification gate reviewed the diff and BLOCKED the first candidate
with 5 confirmed findings, all fixed here (a real Windows RCE among them).
40 new tests (1120 total).

- **Install Guard** (Bet 2): `supply-chain-guard guard <npm|pnpm|yarn|bun>
  [args...]` checks each package spec against the offline IOC feed +
  known-bad-version blocklist + typosquat heuristics BEFORE the package manager
  runs any lifecycle script; a hit blocks the install (exit 2). `--force`
  overrides with a loud warning, `--dry-run` never invokes the manager. The
  only install blocker whose entire blocklist is auditable in git history,
  offline, no account.
- **GitLab-native output** (Bet 3, delivered on the v5.5.0 GHCR image):
  `--format gitlab` emits a GitLab Dependency Scanning report (schema 15.2.4)
  for artifacts:reports:dependency_scanning, so findings surface in the GitLab
  security UI. Suppressed findings are excluded (mirrors the SARIF path).
- **Registry hardening**: the Open VSX download and every redirect hop are now
  constrained to an https host allowlist (open-vsx.org + its storage host);
  the /tmp -> os.tmpdir() migration is finished across npm/pypi scanners.
- **CI/infra**: Docker base images pinned by sha256 digest (with a weekly
  dependabot docker ecosystem to refresh them); the Jenkins example uses npx;
  `scan --no-history` skips writing .scg-history/ (the pre-commit hook uses it
  so hooks never write state into consumer repos).

Fixed by the verification gate before release:
- **Windows command injection (critical)** in the Install Guard: the cmd.exe
  argument escaping was single-pass, but the npm/pnpm/yarn/bun .cmd shims
  re-parse %*, so a crafted package token (`x"&echo ...&"`) could execute
  arbitrary commands. Now double-escaped (cross-spawn doubleEscapeMetaChars),
  proven closed by the gate's own PoC.
- Install-verb bypasses: `npm isntall` (and the other documented typo-aliases),
  `yarn global add`, and a value-taking global flag before the verb
  (`npm --prefix x install evil`) all silently skipped scanning. Verb detection
  rewritten; flag values are no longer misread as package specs.
- `--format gitlab` could emit a >255-char vulnerability name that fails the
  GitLab schema, making GitLab discard the whole report; names are now capped.

