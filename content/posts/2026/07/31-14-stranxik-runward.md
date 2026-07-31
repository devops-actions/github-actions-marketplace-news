---
title: runward gate
date: 2026-07-31 14:37:35 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.24.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward verifies engineering decisions behind AI-written code by automating deterministic gate verification, ensuring that all aspects of a software delivery mission are followed through a full cycle from framing to handover. It provides an open-source method to enforce strict quality control in AI-assisted development projects using plain code.**
  
  ---
  
  This concise summary captures the main purpose and functionality of the Runward GitHub Action, addressing the problem it solves and outlining its key capabilities in a clear and user-focused manner.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.24.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward verifies engineering decisions behind AI-written code by automating deterministic gate verification, ensuring that all aspects of a software delivery mission are followed through a full cycle from framing to handover. It provides an open-source method to enforce strict quality control in AI-assisted development projects using plain code.**

---

This concise summary captures the main purpose and functionality of the Runward GitHub Action, addressing the problem it solves and outlining its key capabilities in a clear and user-focused manner.

## What's Changed

`AGENTS.md` has always prescribed confronting the craft rules "at the point of action, not from memory". Until now nothing made that mechanisable: `rules` filtered by phase, and `govern` alone returns twelve. This release ships the primitive a field report asked for — and the honesty mechanisms that keep it from being trusted more than it deserves. The deterministic, zero-network gate is unchanged: `--for` is a reading, never a verdict.

```
$ runward rules --for src/cron/runner.ts src/config/egress-key.ts

Matched
  async-job-guardrails      HIGH      appliesTo=**/cron/**    src/cron/runner.ts
  config-secrets-boundary   CRITICAL  appliesTo=**/config/**  src/config/egress-key.ts

Not evaluated
  60 of 64 rule(s) declare no territory — surfacing, never masking.
```

- **`rules --for <paths>`** ([ADR-0041](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0041-rules-for-paths-declared-territory-with-a-named-match-reason.md)) — the rules whose declared territory covers those paths, **with the pattern that retained each one**, on the `git check-ignore -v` model. Matching is on an optional `appliesTo:` glob list the rule declares, never on thematic tags. Paths come from the caller: runward never computes the change set, so the composition stays yours — `git diff --name-only "$BASE...HEAD" | xargs runward rules --for`.
- **A declared glob dialect, no new dependency.** Five constructs, stated in the machine surface: leading `**/`, trailing `/**`, `**`, `*`, `?`. No braces, no ranges, no negation — the whole grammar reads in five lines instead of inheriting semantics nobody could state.
- **It never pretends to be exhaustive.** Every run reports how many rules declare no territory and were not evaluated. Always exits 0; exit 2 only when the question cannot be asked (absolute path, or one escaping the project).
- **No filesystem, no git, no model.** Pure string matching — a path need not exist yet, so you can ask *before* writing the file, and nothing depends on your working directory.
- **Four territories seeded**, where the rule's own text is about a specific artifact class. `security-mcp-server-pinning` was considered and left unscoped: its text prescribes no path, so a territory would have been invented. **4 of 64 rules declare one** — the primitive is complete, its coverage is not.
- **[ADR-0042](https://github.com/stranxik/runward/blob/main/docs/adr/ADR-0042-craft-rule-confrontation-is-continuous-not-a-gate-crossing-ritual.md) ratified** — craft-rule confrontation is continuous, not a gate-crossing ritual; `iterate.md` names `--for` as the gesture.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

