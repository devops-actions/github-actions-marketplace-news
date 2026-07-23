---
title: Agent Lint
date: 2026-07-23 15:01:34 +00:00
tags:
  - zhupanov
  - GitHub Actions
draft: false
repo: https://github.com/zhupanov/agent-lint
marketplace: https://github.com/marketplace/actions/agent-lint
version: v4.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Agent Lint is a Rust-based linter designed to validate various configuration files used by Claude Code, Cursor, Codex, and standalone MCP. It provides lint rules, two modes (Basic and Plugin), configurable suppression or downgrade of rules, focused execution, GitHub Action integration, cross-platform binaries, and CLI options for linting and diagnosing issues in agent configurations.**
---


Version updated for **https://github.com/zhupanov/agent-lint** to version **v4.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-lint) to find the latest changes.

## Action Summary

**Agent Lint is a Rust-based linter designed to validate various configuration files used by Claude Code, Cursor, Codex, and standalone MCP. It provides lint rules, two modes (Basic and Plugin), configurable suppression or downgrade of rules, focused execution, GitHub Action integration, cross-platform binaries, and CLI options for linting and diagnosing issues in agent configurations.**

## What's Changed

## What's Changed
* Introduce a renderer-independent structured diagnostic model by @zhupanov in https://github.com/zhupanov/agent-lint/pull/206
* Restore documentation and consistency gates by @zhupanov in https://github.com/zhupanov/agent-lint/pull/207
* Add focused rule execution with --only by @zhupanov in https://github.com/zhupanov/agent-lint/pull/208
* Add versioned JSON diagnostic output by @zhupanov in https://github.com/zhupanov/agent-lint/pull/209
* Fix bare extension path classification by @zhupanov in https://github.com/zhupanov/agent-lint/pull/210
* Normalize live instruction prose across AGENTS.md and Cursor rules by @zhupanov in https://github.com/zhupanov/agent-lint/pull/211
* Refine Q002 safety prohibition handling by @zhupanov in https://github.com/zhupanov/agent-lint/pull/212
* Add end-to-end CLI conformance corpus by @zhupanov in https://github.com/zhupanov/agent-lint/pull/213
* Add agent stop-control warning by @zhupanov in https://github.com/zhupanov/agent-lint/pull/214
* Add Q005 unbounded retry prompt rule by @zhupanov in https://github.com/zhupanov/agent-lint/pull/215
* Add Q006 prompt-output-conflict rule (issue 204) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/217
* Add overlap warnings for agent and skill routing descriptions by @zhupanov in https://github.com/zhupanov/agent-lint/pull/218
* Add Q005 CLI conformance coverage by @zhupanov in https://github.com/zhupanov/agent-lint/pull/224
* Fix overlap checks for invalid YAML descriptions by @zhupanov in https://github.com/zhupanov/agent-lint/pull/225
* Fix A029 example and descriptive controls by @zhupanov in https://github.com/zhupanov/agent-lint/pull/226
* Fix Q006 output-shape classification and conflict pairs by @zhupanov in https://github.com/zhupanov/agent-lint/pull/227
* Fix bare extension classification without a fixed allowlist by @zhupanov in https://github.com/zhupanov/agent-lint/pull/231
* Fix A029 parsed agent tool declarations by @zhupanov in https://github.com/zhupanov/agent-lint/pull/232
* Fix Q005 maxTurns YAML handoff by @zhupanov in https://github.com/zhupanov/agent-lint/pull/233
* Fix Q006 clause classification false positives by @zhupanov in https://github.com/zhupanov/agent-lint/pull/267
* Fix audit JSON and description overlap gaps by @zhupanov in https://github.com/zhupanov/agent-lint/pull/268
* Harden shared inline-path classification and probes by @zhupanov in https://github.com/zhupanov/agent-lint/pull/270
* fix: unify retry and stop-control recognition by @zhupanov in https://github.com/zhupanov/agent-lint/pull/269
* Fix prompt analysis on supported instruction surfaces by @zhupanov in https://github.com/zhupanov/agent-lint/pull/274
* Retire unsupported S012/S013 skill-name rules by @zhupanov in https://github.com/zhupanov/agent-lint/pull/281
* Fix canonical skill-name validation across surfaces by @zhupanov in https://github.com/zhupanov/agent-lint/pull/282
* Fix Claude MCP remote transport validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/298
* Align plugin manifest contract with Claude Code by @zhupanov in https://github.com/zhupanov/agent-lint/pull/299
* Narrow S033 vague names and retire S049 gerund enforcement by @zhupanov in https://github.com/zhupanov/agent-lint/pull/301
* Extend M012/M013 plugin component path coverage by @zhupanov in https://github.com/zhupanov/agent-lint/pull/313
* Fix manifest diagnostic precision by @zhupanov in https://github.com/zhupanov/agent-lint/pull/316
* Deep-validate marketplace plugin entries (M009/M019/M021) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/317
* Make MCP discovery and P-rule dispatch platform-aware by @zhupanov in https://github.com/zhupanov/agent-lint/pull/323
* Fix MCP structural validation and rule independence by @zhupanov in https://github.com/zhupanov/agent-lint/pull/331
* Add structured metadata to MCP diagnostics by @zhupanov in https://github.com/zhupanov/agent-lint/pull/332
* Make P018/P019 secret and command analysis syntax-aware by @zhupanov in https://github.com/zhupanov/agent-lint/pull/338
* Fix hook command path extraction and Basic autofix by @zhupanov in https://github.com/zhupanov/agent-lint/pull/347
* Fix plugin hook configuration discovery by @zhupanov in https://github.com/zhupanov/agent-lint/pull/351
* Align userConfig validation with current Claude Code schema by @zhupanov in https://github.com/zhupanov/agent-lint/pull/349
* Split and harden E001 without exposing email values by @zhupanov in https://github.com/zhupanov/agent-lint/pull/363
* Remove repository-specific K001 Slack fallback policy by @zhupanov in https://github.com/zhupanov/agent-lint/pull/357
* Fix script reference integrity rules by @zhupanov in https://github.com/zhupanov/agent-lint/pull/365
* Fix S030/S036/S072/S073 skill structural precision by @zhupanov in https://github.com/zhupanov/agent-lint/pull/370
* Fix Q004 live prose overlap detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/371
* Extend S031/S032 to .agents/skills and .cursor/skills by @zhupanov in https://github.com/zhupanov/agent-lint/pull/372
* Fix canonical agent YAML field validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/373
* Broaden body recognizers for S041/S046/S047/S055 by @zhupanov in https://github.com/zhupanov/agent-lint/pull/380
* Fix Codex config schema validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/383
* Narrow I004 generic-only guidance and remove unsound I005 by @zhupanov in https://github.com/zhupanov/agent-lint/pull/379
* Fix canonical multiline skill descriptions by @zhupanov in https://github.com/zhupanov/agent-lint/pull/389
* Broaden G005 to GitHub-supported SECURITY.md locations by @zhupanov in https://github.com/zhupanov/agent-lint/pull/375
* Fix path-root classification before PWD autofix by @zhupanov in https://github.com/zhupanov/agent-lint/pull/364
* S055: recursively inspect shebang scripts and assign diagnostics to the offending file by @zhupanov in https://github.com/zhupanov/agent-lint/pull/395
* Align S015 with Claude Code listing cap by @zhupanov in https://github.com/zhupanov/agent-lint/pull/394
* I002: make AGENTS.md credential detection complete, source-aware, and non-leaking by @zhupanov in https://github.com/zhupanov/agent-lint/pull/393
* Model Q006 response scopes as an inherited heading tree by @zhupanov in https://github.com/zhupanov/agent-lint/pull/386
* Fix agent frontmatter field validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/406
* Recognize A029/Q005 operative gates through Markdown emphasis by @zhupanov in https://github.com/zhupanov/agent-lint/pull/407
* Escape control characters in human-readable diagnostic output by @zhupanov in https://github.com/zhupanov/agent-lint/pull/405
* Fix typed Codex MCP secret detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/408
* Fix S059 script flag validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/409
* Fix S016/S018/S054 description heuristic false positives by @zhupanov in https://github.com/zhupanov/agent-lint/pull/414
* Fix canonical frontmatter autofix scope by @zhupanov in https://github.com/zhupanov/agent-lint/pull/416
* Fix S022 backslash path detection and autofix by @zhupanov in https://github.com/zhupanov/agent-lint/pull/417
* Broaden H023 dangerous-command pattern coverage by @zhupanov in https://github.com/zhupanov/agent-lint/pull/418
* L006: validate actionable npm commands in shell fences by @zhupanov in https://github.com/zhupanov/agent-lint/pull/419
* S031: stop flagging/rewriting XML-namespace identifiers and reserved-name hosts; single shared checker/autofix classifier by @zhupanov in https://github.com/zhupanov/agent-lint/pull/420
* Fix nested Cursor rule discovery by @zhupanov in https://github.com/zhupanov/agent-lint/pull/421
* Fix markdown fence and XML structure parsing by @zhupanov in https://github.com/zhupanov/agent-lint/pull/426
* Improve S/X diagnostic precision for shared refs and frontmatter by @zhupanov in https://github.com/zhupanov/agent-lint/pull/427
* Narrow D003/G006/G007 to syntactic unfinished-work markers by @zhupanov in https://github.com/zhupanov/agent-lint/pull/429
* fix: align Cursor hooks validation contract by @zhupanov in https://github.com/zhupanov/agent-lint/pull/428
* T001/T002: validate rendered PR URLs and reject ignored repository channelsEnabled by @zhupanov in https://github.com/zhupanov/agent-lint/pull/430
* Fix A012/A013 canonical agent contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/432
* S044: gate context words on word boundaries, not substrings by @zhupanov in https://github.com/zhupanov/agent-lint/pull/431
* Share operative/example scopes across Q001-Q003 and scope Q002 alternatives (#359) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/433
* Fix M021 to match kebab-case against raw marketplace names by @zhupanov in https://github.com/zhupanov/agent-lint/pull/439
* Fix S032 source-positioned secret detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/438
* A005-A007: self-activate the larch template convention and parse Markdown semantics by @zhupanov in https://github.com/zhupanov/agent-lint/pull/442
* D004/L001-L004: build a complete, safe, source-relative instruction import graph by @zhupanov in https://github.com/zhupanov/agent-lint/pull/441
* Unify shared model/tool vocabularies (S063/A014, S040/A019/A020) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/440
* U009: flag userConfig defaults that ship secrets (#412) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/444
* S021 autofix: follow the shared consecutive-bash policy (#326) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/445
* Fix S037 file reference recognition by @zhupanov in https://github.com/zhupanov/agent-lint/pull/446
* CX013: narrow Slack signature class to reject backslashes (#425) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/448
* Fix Q006 hard-wrapped conditional routing (#399) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/447
* Fix script reference extraction gaps by @zhupanov in https://github.com/zhupanov/agent-lint/pull/451
* Sync MCP P026/P027/P009/P017 with current Claude/Cursor contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/449
* Validate marketplace component paths by @zhupanov in https://github.com/zhupanov/agent-lint/pull/452
* G008: make inline-body checks GitHub-command-aware and shell-aware by @zhupanov in https://github.com/zhupanov/agent-lint/pull/454
* Fix CU016 Cursor environment schema validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/456
* Fix masked prose validation rules by @zhupanov in https://github.com/zhupanov/agent-lint/pull/455
* Report malformed hook configurations by @zhupanov in https://github.com/zhupanov/agent-lint/pull/458
* Test Cursor frontmatter prompt recovery by @zhupanov in https://github.com/zhupanov/agent-lint/pull/457
* CU014: optional Cursor subagent fields and A030 Cursor namespace by @zhupanov in https://github.com/zhupanov/agent-lint/pull/459
* I003/D005/L005/S062: structured Markdown refs and safe path resolution by @zhupanov in https://github.com/zhupanov/agent-lint/pull/460
* Fix Cursor skill field compatibility and discovery by @zhupanov in https://github.com/zhupanov/agent-lint/pull/462
* Agent discovery: scan .claude/agents and plugin agents/ recursively (#321) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/463
* CX046-CX063: rebuild Codex plugin manifest linting by @zhupanov in https://github.com/zhupanov/agent-lint/pull/461
* G009-G011: replace line regexes with sound shell and awk analysis by @zhupanov in https://github.com/zhupanov/agent-lint/pull/464
* S014/S034: enforce the Agent Skills description contract by @zhupanov in https://github.com/zhupanov/agent-lint/pull/465
* Fix Codex diagnostic metadata contract by @zhupanov in https://github.com/zhupanov/agent-lint/pull/467
* Make D001/D002 Always-mode with precise Markdown docs refs by @zhupanov in https://github.com/zhupanov/agent-lint/pull/468
* Honor plugin skill export surfaces by @zhupanov in https://github.com/zhupanov/agent-lint/pull/466
* CX060: parse YAML semantically across every Codex skill surface by @zhupanov in https://github.com/zhupanov/agent-lint/pull/469
* Fix Codex project-document discovery and budget rules by @zhupanov in https://github.com/zhupanov/agent-lint/pull/470
* O001-O006: align output-style linting with Claude runtime by @zhupanov in https://github.com/zhupanov/agent-lint/pull/471
* Fix Q005 retry bound association by @zhupanov in https://github.com/zhupanov/agent-lint/pull/473
* Fix S058 Skill invocation detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/474
* Fix S060/S061 fence shell-command precision by @zhupanov in https://github.com/zhupanov/agent-lint/pull/475
* A002/A003/A008-A011: use canonical agent YAML and re-severitize description heuristics by @zhupanov in https://github.com/zhupanov/agent-lint/pull/477
* Fix H023 Git option and shell wrapper detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/482
* M014-M017: share plugin-field validation across manifests and enforce current LSP/channel shapes by @zhupanov in https://github.com/zhupanov/agent-lint/pull/478
* Read skill field-type frontmatter through canonical YAML (#341) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/480
* Extend P019 threat matrix for PowerShell prefixes, root globs, argv joining, and headersHelper by @zhupanov in https://github.com/zhupanov/agent-lint/pull/484
* CU002-CU008: model Cursor MDC frontmatter as four activation states by @zhupanov in https://github.com/zhupanov/agent-lint/pull/476
* Add M024 marketplace whitespace rule by @zhupanov in https://github.com/zhupanov/agent-lint/pull/483
* S028/S069: align argument-hint cross-checks with merged command-argument contract by @zhupanov in https://github.com/zhupanov/agent-lint/pull/472
* R001-R003: recursively validate Claude rules with runtime-compatible paths semantics by @zhupanov in https://github.com/zhupanov/agent-lint/pull/481
* S033: complete domainless denylist and attach name-field metadata by @zhupanov in https://github.com/zhupanov/agent-lint/pull/485
* A031 agent-name-duplicate: flag duplicate agent names in .claude/agents (identity collision) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/486
* Fix S065 agent reference resolution by @zhupanov in https://github.com/zhupanov/agent-lint/pull/489
* G005: accept security-md-missing as a legacy alias (#411) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/487
* Fix S068 inline injection overflow detection by @zhupanov in https://github.com/zhupanov/agent-lint/pull/488
* Fix recursive S030 and S048 skill coverage by @zhupanov in https://github.com/zhupanov/agent-lint/pull/490
* S040/S045/S067: honor documented allowed-tools/disallowed-tools forms; retire S045 by @zhupanov in https://github.com/zhupanov/agent-lint/pull/491
* test: pin retired rule identifiers by @zhupanov in https://github.com/zhupanov/agent-lint/pull/492
* CX026/CX030: validate nested approvals_reviewer and default_tools_approval_mode sites by @zhupanov in https://github.com/zhupanov/agent-lint/pull/493
* docs: record Cursor contract provenance by @zhupanov in https://github.com/zhupanov/agent-lint/pull/498
* Validate Codex profile configuration values by @zhupanov in https://github.com/zhupanov/agent-lint/pull/494
* O001-O006: lint plugin-shipped output styles (root output-styles/ and manifest outputStyles paths) in Plugin mode by @zhupanov in https://github.com/zhupanov/agent-lint/pull/495
* M010/M011: require usable enrichment values without parent cascades by @zhupanov in https://github.com/zhupanov/agent-lint/pull/499
* CHANGELOG: record landed manifest-rule campaign (M001-M021) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/501
* Fix hook script invocation classification by @zhupanov in https://github.com/zhupanov/agent-lint/pull/497
* Fix manifest root and plugin name validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/500
* Fix P018 MCP credential reference coverage by @zhupanov in https://github.com/zhupanov/agent-lint/pull/505
* S041 (fork-no-task): read `context` through canonical YAML by @zhupanov in https://github.com/zhupanov/agent-lint/pull/504
* Reverify Cursor contracts against cursor.com/docs by @zhupanov in https://github.com/zhupanov/agent-lint/pull/507
* Fix #437: refresh Claude Code vocabularies by @zhupanov in https://github.com/zhupanov/agent-lint/pull/503
* Fix focused JSON output for retired rule selectors by @zhupanov in https://github.com/zhupanov/agent-lint/pull/564
* fix: close S032 command substitution bypass by @zhupanov in https://github.com/zhupanov/agent-lint/pull/565
* Fix S058 canonical YAML tool gate by @zhupanov in https://github.com/zhupanov/agent-lint/pull/566
* fix: balance R001 brace expansion so nested empties fail closed by @zhupanov in https://github.com/zhupanov/agent-lint/pull/567
* fix: stop Q rules from scanning unterminated and BOM frontmatter by @zhupanov in https://github.com/zhupanov/agent-lint/pull/568
* fix: cover hook command runtime boundaries by @zhupanov in https://github.com/zhupanov/agent-lint/pull/571
* Fix plugin and marketplace validation drift by @zhupanov in https://github.com/zhupanov/agent-lint/pull/569
* Fix P019 command argv boundaries by @zhupanov in https://github.com/zhupanov/agent-lint/pull/570
* fix: unify runtime skill discovery consumers by @zhupanov in https://github.com/zhupanov/agent-lint/pull/572
* Fix CommonMark Markdown tokenization and link decoding by @zhupanov in https://github.com/zhupanov/agent-lint/pull/575
* fix: assign npm and grep positional roles option-awarely by @zhupanov in https://github.com/zhupanov/agent-lint/pull/573
* fix: align instruction reference discovery for imports and package scopes by @zhupanov in https://github.com/zhupanov/agent-lint/pull/574
* fix: accept documented empty and templated Claude MCP URLs (P010/P017) by @zhupanov in https://github.com/zhupanov/agent-lint/pull/576
* Fix G008-G011 shell analysis dispatch and dynamic-flow gaps by @zhupanov in https://github.com/zhupanov/agent-lint/pull/577
* fix: tighten instruction classifier grammars by @zhupanov in https://github.com/zhupanov/agent-lint/pull/578
* fix: complete Codex plugin manifest validation contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/579
* fix: keep Codex diagnostics secret-safe and budget-visible by @zhupanov in https://github.com/zhupanov/agent-lint/pull/581
* Fix JSON diagnostics losing duplicate, field, and array source locations by @zhupanov in https://github.com/zhupanov/agent-lint/pull/580
* fix: correct agent root, marker, name, and metadata classification by @zhupanov in https://github.com/zhupanov/agent-lint/pull/582
* Enforce parser-role and invalid-subtree contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/584
* Append bug-mining architectural entries by @zhupanov in https://github.com/zhupanov/agent-lint/pull/588
* Unify executable and retired identifier contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/590
* Add conformance coverage and source-policy guards by @zhupanov in https://github.com/zhupanov/agent-lint/pull/597
* test: enforce diagnostic safety corpus by @zhupanov in https://github.com/zhupanov/agent-lint/pull/599
* Add AST-backed validator purity and traversal lints by @zhupanov in https://github.com/zhupanov/agent-lint/pull/606
* Fix live rule registry accounting by @zhupanov in https://github.com/zhupanov/agent-lint/pull/607
* test: inventory validator peer dependencies by @zhupanov in https://github.com/zhupanov/agent-lint/pull/608
* Fix S059 modular Python CLI flag validation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/611
* fix: S030 ignore cache artifacts and harness-owned fixtures by @zhupanov in https://github.com/zhupanov/agent-lint/pull/609
* fix: stop S032 flagging ordinary token identifiers by @zhupanov in https://github.com/zhupanov/agent-lint/pull/610
* Fix Markdown control scope classifiers by @zhupanov in https://github.com/zhupanov/agent-lint/pull/613
* Enforce CWD test guards and serialization by @zhupanov in https://github.com/zhupanov/agent-lint/pull/612
* docs: record architectural contracts by @zhupanov in https://github.com/zhupanov/agent-lint/pull/614
* Generalize contract matrix admission by @zhupanov in https://github.com/zhupanov/agent-lint/pull/617
* fix: keep UTF-8 scalars intact in clause splitting and sourcepos ranges by @zhupanov in https://github.com/zhupanov/agent-lint/pull/618
* fix: unify script reference classification across G002-G004 by @zhupanov in https://github.com/zhupanov/agent-lint/pull/619
* test: add text/JSON renderer parity invariant by @zhupanov in https://github.com/zhupanov/agent-lint/pull/620
* test: cover UTF-8 clause scanning regression by @zhupanov in https://github.com/zhupanov/agent-lint/pull/622
* Fix Comrak column semantics for Unicode prose by @zhupanov in https://github.com/zhupanov/agent-lint/pull/624
* test: enforce architecture and rule/autofix consistency by @zhupanov in https://github.com/zhupanov/agent-lint/pull/623
* Fix S059 literal Python registry dispatch by @zhupanov in https://github.com/zhupanov/agent-lint/pull/629
* fix: recognize S030 references ending in sentence punctuation by @zhupanov in https://github.com/zhupanov/agent-lint/pull/630
* fix: recognize Python-owned skill fixtures by @zhupanov in https://github.com/zhupanov/agent-lint/pull/632
* Fix G004 Python-composed script reachability by @zhupanov in https://github.com/zhupanov/agent-lint/pull/631
* fix: accept End and Schedule Q002 alternatives by @zhupanov in https://github.com/zhupanov/agent-lint/pull/637
* Fix G004 Python subprocess reachability by @zhupanov in https://github.com/zhupanov/agent-lint/pull/638
* Fix S030 Python fixture string ownership by @zhupanov in https://github.com/zhupanov/agent-lint/pull/645
* Fix S059 imported Python literal registries by @zhupanov in https://github.com/zhupanov/agent-lint/pull/647
* Fix Python hygiene command edges by @zhupanov in https://github.com/zhupanov/agent-lint/pull/649
* Fix G003 command-substitution interpreter classification by @zhupanov in https://github.com/zhupanov/agent-lint/pull/651


**Full Changelog**: https://github.com/zhupanov/agent-lint/compare/v3...v4.0.0
