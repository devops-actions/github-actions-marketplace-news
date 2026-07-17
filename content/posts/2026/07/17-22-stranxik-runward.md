---
title: runward gate
date: 2026-07-17 22:27:02 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.19.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward is an agent delivery framework that automates the entire mission from framing to handover, addressing architecture problems in agentic systems by providing structured delivery and governance. It supports various input sources like specs, OpenSpecs, and prototypes and offers six gated phases: Frame, Spec Kit, OpenSpec, Brownfield, Floor, Evolution on Evidence, Governance, and Handover. Runward ensures that agentic systems are built, tested, and delivered with resilience and autonomy, making them robust against unpredictable outputs and complex environments.**
---


Version updated for **https://github.com/stranxik/runward** to version **v0.19.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward is an agent delivery framework that automates the entire mission from framing to handover, addressing architecture problems in agentic systems by providing structured delivery and governance. It supports various input sources like specs, OpenSpecs, and prototypes and offers six gated phases: Frame, Spec Kit, OpenSpec, Brownfield, Floor, Evolution on Evidence, Governance, and Handover. Runward ensures that agentic systems are built, tested, and delivered with resilience and autonomy, making them robust against unpredictable outputs and complex environments.**

## What's Changed


Making "an AI agent can discover, install and operate runward with no human at the keyboard" true — without leaning on a detection layer that can only ever be partial ([ADR-0030](docs/adr/ADR-0030-agent-operates-runward-neutral-baseline-best-effort-detection.md)).

- **Neutral baseline by default.** `init` with no explicit `--tools` writes only the vendor-neutral core (`AGENTS.md` + `.agents/skills/`); `--yes` no longer defaults to the `claude` profile and the wizard pre-checks nothing. No harness is privileged — a channel is an opt-in the operator adds afterward. Closes a standing vendor-neutrality breach.
- **`runward wire` — best-effort harness detection.** Detects the AI harness running the command via a verified runtime signal (`CLAUDECODE` for Claude Code and Cowork, `GEMINI_CLI`, `CURSOR_AGENT`), falling back to a config-file marker, then `undetermined`. It recommends the matching auto-trigger channel and points at the inert sample — it never wires anything (`wires:false` invariant, [ADR-0012](docs/adr/ADR-0012-the-gate-as-a-port-with-harness-adapters.md)) and never prompts, so an agent run never hangs. On `undetermined`, the doctrine (AGENTS.md + the plugin SKILL.md) tells the agent to *ask* the operator which tool they use rather than guess.
- **`check --json` — a machine contract.** A stable, deterministic JSON verdict (current gate, deliverable states, conformance gaps) so an agent drives on data, not scraped text. Hook output is routed to stderr under `--json` so a subprocess can't corrupt the object.
- **Hardened non-interactivity.** `isNonInteractive()` also returns true when stdin is not a TTY or `CI` is set — an autonomous run never hangs on a prompt it cannot answer.
- **Guards.** New unit tests for detection (signal precedence, per-family config detection, `undetermined`, the `wires:false` invariant) and smoke assertions for `wire --json` and `check --json[ --strict]`. Self-gate strict green; 65 unit tests.


