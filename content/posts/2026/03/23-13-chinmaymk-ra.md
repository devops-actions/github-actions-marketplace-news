---
title: ra - AI Agent
date: 2026-03-23 13:39:55 +00:00
tags:
  - chinmaymk
  - GitHub Actions
draft: false
repo: https://github.com/chinmaymk/ra
marketplace: https://github.com/marketplace/actions/ra-ai-agent
version: v0.0.5
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/chinmaymk/ra** to version **v0.0.5**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ra-ai-agent) to find the latest changes.

## Action Summary

The **Ra GitHub Action** is a configurable and autonomous task automation tool that operates as an agent loop, capable of running commands through a CLI, REPL, HTTP server, or cron jobs. It streamlines complex workflows by managing tasks, adapting reasoning depth, and executing actions until completion, all while leveraging AI models from providers like OpenAI and Anthropic. With YAML-based configuration, middleware extensibility, and robust permissions, it ensures predictable and auditable behavior, making it ideal for automating repetitive tasks, debugging, and augmenting developer workflows.

## Release notes

## What's Changed
* Add Ctrl+C interrupt handling to gracefully cancel requests by @chinmaymk in https://github.com/chinmaymk/ra/pull/32
* Handle ask_user tool results with message merging for API compatibility by @chinmaymk in https://github.com/chinmaymk/ra/pull/29
* Rename built-in tools to use PascalCase naming convention by @chinmaymk in https://github.com/chinmaymk/ra/pull/36
* Refactor config structure: centralize dataDir, simplify observability by @chinmaymk in https://github.com/chinmaymk/ra/pull/39
* Add dynamic context discovery middleware for agent tool interactions by @chinmaymk in https://github.com/chinmaymk/ra/pull/37
* Refactor: Extract utilities and consolidate shell execution tools by @chinmaymk in https://github.com/chinmaymk/ra/pull/38
* Add recursive depth option to LS tool by @chinmaymk in https://github.com/chinmaymk/ra/pull/40
* Remove unnecessary spread operations by @chinmaymk in https://github.com/chinmaymk/ra/pull/41
* Remove hardcoded counts from documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/44
* Streamline README with focus on core concepts and documentation links by @chinmaymk in https://github.com/chinmaymk/ra/pull/45
* docs: replace arrow notation with greater-than symbols in config docs by @chinmaymk in https://github.com/chinmaymk/ra/pull/46
* Add Features section to README with usage examples by @chinmaymk in https://github.com/chinmaymk/ra/pull/47
* Add Logger support to AgentLoop and expose via context by @chinmaymk in https://github.com/chinmaymk/ra/pull/49
* Add Use Cases section to README highlighting ra's versatility by @chinmaymk in https://github.com/chinmaymk/ra/pull/50
* update tagline to "The predictable agent loop." by @chinmaymk in https://github.com/chinmaymk/ra/pull/51
* Add session history logging to HTTP and MCP interfaces by @chinmaymk in https://github.com/chinmaymk/ra/pull/52
* Add --show-config flag to inspect resolved configuration by @chinmaymk in https://github.com/chinmaymk/ra/pull/43
* Refactor tool configuration: replace builtinTools boolean with tools section by @chinmaymk in https://github.com/chinmaymk/ra/pull/55
* Add session memory: ephemeral in-memory KV store that survives context compaction by @chinmaymk in https://github.com/chinmaymk/ra/pull/53
* Add documentation versioning support with version switcher by @chinmaymk in https://github.com/chinmaymk/ra/pull/56
* Handle scratchpad embedded in merged messages during compaction by @chinmaymk in https://github.com/chinmaymk/ra/pull/57
* Infer CLI mode when prompt is provided without explicit interface flag by @chinmaymk in https://github.com/chinmaymk/ra/pull/59
* Add Inspector UI for debugging sessions and global state by @chinmaymk in https://github.com/chinmaymk/ra/pull/58
* Restructure docs to serve dev and latest release versions by @chinmaymk in https://github.com/chinmaymk/ra/pull/60
* Fix indentation in docs-deploy workflow config generation by @chinmaymk in https://github.com/chinmaymk/ra/pull/61
* Fix broken documentation link in inspector.md by @chinmaymk in https://github.com/chinmaymk/ra/pull/62
* Fix docs build errors when tags lack docs/site directory by @chinmaymk in https://github.com/chinmaymk/ra/pull/63
* Claude/fix dead link o8 yrr by @chinmaymk in https://github.com/chinmaymk/ra/pull/65
* Fix versioned docs 404 by using full config instead of minimal one by @chinmaymk in https://github.com/chinmaymk/ra/pull/66
* Clarify inspector as standalone interface, not sidecar by @chinmaymk in https://github.com/chinmaymk/ra/pull/67
* add OpenAI responses api  by @chinmaymk in https://github.com/chinmaymk/ra/pull/64
* Refactor: Split monolith into @chinmaymk/ra package and ra-app by @chinmaymk in https://github.com/chinmaymk/ra/pull/68
* Update branding: "agent loop" → "agent harness" by @chinmaymk in https://github.com/chinmaymk/ra/pull/69
* Remove built-in skills and builtin skills config by @chinmaymk in https://github.com/chinmaymk/ra/pull/70
* Add custom prompt support for context compaction by @chinmaymk in https://github.com/chinmaymk/ra/pull/71
* Add token estimation for tools and improve bootstrap telemetry by @chinmaymk in https://github.com/chinmaymk/ra/pull/73
* Add graceful error handling and retry logic for provider APIs by @chinmaymk in https://github.com/chinmaymk/ra/pull/72
* Add context length error detection and forced compaction recovery by @chinmaymk in https://github.com/chinmaymk/ra/pull/74
* Refactor: Extract message building and TUI state management by @chinmaymk in https://github.com/chinmaymk/ra/pull/76
* Refactor console logging to use structured logging patterns by @chinmaymk in https://github.com/chinmaymk/ra/pull/77
* Reorganize token estimator tests to match package structure by @chinmaymk in https://github.com/chinmaymk/ra/pull/75
* Ensure @chinmaymk/ra core library is runtime-agnostic by @chinmaymk in https://github.com/chinmaymk/ra/pull/78
* Add maxToolResponseSize to truncate oversized tool outputs by @chinmaymk in https://github.com/chinmaymk/ra/pull/80
* Add detailed CLAUDE.md guides for each package and subsystem by @chinmaymk in https://github.com/chinmaymk/ra/pull/79
* Refactor scratchpad and improve tool documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/82
* Reorganize config into `app` and `agent` sections by @chinmaymk in https://github.com/chinmaymk/ra/pull/83
* Add comprehensive test suite for recipe configurations by @chinmaymk in https://github.com/chinmaymk/ra/pull/84
* Refactor skills to use lazy-loading with pattern resolver by @chinmaymk in https://github.com/chinmaymk/ra/pull/85
* Add cron interface for scheduling agent jobs by @chinmaymk in https://github.com/chinmaymk/ra/pull/87
* Add support for resuming latest session without specifying ID by @chinmaymk in https://github.com/chinmaymk/ra/pull/88
* Add autoresearch recipe for autonomous ML experimentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/86
* Add ra-claude-code recipe: AI coding agent with extended thinking by @chinmaymk in https://github.com/chinmaymk/ra/pull/89
* Add multi-agent orchestrator recipe with persistent specialist agents by @chinmaymk in https://github.com/chinmaymk/ra/pull/90
* Fix system prompt marker injection logging by @chinmaymk in https://github.com/chinmaymk/ra/pull/91
* Replace non-null assertions with optional chaining and type guards by @chinmaymk in https://github.com/chinmaymk/ra/pull/92
* Update project tagline to emphasize predictability and observability by @chinmaymk in https://github.com/chinmaymk/ra/pull/94
* Move provider credentials from agent to app config section by @chinmaymk in https://github.com/chinmaymk/ra/pull/93
* Fix message duplication when resuming sessions by @chinmaymk in https://github.com/chinmaymk/ra/pull/95
* Update development guidelines in CLAUDE.md by @chinmaymk in https://github.com/chinmaymk/ra/pull/97
* Replace RA_* env vars with standard vars and ${VAR} interpolation by @chinmaymk in https://github.com/chinmaymk/ra/pull/96
* Prevent duplicate messages in resumed sessions with _messageId tracking by @chinmaymk in https://github.com/chinmaymk/ra/pull/98
* Refactor context discovery to use beforeModelCall middleware by @chinmaymk in https://github.com/chinmaymk/ra/pull/99
* Support ContentPart[] content in resolve-middleware by @chinmaymk in https://github.com/chinmaymk/ra/pull/100
* Add openai-completions provider for OpenAI-compatible services by @chinmaymk in https://github.com/chinmaymk/ra/pull/101
* Add session resumption tracking to agent loop by @chinmaymk in https://github.com/chinmaymk/ra/pull/102
* Nest observability config under app section in documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/103
* Add comprehensive logging throughout the application by @chinmaymk in https://github.com/chinmaymk/ra/pull/104
* Add stream metrics and TTFT tracking to observability middleware by @chinmaymk in https://github.com/chinmaymk/ra/pull/105
* Add thinking/reasoning support across AI providers by @chinmaymk in https://github.com/chinmaymk/ra/pull/106
* Improve shell command output formatting with structured exit codes by @chinmaymk in https://github.com/chinmaymk/ra/pull/107
* Remove AskUserQuestion tool and related functionality by @chinmaymk in https://github.com/chinmaymk/ra/pull/109
* Remove goodbye message from REPL double-press interrupt by @chinmaymk in https://github.com/chinmaymk/ra/pull/108
* Remove AskUserQuestion tool and update documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/110
* Reorganize config: move agent capabilities to agent section by @chinmaymk in https://github.com/chinmaymk/ra/pull/112
* Add documentation version picker for multi-version docs by @chinmaymk in https://github.com/chinmaymk/ra/pull/111
* Add docs build CI workflow and improve build script by @chinmaymk in https://github.com/chinmaymk/ra/pull/113
* Add per-tool timeout configuration support by @chinmaymk in https://github.com/chinmaymk/ra/pull/115
* Fix REPL output formatting and state management by @chinmaymk in https://github.com/chinmaymk/ra/pull/114
* Simplify StreamBuffer and add tool_call_start streaming support by @chinmaymk in https://github.com/chinmaymk/ra/pull/118
* Add adaptive thinking mode and thinking budget cap support by @chinmaymk in https://github.com/chinmaymk/ra/pull/119
* Add cache metrics tracking across providers and observability by @chinmaymk in https://github.com/chinmaymk/ra/pull/120
* Add prompt caching support to Anthropic provider by @chinmaymk in https://github.com/chinmaymk/ra/pull/121
* Add recipe support for agent configuration templates by @chinmaymk in https://github.com/chinmaymk/ra/pull/116
* Add repository context middleware to Claude code agent by @chinmaymk in https://github.com/chinmaymk/ra/pull/124
* Add comprehensive recipe creation guide and expand recipes documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/125
* Add parallel tool calls, token budget, and duration limits to AgentLoop by @chinmaymk in https://github.com/chinmaymk/ra/pull/126
* Improve tool output truncation to show top and bottom portions by @chinmaymk in https://github.com/chinmaymk/ra/pull/127
* Prevent recipes from defining app configuration by @chinmaymk in https://github.com/chinmaymk/ra/pull/129
* Reorganize MCP configuration from agent to app scope by @chinmaymk in https://github.com/chinmaymk/ra/pull/128
* Fix baseUrl to baseURL in provider documentation by @chinmaymk in https://github.com/chinmaymk/ra/pull/132
* Fix recipe validation to prevent empty app object creation by @chinmaymk in https://github.com/chinmaymk/ra/pull/133
* Reorganize config schema: move agent settings under agent key by @chinmaymk in https://github.com/chinmaymk/ra/pull/131
* Adjust adaptive thinking threshold and default iteration limits by @chinmaymk in https://github.com/chinmaymk/ra/pull/134
* fix: correct inaccurate defaults and config paths across docs by @chinmaymk in https://github.com/chinmaymk/ra/pull/135
* Fix bugs found during code review by @chinmaymk in https://github.com/chinmaymk/ra/pull/136
* Improve /clear command to reset pending state and create new session by @chinmaymk in https://github.com/chinmaymk/ra/pull/138
* Centralize session storage and add multi-project support by @chinmaymk in https://github.com/chinmaymk/ra/pull/130
* Add dynamic context window learning from provider errors by @chinmaymk in https://github.com/chinmaymk/ra/pull/139
* Add JSON syntax highlighting to inspector tool calls by @chinmaymk in https://github.com/chinmaymk/ra/pull/140
* Fix TUI output formatting for tool calls and results by @chinmaymk in https://github.com/chinmaymk/ra/pull/142
* Consolidate interface options and refactor stream handling by @chinmaymk in https://github.com/chinmaymk/ra/pull/141
* Simplify JSON highlighting and remove unused CSS classes by @chinmaymk in https://github.com/chinmaymk/ra/pull/143
* Add tool execution hooks and improve streaming state management by @chinmaymk in https://github.com/chinmaymk/ra/pull/144
* Add truncate strategy to context compaction with prefix cache optimization by @chinmaymk in https://github.com/chinmaymk/ra/pull/145
* Refocus documentation on autonomous operation and long-running agents by @chinmaymk in https://github.com/chinmaymk/ra/pull/146


**Full Changelog**: https://github.com/chinmaymk/ra/compare/v0.0.3...v0.0.5
