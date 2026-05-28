---
title: Skill Eval
date: 2026-05-28 22:56:57 +00:00
tags:
  - skill-bench
  - GitHub Actions
draft: false
repo: https://github.com/skill-bench/skill-eval-action
marketplace: https://github.com/marketplace/actions/skill-eval
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skill-bench/skill-eval-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-eval) to find the latest changes.

## Action Summary

The **Skill Eval Action** is a GitHub Action designed to evaluate and grade Claude Code skills against predefined YAML test cases. It automates the testing process, providing detailed feedback and pass/fail results directly in pull requests, which helps streamline skill validation and ensures quality control. Key features include support for single or multiple skills, dynamic discovery of skills with evaluation directories, and the ability to selectively test only modified skills in a PR.

## What's Changed

# Changelog

## v1.2.0

- Fix: expose plugin root to `claude -p` via `--add-dir` so skills can read `${CLAUDE_PLUGIN_ROOT}`-rooted reference files from inside the per-case temp working directory (#1).

## v1.1.0

- Auto-fix YAML plain scalars containing `: ` (colon-space) — no more parse errors for natural-language criteria
- Support `grading.rubric` eval format with `id`, `description`, `weight`, `pass_if` fields (normalized to flat criteria)
- Validate all eval cases (required fields, types) before making any API calls
- Support `.yml` extension alongside `.yaml` for eval files
- Add `scripts/test_validation.py` for local testing without API calls

## v1.0.0

- Initial release
- Discover and execute eval YAML test cases via `claude -p`
- Grade responses against criteria via separate `claude -p` call
- Post results as PR comment (upsert with HTML marker)
- Upload interactive eval-viewer HTML as artifact
- Configurable pass threshold with step failure
- GitHub Actions step summary with results table
