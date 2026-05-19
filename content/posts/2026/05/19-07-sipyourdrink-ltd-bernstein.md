---
title: Bernstein — Multi-Agent Orchestration
date: 2026-05-19 07:21:04 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.2.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.2.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic Python-based scheduler designed to orchestrate multiple CLI coding agents in parallel Git worktrees to achieve a single goal. It automates and secures the coordination of up to 44 supported agents while providing an HMAC-signed audit trail, agent authentication, and artifact lineage to meet compliance and regulatory requirements. Key capabilities include a tamper-evident audit chain, signed agent metadata, and support for secure, air-gapped deployments.

## What's Changed

v2.1.0 closed the loop on routing observability. v2.2.0 is about the CI immune system: auto-heal grew teeth, the bot-PR class got eliminated, and five cross-discipline interventions (Toyota Lean, epidemiology, alarm fatigue, SPC) stopped recurring failure modes that had been costing real wall time. Three feature workstreams that slipped from v2.1 also landed.

## Self-healing CI grew teeth

Auto-heal v2 shipped in v2.1 (#1393, 26 parameters, classifier + heal-branch + admin-merge) and produced zero successful heals in the first three weeks. Every main-red event still required a human-dispatched hotfix. Three things were wrong:

- **#1452** typos-cli 404. The fetch URL was stale; the workflow failed before classification. Added a 404-cordon so the daemon now opens a self-issue and stops rather than masking errors.
- **#1452** agents-md drift class was missing from the classifier. Lint drift from `bernstein agents-md sync` not running on doc-only commits looked like a new failure class to the heuristic. Added it.
- **#1452** composition order: ruff was running before agents-md sync, so the sync's whitespace tweaks looked like lint regressions. Reordered.

Plus the trigger leak: **#1460** auto-heal pushed its fix branch but the heal-branch CI never started, because `push` events from `GITHUB_TOKEN` don't fire downstream workflows by default. Now explicitly dispatches.

## Bot-PR class eliminated

**#1449** moved contract-drift autofix from "open a PR with the regenerated lockfile" to "inline-push the regenerated lockfile to the PR head." That was the dominant bot-PR-class source. The recursive lint drift cycle that ate a Saturday afternoon is gone.

## Cross-discipline CI hygiene wave

Five interventions, each borrowed from a discipline that already solved an analogous problem:

| PR | Discipline | Intervention |
| --- | --- | --- |
| #1454 | alarm fatigue (anesthesiology) | Weekly aggregated digest issue. Replaces N auto-release-skipped notifications with one rolling summary. |
| #1455 | epidemiology (R0) | Hotfix R-counter. Detects when a hotfix begets another hotfix. Two-in-a-row blocks further auto-merge until human triage. |
| #1456 | Toyota Lean (Andon cord) | Trunk health SLO + Andon gate. Holds merges on red trunk. Blocks the bug spread that auto-merge would otherwise inflict. |
| #1457 | bisect on red | Auto-triage main-red to culprit PR. Halves the median MTTR for main-red events. |
| #1467 | SPC (control charts, META F) | Idempotency self-check in regen_contract_drift. Second run of the same regen must be a no-op; if not, the regen is non-deterministic and the workflow halts. |

## Seven edge-case hardenings

The first three followed from the wave above. The next four are independent:

- **#1458** contract-drift fork-PR fallback shape. The inline-push path needs write to the PR head; on fork PRs that's denied. Now falls back to a comment with the regenerated patch.
- **#1459** R-counter benign-drift allow-list + classifier (EDGE-4). Auto-formatting churn on docs files is not a hotfix-class event. Distinct path.
- **#1463** advisory PR push-lock for parallel-agent waves (EDGE-6). Six-agent waves were racing on the same PR's branch. Soft lock prevents the lost-write that bricked one PR last cycle.
- **#1464** GH API rate-limit guard for long-running agent loops (EDGE-7). Token-bucket plus 429 backoff. Replaces the "wait two minutes and retry" pattern that triggered the secondary rate limit anyway.
- **#1465** trunk-Andon override escapes (EDGE-5). Two override paths (force-merge label, commit-message token) for the case where the Andon-detected breakage is the fix.
- **#1455** hotfix R-counter (also above) — paired with the Andon gate so the override loop has bounded depth.
- **#1450** hygiene for five noise-prone workflows (auto-release filter, scheduled cleanup, telegram dedupe, release-please if-cond guard, delete-master removal).

## Branch-scoped CI concurrency

**#1470** scopes the CI concurrency group by branch so rapid-merge bursts drain the queue instead of cancelling each other's downstream signals. Plus **#1472** hotfix repair for three follow-on root causes (QR dep skip on macOS, GUI URL test path, release-please conditional). Plus **#1473** and **#1474** clearing actionlint annotation-cap noise via `level=error` and `-shellcheck=` flag — the cap was eating real signal under a wall of style nags.

## macOS runner saturation fix

The macOS hosted-runner queue depth was 20-70 minutes during burst-merge waves. Issue #1468 categorised the failure mode. **#1475** split macOS off the per-PR default matrix into two new gated jobs (`test-macos`, `adapter-integration-macos`) that fire on push-to-main, on `macos_sensitive` path changes, or on a `macos-needed` label. Added `.github/workflows/ci-macos-nightly.yml` for the full matrix daily at 06:00 UTC. CI-gate accepts legitimate macOS skips.

Caught a real bug a week later: **#1476**. The `test_reaps_stale_heartbeat` test was patching one binding of `_is_process_alive` but `_refresh_heartbeat_from_signals` had a separate binding defined locally in `bernstein.core.agents.agent_lifecycle`. The unpatched call fell through to a real `os.kill(pid=999, 0)`. On Linux and Windows that raised; on macos-latest PID 999 was owned by a system daemon, so the call succeeded, the heartbeat got refreshed, and the test failed. Test-only fix; production reap path was correct.

## AI-BOM export (#1438)

`bernstein bom emit` and `bernstein bom verify`. Three encoders behind one dispatcher: Bernstein-native JSON, CycloneDX 1.5 with the AI/ML extension shape, and SPDX 2.3 with AI-specific annotations. Pure projection from existing lineage / cost / adapter state -- no recomputed hashes, no I/O during `generate_bom`. Determinism enforced by Hypothesis property tests across all three formats. Tamper detection via sha256 chain. Closes #1371.

## Diary + synthesis (#1432)

Two-tier knowledge layer over closed task transcripts. Diary writes one structured entry per closed task (`tried`/`worked`/`failed`/`rationale`/`tags`) with redaction of OpenAI keys, GitHub tokens, AWS access keys, PEM banners, and high-entropy hex. Synthesizer clusters diaries by tag-overlap Jaccard (stdlib only, no embeddings in v1) and drafts a markdown report. HITL-gated: reports default to `approved: false`. 142 tests including 20 Hypothesis property tests. Closes #1369.

## Consensus relay (#1435)

HMAC-chained per-cycle handoff so an operator restarting a long evolution cycle can pull the prior cycle's decisions/blockers/open-questions/next-action into context without rediscovery. Atomic-write store at `.sdd/runtime/consensus/<cycle>.json`. `bernstein consensus list|show|export|next|verify`. 73 unit + 12 integration tests. Closes #1368.

## PWA + tunnel + QR onboarding (#1442)

Operator GUI is now an installable PWA: web app manifest, service worker with stale-while-revalidate for `/api/projects` and `/api/cost`, programmatic maskable icons mounted under both `/` and `/ui/`. iOS Safari and Android Chrome install cleanly. `bernstein gui serve --tunnel` publishes through the existing tunnel driver registry (cloudflared / ngrok / bore / tailscale, auto-select), issues a URL-safe bearer token + 6-word diceware passphrase persisted at `~/.bernstein/dashboard.passphrase` (0600), and prints an ASCII QR. `bernstein gui qr [--rotate]` reprints or rotates. 106 unit + 22 integration tests. Closes #1218.

## Upgrade

`pip install -U bernstein==2.2.0` or `uv tool upgrade bernstein`. No config migration. Existing diaries / consensus stores / BOMs are read-compatible.

