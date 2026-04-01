---
title: Holon Runner
date: 2026-04-01 06:16:26 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-runner
version: v0.11.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/holon-run/holon** to version **v0.11.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-runner) to find the latest changes.

## Action Summary

Holon is a GitHub Action and CLI tool designed to run AI agents in a sandboxed environment, enabling task automation and proactive workflows. It provides three core functionalities: `holon run` for isolated, CI-safe execution of agent tasks, `holon solve` for automating GitHub issue/PR workflows with context collection and result publishing, and `holon serve` for experimental long-running, event-driven agent runtimes. By managing agent state, tasks, and outputs through a persistent "agent home" model, Holon simplifies the integration of AI-driven solutions into development and collaboration processes.

## What's Changed

## Holon CLI v0.11.0

### Installation

**Homebrew (Recommended for macOS and Linux):**
```bash
brew install holon-run/tap/holon
```

**Download Binary:**

Download the binary for your platform:

**Linux (amd64):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.11.0/holon-linux-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Intel):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.11.0/holon-darwin-amd64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

**macOS (Apple Silicon):**
```bash
curl -fsSL https://github.com/holon-run/holon/releases/download/v0.11.0/holon-darwin-arm64.tar.gz | tar -xz
chmod +x holon
sudo mv holon /usr/local/bin/holon
```

### Verify Checksum
```bash
sha256sum -c checksums.txt
```

### Upgrading

**Homebrew:**
```bash
brew update && brew upgrade holon-run/tap/holon
```

**Binary:**
Re-download the latest binary and replace the existing one.

