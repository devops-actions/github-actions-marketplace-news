---
title: EvalView - AI Agent Testing
date: 2026-02-27 21:26:47 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.3.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.3.2**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Action Summary

EvalView is an open-source testing framework for AI agents that automates regression detection by comparing changes in agent behavior against a saved golden baseline. It helps developers identify and prevent unintended behavioral changes when modifying prompts, models, or tools, making it a critical CI/CD layer for AI development. Key features include automatic behavioral drift detection, compatibility with various frameworks and APIs, and the ability to operate fully offline without requiring LLM-based evaluations.

## Release notes

## What's fixed

### claude-code adapter: auth failure in MCP context
The adapter was failing immediately (~3-4s) with "Invalid API key" when invoked through the MCP chain. Root cause: Claude Code sets `ANTHROPIC_API_KEY` to a session-scoped token in its subprocess environment, which the inner `claude --print` inherited and the Anthropic API rejected.

**Fix:** Strip `ANTHROPIC_API_KEY` from the adapter's env so the inner claude falls back to `~/.claude.json` credentials (stored by `claude auth login`).

### custom adapter: works for OAuth users (no API key needed)
The demo `runner.py` used the Anthropic SDK directly, which requires `ANTHROPIC_API_KEY`. Claude Code OAuth users don't have this env var set.

**Fix:** Rewrote runner to use `claude --print` subprocess (same auth path as the claude-code adapter).

### MCP server: skill test timeout raised to 600s
Multi-test suites (10 tests × ~15s each) were hitting the previous 120s timeout.

## Other improvements
- Non-interactive mode for `generate-tests` (`--auto` / no TTY)
- Better first-snapshot and first-check celebration panels with CI integration steps
- 60s asyncio timeout on LLM calls in test generator
- Actionable hints when skill dependencies (e.g. mcporter) are missing
