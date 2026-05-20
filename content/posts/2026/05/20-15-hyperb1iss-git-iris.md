---
title: Git-Iris Action
date: 2026-05-20 15:09:59 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is a GitHub Action powered by an intelligent agent, Iris, that automates and enhances Git workflows by generating context-aware commit messages, performing detailed code reviews, creating changelogs, and drafting release notes. It solves the problem of manually crafting Git artifacts by deeply analyzing code diffs, file relationships, and project context to produce accurate and insightful outputs. Key features include semantic blame analysis, pull request descriptions, and a conversational terminal interface for interactive collaboration.

## What's Changed

# Release Notes v2.1.0

**Released:** 2026-05-20

This release introduces a **critic verification pass** that validates generated artifacts against repository evidence, **structured review findings** with GitHub inline publishing, and a suite of new analysis tools. The focus is on accuracy, cost efficiency through Anthropic prompt caching, and deeper codebase exploration.

## ✨ Highlights

### Critic Verification Pass
New `verify` capability reviews generated artifacts (commits, PRs, changelogs, reviews) for unsupported claims, incorrect citations, and scope overstatement. When issues are found, Iris regenerates with guidance. Material errors like critical severity issues trigger automatic revision; style or wording differences are ignored.

### Structured Review Findings with GitHub Inline Comments
Reviews now return typed `Finding` objects with severity, confidence, category, file location, and evidence references. Findings gate at 70% confidence (configurable via `DEFAULT_MIN_FINDING_CONFIDENCE`). Publishing to GitHub places inline comments directly on PR diff lines with permalinks in the review body.

### Repository Map for Codebase Orientation
New `repo_map` tool builds a compact, ranked view of source files with definitions and imports. Scoring prioritizes mentioned files (+1000), recently changed files (+250), and shallow paths. Token budget clamps to 50-8000 tokens; max files caps at 200.

### Anthropic Prompt Caching
Automatic caching now applies to both main agent and subagents. Cached input tokens bill at ~90% discount, cutting costs for multi-turn tool loops where the same context/system prompt is re-sent.

### Configurable Subagent Turn Budget
Parallel subagents now accept a `max_turns` argument (1-100) to cap tool loops. Precedence: per-invocation argument, then tool instance config, then default of 20. Failures now return descriptive error messages instead of empty strings.

## 🔧 New Tools

- **`repo_map`**: Ranked codebase overview with definitions/imports extracted from 14 file types. Respects `.gitignore`, excludes files >400KB. Parameters: `token_budget` (default 2000), `max_files` (default 60), `mentioned_files` for explicit prioritization.
- **`static_analysis`**: Runs installed linters (clippy, ruff, biome/oxlint, golangci-lint/go vet) without package installation. Auto-detects project type from config files. Parameters: `analyzer`, `timeout_secs` (1-600), `max_output_chars` (512-40000).
- **`git_show`**: Inspects historical commit metadata, stats, and patch. Parameters: `commit` (required), `files` (optional filter), `max_output_chars` (1000-50000).
- **`git_blame`**: Line-level history with author, date, and summary. Also fetches recent commits touching the file. Parameters: `file`, `start_line`, `end_line`, `recent_commits` (1-10).

## 🤖 Agent Framework

- Added `verify.toml` capability with severity levels: critical, high, medium, low
- `Critique` struct returns `requires_revision`, `issues[]`, `revision_prompt`, and `confidence`
- Critic executes only for supported output types: `GeneratedMessage`, `Review`, `MarkdownPullRequest`, `MarkdownChangelog`, `MarkdownReleaseNotes`
- Graceful degradation: critic failures skip verification and return original artifact

## 🔎 Review Improvements

- `Review` struct now includes `metadata` (risk level, strategy, specialist passes), `findings[]`, and `stats`
- `Finding` fields: `id`, `severity`, `confidence`, `file`, `start_line`, `end_line`, `category`, `title`, `body`, `suggested_fix`, `evidence[]`
- Flexible confidence parsing handles integer, float, and percentage string formats
- `ReviewMetadata` surfaces the agentic review strategy for transparency
- `visible_findings()` filters to 70%+ confidence by default

## 🐙 GitHub Integration

- `publish_structured_review()` posts inline comments on PR diff lines
- Validates comment candidates against reviewable lines before submission
- Review body includes GitHub permalinks section linking to each finding location
- Multi-line findings use `start_line`/`end_line` ranges in GitHub API

## ⚡ Performance & Cost

- Anthropic `with_automatic_caching()` applied via shared `anthropic_agent_builder()`
- `CompletionProfile` differentiates OpenAI reasoning effort: `MainAgent` (medium), `Subagent` (low), `StatusMessage` (none). This applies only to OpenAI models with reasoning effort support.
- Parallel subagent errors now populate `SubagentResult.error` with details instead of silent failures
- `ParallelAnalyzeResult` includes `successful` and `failed` counts for visibility

## ⬆️ Dependencies

- Bumped `rig-core` to 0.37 (crate renamed to `rig` in imports)
- Edition updated to Rust 2024

## 📝 Documentation

- Refreshed docs covering GitHub publishing, `--amend` flag, XDG config paths, Homebrew installation
- Added `ROADMAP.md` replacing the companion design document
- Updated `SKILL.md` with branch usage patterns
- Expanded architecture docs for new tools, critic pass, and studio refactor

## Upgrade Notes

- The `rig-core` crate is now imported as `rig`. Update any direct Rig dependencies if extending Git-Iris.
- Critic verification is enabled by default. Disable with `critic_enabled: false` in config if you prefer no revision passes.
- Review findings below 70% confidence are hidden by default. Adjust `DEFAULT_MIN_FINDING_CONFIDENCE` if needed.
- Subagent turn budget defaults to 20. For broad searches, increase via `max_turns` argument; for cost control, decrease it.

