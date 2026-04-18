---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-18 13:58:28 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.8.6
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v1.8.6**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a GitHub Action that automates the orchestration of AI coding agents to efficiently complete complex development tasks. It decomposes a goal into smaller tasks, assigns them to parallel AI agents, verifies the outputs, and merges successful results while handling failures through retries or alternative models. Key capabilities include support for multiple interchangeable AI agents and models, a plain Python task scheduler, and vendor-agnostic integration, enabling streamlined and adaptable software development workflows.

## What's Changed

## v1.8.6

### Bug fixes
- **templates:** prefer <repo>/templates in dev when prompts/ absent
- **observability:** rotate api_usage.jsonl (audit-068)
- **hooks:** wire HookEvent enum (audit-152)
- **cost:** wire budget policy evaluation (audit-058)
- **server:** include all routers under /api/v1 (audit-126)
- **quality:** make coverage gate non-blocking on completion (audit-032)
- **adapters:** bump opus → claude-opus-4-7 across aider/amp/cody/goose (audit-140)
- **quality:** wire QualityGateCoalescer (audit-037)
- **adapters:** paginate GitHub API instead of --limit cap (audit-098)
- **git:** add missing f-prefix in worktree stderr log (audit-100)
- **persistence:** atomic writes via temp+rename (audit-076)
- **git:** enqueue concurrent merges through merge_queue (audit-091)
- **routing:** bandit learns effort level from rewards (audit-111)
- **persistence:** cross-process file locks (audit-077)
- **tasks:** invoke DLQ when retry limit exceeded (audit-019)
- **tasks:** delete orphan task_completion duplicate (audit-018)
- **build:** ship ascii_logo.md inside package, not via cross-dir force-include
- **splash:** restore ASCII banner — path was short one parent after cli/display/ reorg
- **tests:** align with security/hardening commits
- **git:** abort merge on rebase-or-merge fallback failure (audit-096)
- **tasks:** route batch transitions through FSM (audit-024)
- **cost:** remove quota_tracker (audit-061)
- **cost:** remove cost_hooks (audit-066)
- **tasks:** wire cancel cascade on parent cancel (audit-021)
- **persistence:** include .sdd/runtime/ in disaster-recovery backup (audit-074)
- **adapters:** forward all spawn kwargs through caching wrapper (audit-129)
- **agents:** correct adapter autodetect binary names (audit-130)
- **server:** disable uvicorn reload in evolve mode (audit-115)
- **tasks:** flush recover_stale release to JSONL (audit-015)
- **ci:** register CI log parsers in bootstrap (audit-031)
- **security:** redact sensitive content from always_allow tamper logs
- **observability:** drop OTLP endpoint URL from telemetry init logs
- **routes:** sanitize hook error responses to prevent stack-trace exposure
- **tasks:** consolidate retry counter to typed field (audit-017)
- **git:** salvage uncommitted work before worktree cleanup (audit-088)
- **cost:** bound in-memory usage history (audit-057)
- **git:** incremental merge rejects overwrite of main (audit-090)
- **git:** preserve unmerged agent branches during hygiene (audit-089)
- **persistence:** close uncommitted WAL entries on recovery (audit-072)
- **tasks:** claim_by_id rejects double-claim (audit-014)
- **tests:** update stale refs after F1/F12 merges
- **readme:** restore pluggy-based plugin system claim + add behavior anomaly detection
- **readme,docs:** restore accurate claims — we have web UI, bulletin board, and codebase RAG
- **docs:** repair HTML nav after reorg, use small GIF in README
- **cli:** restore init/status/start/wrap-up command names
- **adapters:** delete broken roo_code and tabby, fix cody and continue_dev

### Security
- real credential scoping per agent (audit-051)
- **oauth:** validate PKCE state parameter (audit-048)
- rate-limit on real peer IP, not trusted header (audit-049)
- **license:** reject empty signing key (audit-050)
- **webhooks:** require HMAC on all webhook POSTs (audit-042)
- **mcp:** require auth + localhost bind by default (audit-116)
- **audit:** split audit key from log storage (audit-043)
- tighten auto-approve rules (audit-045)
- enable auth by default, remove unauth bypass paths (audit-113)
- always-allow list is read-only to agents (audit-046)
- **hooks:** validate path to prevent traversal (audit-114)
- validate SAML assertion signature (audit-041)
- **pii:** dedup on (rule, span) not rule alone (audit-044)

### Performance
- **tasks:** use heap for stale task prioritization (audit-016)

### Refactors & cleanup
- **tokens:** consolidate compactor to single source (audit-062)
- **communication:** remove orphan discord_bot scaffolding (audit-166)
- **tokens:** consolidate token estimator to single source (audit-063)
- reorganize docs into topical subfolders, archive one-off scripts

### Documentation
- swap dead security@bernstein.dev for forte@bernstein.run, add to README Support
- **blog,decisions,workflows:** purge fake benchmarks, fix command/path drift, align adapter count
- **compare:** purge 52/80/28pp benchmark and align to 2026-04-17 reality
- unify adapter count to 17, fix version drift, strip banned words
- **readme:** align claims with canonical facts, soften blacklisted ones
- **claude-md:** correct sub-package descriptions and drop dead core/server.py shim

### Tests
- **budget_actions:** use pytest.approx for float equality (Sonar S1244)
- **caching_adapter:** use pytest.approx for float equality (Sonar S1244)

### Style
- **always_allow:** ruff format after CodeQL redaction fixes
- **adapters:** ruff format cody and continue_dev after F2 fix

### Chores
- **ruff:** exclude scripts/archive/** from lint
- remove hardcoded personal paths, compress demo GIF
- move marketing/internal drafts to private /pr folder

### Other
- wire context_degradation_detector (audit-065) (#889)
- remove self_healing (audit-164) (#872)

**Full changelog:** https://github.com/chernistry/bernstein/compare/v1.8.5...v1.8.6

