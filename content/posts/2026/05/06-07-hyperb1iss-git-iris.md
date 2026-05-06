---
title: Git-Iris Action
date: 2026-05-06 07:29:38 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.0.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.0.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is a GitHub Action powered by an intelligent agent, Iris, that analyzes your codebase to automate and enhance key Git workflows. It generates context-aware commit messages, performs in-depth code reviews, creates detailed pull request descriptions, and produces changelogs and release notes. By providing these capabilities, it streamlines code management tasks, ensures high-quality documentation, and improves collaboration efficiency.

## What's Changed

**Released:** 2026-05-05

This release adds direct GitHub publishing for PR descriptions and code reviews, improves output quality with anti-slop tone rules, and includes dependency upgrades with breaking API changes handled.

## ✨ Highlights

### 🪄 GitHub Publishing for PRs and Reviews
Publish AI-generated PR descriptions and code reviews directly to GitHub without leaving the CLI. The `--update` flag on `git-iris pr` pushes descriptions to open PRs, while `--github-review` on `git-iris review` posts formal review comments. Both commands auto-detect the PR from the current branch or accept an explicit `--pr <number>`.

### 🪄 Intelligent PR Description Revision
When updating an existing PR, Iris reads the current body first and revises it instead of replacing it wholesale. Accurate reviewer-facing content is preserved while stale sections are removed. Iris also discovers GitHub PR templates from standard locations (`.github/pull_request_template.md`, `PULL_REQUEST_TEMPLATE/`, etc.) and adapts generated descriptions around them.

### 🗣️ Anti-Slop Tone Rules
Iris's default preamble now includes explicit guidance to avoid common LLM tells: no em dashes, no hedge phrases ("it's worth noting"), no filler intros ("I'd be happy to"), no hype vocabulary ("robust", "leverage"), and no stacked emoji. These rules produce cleaner, more direct output.

### 🧹 Agentic Review Strategy
Code reviews now follow a staged investigation pattern: plan from the summary diff, run specialist passes for distinct concerns (security, API contracts, concurrency), aggregate findings ruthlessly, and verify suspicious issues before reporting them. The review prompt also requires confidence levels (High/Medium/Low) on every finding.

## 🤖 GitHub Integration

- **`GitHubClient`** in `src/github.rs` wraps the `octocrab` crate for PR and review operations
- **Auto-PR detection** finds the open PR for the current branch, falling back to `--pr <number>` when ambiguous
- **Inline review comments** with `--github-inline-comments` post findings at the exact file:line locations present in the PR diff; unreachable lines are filtered out
- **Review events** selectable via `--github-review-event` (Comment, Approve, RequestChanges)
- **Token resolution** via `GH_TOKEN`, `GITHUB_TOKEN`, or the GitHub CLI auth store

## 🔧 Tooling and Dependencies

- **rig-core 0.36** upgrade: `from_env()` client constructors are now fallible, with proper error handling for missing credentials
- **rustls aws-lc-rs** pinned as the process crypto provider to avoid TLS initialization races
- **Clippy restriction lints** added for `panic`, `unimplemented`, `let_underscore_future`, and `unchecked_time_subtraction`
- **Clippy 1.95 compatibility**: nested `if let` chains collapsed into `match` arm guards
- Dependency bumps: `clap` 4.6.1, `lru` 0.18, `tokio` 1.52, `reqwest` 0.13.3, `uuid` 1.23, `rand` 0.10.1

## 📝 Code Quality

- **`src/changelog.rs` refactored**: long `write_changelog` method split into focused helpers (`clean_generated_changelog`, `extract_version_content`, `apply_version_override`, `ensure_version_date`, `merge_existing_changelog`)
- **`src/services/git_commit.rs` refactored**: `perform_commit` and `perform_amend` unified into `perform_local_change` with shared hook execution
- **Emoji deduplication**: `format_commit_message` now strips redundant gitmoji when the title already includes it

## 📚 Documentation

- **Claude Code skill** added at `skills/git-iris/SKILL.md` teaching AI coding agents to delegate commit messages, PR descriptions, and reviews to git-iris
- **User guide updates** for `--update`, `--pr`, `--github-review`, and template discovery

## Upgrade Notes

- If you use environment-based LLM credentials, verify the relevant variables (`OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, `GEMINI_API_KEY`) are set; the new fallible `from_env()` will fail fast with a clear error instead of panicking later.
- GitHub publishing requires authentication via `gh auth login` or a `GH_TOKEN`/`GITHUB_TOKEN` environment variable.

