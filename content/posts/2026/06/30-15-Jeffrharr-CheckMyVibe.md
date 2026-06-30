---
title: CheckMyVibe — Arm Gate
date: 2026-06-30 15:15:01 +00:00
tags:
  - Jeffrharr
  - GitHub Actions
draft: false
repo: https://github.com/Jeffrharr/CheckMyVibe
marketplace: https://github.com/marketplace/actions/checkmyvibe-arm-gate
version: v0.9-beta
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Jeffrharr/CheckMyVibe** to version **v0.9-beta**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/checkmyvibe-arm-gate) to find the latest changes.

## What's Changed

Here are the release notes:

# CheckMyVibe v0.9-beta

First stable release. CheckMyVibe is a private, local **PR understanding gate**: a GitHub
Action arms a required status check on every pull-request push, and the only way to clear it
is to run `/check-my-vibe` in Claude Code and walk through the change. The Q&A stays on your
machine — nothing but a one-line status flip ever touches GitHub.

## Highlights

- **Replaceable interview, stable gate.** `/check-my-vibe` is now a thin orchestrator
  (resolve PR → run interview → confirm → clear gate). The conversation lives in a separate
  `pr-interview` skill. Point `CHECKMYVIBE_INTERVIEWER` at your own skill to customize how
  engineers are questioned — without touching the entry command or the gate path. Because
  the installer never overwrites a skill it didn't install, your custom interviewer survives
  updates.
- **One-line install.** `curl … global-install.sh | bash -s -- <repo>` installs the skills
  globally and vendors the gate (workflow + `set-status.sh` + config) into a target repo —
  no clone required. The vendored `.checkmyvibe/` tooling is auto-added to the repo's
  `.gitignore`; only the workflow is committed (CI arms the gate via the published action).
- **Composite GitHub Action**, now on the Marketplace, arms `check-my-vibe-protection =
  pending` on each PR push. New commits re-arm it, so the check always tracks the current code.
- **Configurable** via `.checkmyvibe/config` (env-overridable): `CHECKMYVIBE_INTERVIEWER`, `CHECKMYVIBE_CONTEXT`, `CHECKMYVIBE_DOCS_URL`.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/Jeffrharr/CheckMyVibe/main/scripts/global-install.sh | bash -s -- /path/to/repo```

Then add a required status check named check-my-vibe-protection under Branch protection.
Pin the action to the release: uses: Jeffrharr/CheckMyVibe@v1.
