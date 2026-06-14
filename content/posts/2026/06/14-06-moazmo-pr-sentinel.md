---
title: PR Sentinel Multi-Agent Reviewer
date: 2026-06-14 06:40:00 +00:00
tags:
  - moazmo
  - GitHub Actions
draft: false
repo: https://github.com/moazmo/pr-sentinel
marketplace: https://github.com/marketplace/actions/pr-sentinel-multi-agent-reviewer
version: v2.6.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/moazmo/pr-sentinel** to version **v2.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-sentinel-multi-agent-reviewer) to find the latest changes.

## What's Changed

Post-v2.5 structural levers (v2.5 proved prompt-level gains are at the cheap-model ceiling). All behavior-preserving — new knobs default off / provider-default.

- **Reasoning controls** (`accuracy.analyst_thinking`, `reasoning_effort`): DeepSeek V4 thinking is a request parameter (default on); endpoint-safe (sent only when set). Measured: disabling analyst thinking collapses recall ~91%->61%, so reasoning stays on.
- **SAST grounding** (`sast.enabled`, opt-in): Semgrep hits feed the verifier's triage — the documented 2025-26 precision lever. Live-path (needs Semgrep in the runner).
- **Real-PR benchmark** (`evals/realpr.py`): discovers real merged bug-fix PRs, reverses them to reintroduce the bug, scores recall on real bugs.

230 tests. DECISIONS D35-D36.
