---
title: Skill Probe - AI Agent Skill Auditor
date: 2026-07-02 14:59:36 +00:00
tags:
  - HystonKayange
  - GitHub Actions
draft: false
repo: https://github.com/HystonKayange/skill-probe
marketplace: https://github.com/marketplace/actions/skill-probe-ai-agent-skill-auditor
version: v0.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/HystonKayange/skill-probe** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-probe-ai-agent-skill-auditor) to find the latest changes.

## What's Changed

## skill-probe in your pipeline, gating on statistics instead of vibes

The CI question isn't *"are my skills perfect?"* — it's **"did this PR make any skill worse?"** Activation is stochastic, so raw-rate comparisons make CI flaky. v0.9.0 makes the gate honest.

### Baseline regression gating
```bash
skill-probe --config probe.config.json --save-baseline baselines/main.json   # once, on main
skill-probe --config probe.config.json --baseline baselines/main.json        # every PR
```
Each case is compared against the baseline with **Fisher's exact test, Benjamini-Hochberg corrected** — noise passes, significant drops fail (exit 1). Drift in config/runtime/model since the baseline warns (matched cases still gated); new/missing cases are reported, not gated; a side with no valid probes is **NOT COMPARABLE**, never a silent pass. Significant improvements are flagged as a nudge to re-save the baseline.

### Run manifest
Every `--json` result now stamps *who/what/when*: tool version, command, ISO date, runtime, model, k/threshold/conf, and a **config hash** (cwd excluded — the same library on a laptop and a CI runner is the same experiment). Two runs are comparable; a report is citable.

### GitHub Action
```yaml
- uses: HystonKayange/skill-probe@main
  with:
    config: probe.config.json
    args: --baseline baselines/main.json
  env:
    ANTHROPIC_API_KEY: ${{ secrets.ANTHROPIC_API_KEY }}
```
Installs skill-probe + the runtime CLI (Claude Code by default, swappable) and runs any subcommand (`audit`/`context`/`diagnose`/`doctor`).

Plus: repo CI (typecheck + tests, no API calls). 83 tests. Baseline save→gate loop proven live.
