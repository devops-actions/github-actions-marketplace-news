---
title: AgenRACI validate
date: 2026-06-18 06:56:34 +00:00
tags:
  - jing-ny
  - GitHub Actions
draft: false
repo: https://github.com/jing-ny/agenraci
marketplace: https://github.com/marketplace/actions/agenraci-validate
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jing-ny/agenraci** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agenraci-validate) to find the latest changes.

## What's Changed


The release that closes the gap between *declaring* accountability and *confirming*
it holds. Same honest scope headline: **verify, don't intercept** — AgenRACI reads
and reports on your repo's settings; it never POSTs, PUTs, or applies anything
automatically, and it never intercepts at runtime.

## What changed

- **`agenraci verify --target github`** — a new subcommand that compares a live
  repo's branch-protection rules and CODEOWNERS file against what the charter
  declares, then exits with a structured result. Exit codes: `0` clean (repo
  enforces at least what the charter requires), `1` drift (one or more declared
  constraints are missing or weaker), `2` could-not-check (insufficient API
  permissions to read branch-protection settings).

  Two modes ship together:

  - **`--settings <file>`** (offline, #60) — reads a branch-protection JSON you've
    already fetched and compares it locally; no network call, no token needed.
    Useful in air-gapped environments and for writing tests against known fixtures.
  - **`--repo OWNER/REPO`** (live, #61) — calls `gh api` to fetch branch-protection
    and CODEOWNERS at runtime and compares them to the charter in one step.

  The charter is treated as a floor: a repo configured *more* strictly than the
  charter requires passes cleanly. Actions whose accountable role is agent-only are
  reported as `unenforceable` (GitHub cannot require an agent's review) — neither
  a pass nor a drift, just an honest note.

- **`verify` GitHub Action** (#62) — a ready-made composite Action
  (`jing-ny/agenraci/verify@<ref>`) that runs the check in CI and fails the job on
  drift (exit 1). Drop it into any workflow in two lines. The action is dogfooded on
  this repo — with one honest caveat: reading live branch-protection settings
  requires admin scope, and the default `GITHUB_TOKEN` rarely has it, so the
  dogfood job runs `continue-on-error: true` and reports `could-not-check` rather
  than falsely claiming the check passed. A token with the right scope produces a
  clean pass.

- **`compile --target github` upgrade** (#63) — `agenraci compile --target github`
  already emitted a CODEOWNERS scaffold and a human checklist. It now also emits:
  - A directly-applyable GitHub classic branch-protection PUT body, delimited by
    `# --- BEGIN protection.json ---` / `# --- END protection.json ---`.
  - A ready-to-run `gh api repos/OWNER/REPO/branches/BRANCH/protection --method PUT
    --input protection.json` command.
  - An `agenraci verify --repo OWNER/REPO` round-trip step to confirm the apply
    worked.

  AgenRACI prints the JSON and the command. The human copies and runs them. This
  closes the **compile → apply → verify** loop: declare the charter, compile the
  settings, apply them, confirm they stuck.

- **"Check your repo" cookbook** (#65) — `docs/cookbook/check-your-repo.md`, a
  step-by-step, end-to-end-tested walkthrough of the full loop. Starts from a
  new charter, compiles to GitHub settings, applies them, and runs `verify` to
  confirm. Each shell command is tested in CI so the walkthrough stays accurate.

## Roadmap reslot

Issues #58 and #59 reslotted the v0.2 focus: the GitHub enforcement loop shipped
as v0.2, the HumanLayer connector moves to v0.3, and the LangGraph connector to
v0.4. The roadmap in README and SPEC reflects this.

## What's next (v0.3)

A working HumanLayer connector that turns charter approval gates into real,
blocking human-approval pauses — so the charter isn't just checked but enforced at
runtime, for the first time.

## Install / upgrade

```bash
pip install -U agenraci
```

Full diff: <https://github.com/jing-ny/agenraci/compare/v0.1.3...v0.2.0>. MIT-licensed.

