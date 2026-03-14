---
title: PR Sentinel — QA Review
date: 2026-03-14 21:28:43 +00:00
tags:
  - doqaland
  - GitHub Actions
draft: false
repo: https://github.com/doqaland/pr-sentinel
marketplace: https://github.com/marketplace/actions/pr-sentinel-qa-review
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/doqaland/pr-sentinel** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-sentinel-qa-review) to find the latest changes.

## Action Summary

PR Sentinel is a GitHub Action that automates QA-focused analysis of pull requests using Claude AI. It reviews code changes by analyzing the PR diff and description against acceptance criteria, then provides structured feedback in a comment, including AC coverage, risk level, potential functional gaps, regression risks, suggested test scenarios, and open questions. This action helps development teams identify QA concerns early, ensuring code quality and reducing production risks before involving a QA team.

## Release notes

## PR Sentinel v1.0.0

AI-powered QA analysis on every pull request — thinks like a QA engineer, not a code reviewer.

### What it does
- Reads your PR diff against the linked issue description
- Identifies what a QA engineer must test
- Assigns a 1–10 risk score
- Posts a structured report as a PR comment automatically

### Setup
Add your `ANTHROPIC_API_KEY` to your repo secrets, copy the workflow file from the README, done.

### Requirements
- Anthropic API key (Claude Sonnet 4.6)
- GitHub Actions enabled on your repo