---
**For maintainers:** The updated Homebrew formula is available as a workflow artifact. Download it and commit to [holon-run/homebrew-tap](https://github.com/holon-run/homebrew-tap).


## What's Changed
* Fix: Improve holon-solve trigger gating (robust mention parsing + more event coverage) by @holonbot[bot] in https://github.com/holon-run/holon/pull/495
* Improve trigger by @jolestar in https://github.com/holon-run/holon/pull/496
* Fix: Add holon setup github to bootstrap GitHub integration (workflow + holonbot) by @holonbot[bot] in https://github.com/holon-run/holon/pull/497
* Fix: holon setup github error by @holonbot[bot] in https://github.com/holon-run/holon/pull/499
* Skill mode by @jolestar in https://github.com/holon-run/holon/pull/500
* Fix: GitHub skill: move context collection into github-solve by @holonbot[bot] in https://github.com/holon-run/holon/pull/507
* fixup by @jolestar in https://github.com/holon-run/holon/pull/508
* Feature: Add unified GitHub publishing to github-solve skill by @jolestar in https://github.com/holon-run/holon/pull/509
* Refactor: Restructure github-solve skill with progressive disclosure by @jolestar in https://github.com/holon-run/holon/pull/510
* Harden github-solve collector portability by @jolestar in https://github.com/holon-run/holon/pull/511
* Fix: Skill mode: use skill-driven collect/publish only by @holonbot[bot] in https://github.com/holon-run/holon/pull/513
* Fix: Generate skill-specific goal in skill mode by @jolestar in https://github.com/holon-run/holon/pull/514
* feat: Support default skills from project config by @jolestar in https://github.com/holon-run/holon/pull/515
* fix: Enable skill mode in GitHub Actions workflow by @jolestar in https://github.com/holon-run/holon/pull/517
* Fix: Skills: add skills:/gh: catalog adapters by @holonbot[bot] in https://github.com/holon-run/holon/pull/516
* fix: Ensure skill parameter takes precedence over auto-detected mode by @jolestar in https://github.com/holon-run/holon/pull/519
* Fix: RFC: skill-owned artifacts (relax required filenames) by @holonbot[bot] in https://github.com/holon-run/holon/pull/518
* fix: Configure git credential helper for git push authentication by @jolestar in https://github.com/holon-run/holon/pull/525
* feat: Make embedded skills build artifacts (#530) by @jolestar in https://github.com/holon-run/holon/pull/532
* feat: Add github-review skill for automated PR code review by @jolestar in https://github.com/holon-run/holon/pull/528
* Add non-LLM test coverage for skill mode by @jolestar in https://github.com/holon-run/holon/pull/533
* Add shared github-context skill and dedupe collectors by @jolestar in https://github.com/holon-run/holon/pull/536
* refactor: split github-solve into focused skills by @jolestar in https://github.com/holon-run/holon/pull/537
* Align GitHub skills: agent-driven context/publish, unify review defaults by @jolestar in https://github.com/holon-run/holon/pull/538
* ci: add auto review workflow by @jolestar in https://github.com/holon-run/holon/pull/539
* skills: add legacy github-solve alias by @jolestar in https://github.com/holon-run/holon/pull/541
* ci: fix permissions for holon-review workflow by @jolestar in https://github.com/holon-run/holon/pull/544
* ci: fix auto_review input type in holon-trigger by @jolestar in https://github.com/holon-run/holon/pull/545
* Fix issue-solve missing dependent skills in container by @jolestar in https://github.com/holon-run/holon/pull/546
* Fix auto-review triggering on PR issue_comment events by @jolestar in https://github.com/holon-run/holon/pull/547
* Enforce mandatory PR publish in issue-solve mode by @jolestar in https://github.com/holon-run/holon/pull/548
* Add optional state mount for cross-run skill caches by @jolestar in https://github.com/holon-run/holon/pull/549
* Fix github-publish reply_review JSON parsing (word-splitting bug) by @holonbot[bot] in https://github.com/holon-run/holon/pull/552
* Fix auto-review skip for holonbot PRs by @jolestar in https://github.com/holon-run/holon/pull/553
* Phase 1: simplify github-issue-solve publish path by @jolestar in https://github.com/holon-run/holon/pull/554
* Fix: Remote skills: define package format and release artifacts by @holonbot[bot] in https://github.com/holon-run/holon/pull/559
* Fix: Remote skills: checksum verification and offline policy by @holonbot[bot] in https://github.com/holon-run/holon/pull/560
* Fix: Remote skills: default wiring, manifest, and migration docs by @holonbot[bot] in https://github.com/holon-run/holon/pull/561
* fix: generate solve goal from selected skill by @jolestar in https://github.com/holon-run/holon/pull/566
* feat: add holon serve MVP (event loop + decisions + dispatch) by @jolestar in https://github.com/holon-run/holon/pull/575
* refactor(serve): remove hardcoded routing, forward to controller skill by @jolestar in https://github.com/holon-run/holon/pull/576
* Fix: Add CI log redaction to prevent secret leakage by @holonbot[bot] in https://github.com/holon-run/holon/pull/578
* feat(serve): add persistent controller event channel by @jolestar in https://github.com/holon-run/holon/pull/579
* feat(serve): harden GitHub event ingest and dedupe for MVP by @jolestar in https://github.com/holon-run/holon/pull/580
* Fix: Deprecate embedded builtin skills and migrate to remote-only distribution by @holonbot[bot] in https://github.com/holon-run/holon/pull/582
* fix(serve): stop passing unsupported --env flags to solve by @jolestar in https://github.com/holon-run/holon/pull/581
* Fix: Switch default to skill-first IO and remove Go collector/publisher by @holonbot[bot] in https://github.com/holon-run/holon/pull/583
* Refactor serve to run controller via runtime session by @jolestar in https://github.com/holon-run/holon/pull/585
* Fix: Decouple runtime skill-first publish validation from skill-specific artifacts by @holonbot[bot] in https://github.com/holon-run/holon/pull/588
* Fix: One-shot: remove --mode and fully delete Go collector/publisher paths by @holonbot[bot] in https://github.com/holon-run/holon/pull/591
* serve: fallback to ~/.claude/settings.json for Anthropic config by @jolestar in https://github.com/holon-run/holon/pull/590
* feat(skill): add project-pulse PM sync skill by @jolestar in https://github.com/holon-run/holon/pull/592
* refactor: unify GitHub skill surface with ghx by @jolestar in https://github.com/holon-run/holon/pull/594
* feat: add GitHub webhook ingress support to serve (issue #573 Phase D0) by @holonbot[bot] in https://github.com/holon-run/holon/pull/596
* Improve github-review for incremental, deduplicated, concise output by @jolestar in https://github.com/holon-run/holon/pull/597
* feat: harden webhook server with timeouts, limits, and error handling (#598) by @holonbot[bot] in https://github.com/holon-run/holon/pull/599
* docs: define serve API direction (Codex-style control plane + provider-specific ingress) (#600) by @holonbot[bot] in https://github.com/holon-run/holon/pull/602
* feat: implement JSON-RPC server skeleton per RFC-0005 (#604) by @holonbot[bot] in https://github.com/holon-run/holon/pull/608
* RFC-0005/B: Implement holon/status, holon/pause, holon/resume, holon/logStream by @holonbot[bot] in https://github.com/holon-run/holon/pull/609
* feat: implement Codex-compatible thread/turn methods (thread/start, turn/start, turn/interrupt) by @holonbot[bot] in https://github.com/holon-run/holon/pull/610
* feat: implement notification stream contract for serve control plane (#607) by @holonbot[bot] in https://github.com/holon-run/holon/pull/611
* fix: address RFC-0005 control-plane gaps (#612) by @holonbot[bot] in https://github.com/holon-run/holon/pull/613
* fix(holonbot): harden OIDC token broker flow (#27) by @jolestar in https://github.com/holon-run/holon/pull/614
* Cleanup: remove legacy mode plumbing and Go collector/publisher paths (#615) by @holonbot[bot] in https://github.com/holon-run/holon/pull/616
* refactor: reuse run env injection in serve controller by @jolestar in https://github.com/holon-run/holon/pull/617
* docs: add e2e-manual framework and serve issue-solve case by @jolestar in https://github.com/holon-run/holon/pull/618
* fix: restore holonbot app token path for review runs by @jolestar in https://github.com/holon-run/holon/pull/619
* feat: add generic holon tui client for serve RPC control plane by @holonbot[bot] in https://github.com/holon-run/holon/pull/621
* fix(holonbot): allow PR refs in OIDC default-branch policy by @jolestar in https://github.com/holon-run/holon/pull/622
* serve: add role-driven PM/Dev controller demo wiring by @jolestar in https://github.com/holon-run/holon/pull/623
* actions: remove --skill solve flag coupling by @jolestar in https://github.com/holon-run/holon/pull/624
* agent-home: unify run/solve/serve agent home entrypoints by @jolestar in https://github.com/holon-run/holon/pull/626
* Implement message-oriented turn RPC and stream events by @jolestar in https://github.com/holon-run/holon/pull/637
* skills: support GitHub path-based skill refs by @jolestar in https://github.com/holon-run/holon/pull/638
* feat #632: Config-driven GitHub subscriptions in agent.yaml by @holonbot[bot] in https://github.com/holon-run/holon/pull/636
* Align run/solve workspace semantics: direct workspace by default by @jolestar in https://github.com/holon-run/holon/pull/639
* fix: use git-compatible GitHub credential helper by @jolestar in https://github.com/holon-run/holon/pull/640
* Decouple agent_home layout from workspace execution paths by @jolestar in https://github.com/holon-run/holon/pull/642
* Decouple github-pr-fix from ghx internal intent schema by @jolestar in https://github.com/holon-run/holon/pull/645
* feat #634: TUI interactive chat client with default RPC by @holonbot[bot] in https://github.com/holon-run/holon/pull/643
* Fix #641: websocket subscription + persisted status + config-first serve by @jolestar in https://github.com/holon-run/holon/pull/644
* Serve: remove controller-skill flag and use role-first runtime by @jolestar in https://github.com/holon-run/holon/pull/646
* Serve: use ROLE.md, enable rpc-only, and fix TUI/RPC turn flow by @jolestar in https://github.com/holon-run/holon/pull/647
* tui: improve chat-like interaction and editing by @jolestar in https://github.com/holon-run/holon/pull/648
* feat: add prod/dev runtime mode for local agent debugging by @jolestar in https://github.com/holon-run/holon/pull/654
* serve: mount agent_home to /root and expose HOLON_AGENT_HOME by @jolestar in https://github.com/holon-run/holon/pull/655
* agent: make runtime paths env-driven by @jolestar in https://github.com/holon-run/holon/pull/656
* serve: move controller workspace ownership into agent home by @jolestar in https://github.com/holon-run/holon/pull/657
* fix: avoid early sessionId access in dev serve mode by @jolestar in https://github.com/holon-run/holon/pull/658
* tui: separate activity stream and fix input key conflicts by @jolestar in https://github.com/holon-run/holon/pull/660
* runtime: remove legacy /holon path compatibility by @jolestar in https://github.com/holon-run/holon/pull/659
* Decouple skill I/O paths from Holon and improve artifact observability by @jolestar in https://github.com/holon-run/holon/pull/662
* Serve: switch controller file channel to Unix socket RPC by @jolestar in https://github.com/holon-run/holon/pull/663
* relax: make manifest.json non-blocking in skill-first mode by @jolestar in https://github.com/holon-run/holon/pull/664
* docs/tests: define holon run GA contract semantics (#665) by @jolestar in https://github.com/holon-run/holon/pull/672
* test: add run sandbox safety regression suite (#666) by @jolestar in https://github.com/holon-run/holon/pull/673
* solve: establish #667 E2E reliability matrix by @jolestar in https://github.com/holon-run/holon/pull/674
* workflow: use local built agent bundle for source builds by @jolestar in https://github.com/holon-run/holon/pull/676
* Fail fast when remote builtin skills source is configured by @jolestar in https://github.com/holon-run/holon/pull/677
* runtime: align container IO paths with agent_home under /root by @jolestar in https://github.com/holon-run/holon/pull/678
* docs: publish v0.11 operator guide and changelog updates by @jolestar in https://github.com/holon-run/holon/pull/679
* serve-preview: add startup diagnostics and capability guardrails by @jolestar in https://github.com/holon-run/holon/pull/680
* test: add tui/rpc turn interaction smoke coverage by @jolestar in https://github.com/holon-run/holon/pull/681
* test/docs: close webhook hardening gaps by @jolestar in https://github.com/holon-run/holon/pull/682
* Unify workspace root and add serve per-event workspace routing by @jolestar in https://github.com/holon-run/holon/pull/683
* feat: unify persona init templates and manifest-first solve contract by @jolestar in https://github.com/holon-run/holon/pull/690
* feat: support agent-home runtime.mounts same-path policy by @jolestar in https://github.com/holon-run/holon/pull/691
* test: add manual e2e case for holon run + remote pptx skill by @jolestar in https://github.com/holon-run/holon/pull/693
* test: add manual e2e cases for holon solve workflows by @jolestar in https://github.com/holon-run/holon/pull/694
* docs: session key routing and event announce design by @jolestar in https://github.com/holon-run/holon/pull/697
* serve: default main session + eager controller warmup (#695) by @jolestar in https://github.com/holon-run/holon/pull/699
* Fix #696: hot-reload serve subscriptions by @jolestar in https://github.com/holon-run/holon/pull/700
* serve: session-key routing + announce-to-main for #698 by @jolestar in https://github.com/holon-run/holon/pull/701
* serve: stabilize message-driven autonomy e2e flow by @jolestar in https://github.com/holon-run/holon/pull/703
* Agent home: adopt AGENTS.md and upgrade persona templates by @jolestar in https://github.com/holon-run/holon/pull/704
* agenthome: load init templates from embedded assets by @jolestar in https://github.com/holon-run/holon/pull/705
* docs: align README/AGENTS/RFCs with agent_home model by @jolestar in https://github.com/holon-run/holon/pull/706
* Refactor serve terminology to agent/session and runtime by @jolestar in https://github.com/holon-run/holon/pull/707
* runtime: formalize required tools contract by @jolestar in https://github.com/holon-run/holon/pull/708
* tui: redesign serve chat view with drawer panels by @jolestar in https://github.com/holon-run/holon/pull/710
* serve: clear stale controller socket before startup by @jolestar in https://github.com/holon-run/holon/pull/711
* tui: support multiline input in serve UI by @jolestar in https://github.com/holon-run/holon/pull/712
* serve: remove hardcoded prompt style and avoid pulling composed images by @jolestar in https://github.com/holon-run/holon/pull/713
* runtime: unify token env injection across run/solve/serve by @jolestar in https://github.com/holon-run/holon/pull/714
* serve: decouple RPC readiness from startup bootstrap by @jolestar in https://github.com/holon-run/holon/pull/715
* workflow: unify agent resolution for source builds by @jolestar in https://github.com/holon-run/holon/pull/716
* serve: switch controller event dispatch to async status model by @jolestar in https://github.com/holon-run/holon/pull/717
* Fix #718: Improve tool logs with full tool context and sensitive-data redaction by @holonbot[bot] in https://github.com/holon-run/holon/pull/719
* Improve serve turn responsiveness, subagent orchestration, and interrupt semantics by @jolestar in https://github.com/holon-run/holon/pull/720
* serve: surface actionable session announce in rpc stream by @jolestar in https://github.com/holon-run/holon/pull/721
* serve: unify controller prompt loading with contract compiler by @jolestar in https://github.com/holon-run/holon/pull/722
* serve/tui: surface event progress and stabilize stream by @jolestar in https://github.com/holon-run/holon/pull/723
* serve: auto-restart gh webhook forwarder after unexpected exit by @jolestar in https://github.com/holon-run/holon/pull/724
* Improve TUI event visibility and turn progress messaging by @jolestar in https://github.com/holon-run/holon/pull/726
* refactor(prompt): remove built-in roles, pr-fix/solve modes, simplify compiler by @jolestar in https://github.com/holon-run/holon/pull/727
* refactor(serve): unify to main session and direct activity emission by @jolestar in https://github.com/holon-run/holon/pull/728
* agent: improve execution.log with input + console logs by @jolestar in https://github.com/holon-run/holon/pull/729
* serve: remove legacy /webhook ingress endpoint by @jolestar in https://github.com/holon-run/holon/pull/736
* serve: centralize controller RPC transport policy (lite) by @jolestar in https://github.com/holon-run/holon/pull/737
* fix(workflow): drop deprecated INPUT_SKILL gate check by @jolestar in https://github.com/holon-run/holon/pull/738
* run: align project config scope with resolved workspace by @jolestar in https://github.com/holon-run/holon/pull/739
* fix(workflow): avoid IS_PR unbound in gate early-exit by @jolestar in https://github.com/holon-run/holon/pull/740
* Fix TUI accidental quit and improve webhook forwarder compatibility by @jolestar in https://github.com/holon-run/holon/pull/741
* fix: avoid checkout token overriding holon auth in solve workflow by @jolestar in https://github.com/holon-run/holon/pull/742
* Refactor ghx and github-review skill contracts by @jolestar in https://github.com/holon-run/holon/pull/743
* refactor ghx batch publish contract and docs by @jolestar in https://github.com/holon-run/holon/pull/744
* Refactor Holon solve/workflow to explicit goal routing by @jolestar in https://github.com/holon-run/holon/pull/745
* Harden solve clone auth and add skill hints to default goals by @jolestar in https://github.com/holon-run/holon/pull/746
* workflow: authenticate GHCR pulls in holon-solve by @jolestar in https://github.com/holon-run/holon/pull/747
* Tighten holon trigger auto-review behavior by @jolestar in https://github.com/holon-run/holon/pull/748
* Unify persona contract in AGENTS.md by @jolestar in https://github.com/holon-run/holon/pull/749


**Full Changelog**: https://github.com/holon-run/holon/compare/v0.10.0...v0.11.0
