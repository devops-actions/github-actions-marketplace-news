---
title: Skylos - Python SAST, Dead Code Detection & PR Gate
date: 2026-03-28 13:55:15 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate
version: v4.1.4
dependentsNumber: "13"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.1.4**.
- This action is used across all versions by **13** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection-pr-gate) to find the latest changes.

## Action Summary

Skylos is an open-source static analysis tool designed for Python, TypeScript, and Go, offering capabilities like dead code detection, hardcoded secrets identification, exploitable flow analysis, and AI-generated security regression checks. It automates code quality and security reviews by providing local scans, CI/CD pull request gates with GitHub annotations, and in-editor feedback through a VS Code extension. Skylos helps teams streamline their workflows, enhance code quality, and mitigate security risks, particularly for AI-assisted development and Python-based LLM applications.

## Release notes

### Fixed

- Honor project `.gitignore` during file discovery. Ignored worktrees, custom virtualenvs, and other excluded paths are no longer scanned
- Treat imperative framework entrypoints as live code instead of dead code:
    - Flask `add_url_rule(...)`
    - FastAPI `add_api_route(...)`
    - Starlette `add_route(...)` / `add_websocket_route(...)`
    - Sanic `register_listener(...)` / `register_middleware(...)`
- Treat pytest / Pluggy hook implementations (`@pytest.hookimpl`, `@hookimpl`) as live plugin entrypoints
- Grep cache saves now fail open on non-writable roots instead of aborting analysis
- `skylos --llm` now shows populated `Problem:` descriptions for dead code findings
- Dead code findings in `--llm` output now include rule IDs and severity levels
- Fixed Windows `uvx skylos` crash caused by litellm path length issues

### Changed

- Static `grep_verify` now reuses `.skylos/cache/grep_results.json` across repeated local scans
- Phase 2b LLM audits now focus on high-signal files instead of scanning the full Python set
- Agent scans are faster on changed-file workflows, and fix generation is now opt-in
- `litellm` is now optional for core static analysis installs
- `litellm` is capped at `<1.82.8` due to the known supply chain issue
