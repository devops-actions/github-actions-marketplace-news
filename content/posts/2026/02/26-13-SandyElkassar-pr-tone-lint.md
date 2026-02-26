---
title: PR Tone Lint
date: 2026-02-26 13:28:55 +00:00
tags:
  - SandyElkassar
  - GitHub Actions
draft: false
repo: https://github.com/SandyElkassar/pr-tone-lint
marketplace: https://github.com/marketplace/actions/pr-tone-lint
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SandyElkassar/pr-tone-lint** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-tone-lint) to find the latest changes.

## Action Summary

PR Tone Lint is a GitHub Action that analyzes pull request review comments to detect and flag language that may be blame-focused or accusatory, helping to foster a more constructive and positive team culture. It automatically provides a tone score, explains why a comment might be perceived as harsh, and suggests neutral rewrites to focus feedback on the code rather than the individual. This action streamlines the process of maintaining professional and collaborative communication in code reviews.

## Release notes

**PR Tone Lint — In-thread Tone Moderation for PR Reviews**
A lightweight GitHub Action that helps teams keep PR reviews constructive. It analyzes review comments for blame-focused or harsh language, assigns a tone score, explains why it might land badly, and returns a neutral, code-focused rewrite. When appropriate, it replies directly in the review thread, not as a separate PR comment.


**What it does**

Detects blame-focused or harsh language in PR review comments

Returns a tone score (0–100), tone label, explanation, and a code-focused rewrite

Posts the rewrite directly in the review thread (when the comment is a code-review comment)

Supports multiple personalities (strict, balanced, humorous)

Costs are low and predictable (OpenAI GPT-4o usage with a per-analysis cost)

No servers required; runs entirely in GitHub Actions

Open source (MIT) and easily customizable for teams


**Key features**

In-thread responses: Replies directly in the code-review thread where the harsh comment was posted

Transparent scoring: blame_score, tone_label (constructive | borderline | blame-focused | personal-attack), explanation

Safe, neutral rewrites: Suggest code-focused rewrites that focus on the code, not the person

Configurable thresholds: blame-threshold, post-on-borderline

Lightweight, dependency-free UX: No dashboards or external services required


**Prerequisites**

A GitHub account and repository where you’ll publish the Action

OpenAI API key (for the tone analysis)

Node.js and npm (tested with Node 18+)

Optional: a public test repo or a private one you’re comfortable using for testing

What you’ll get in your repo


A GitHub Action that runs on PR review comment events

A TypeScript codebase (src/) with:

index.ts: orchestration logic

github.ts: GitHub API interactions (fetch comment, post reply)

analyzer.ts: LLM prompt + scoring logic

formatter.ts: human-friendly, markdown-formatted response

types.ts: shared data shapes (CommentContext, AnalysisResult, ToneLabel)



A prompts/tone-analysis.txt prompt (LLM instructions)

A YAML workflow example (.github/workflows/tone-lint.yml)

An action.yml describing the composite or container action you publish

A README to explain usage and setup

Unit tests (formatter.ts, analyzer.ts) and optional integration tests (with OpenAI)

