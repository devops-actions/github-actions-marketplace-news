---
title: vorsken Policy Gate
date: 2026-06-07 14:46:04 +00:00
tags:
  - zetide
  - GitHub Actions
draft: false
repo: https://github.com/zetide/vorsken
marketplace: https://github.com/marketplace/actions/vorsken-policy-gate
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zetide/vorsken** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vorsken-policy-gate) to find the latest changes.

## What's Changed

**The policy gate between AI-generated code and your main branch.**

### Added
- `overpermissioned-agent-tool` — flags LangChain file/agent toolkits (e.g. `FileManagementToolkit`) created without a `root_dir` scope, which grants the agent the full filesystem.
- `dangerous-ai-kwargs` — blocks `trust_remote_code=True`, `allow_dangerous_code=True`, and `allow_dangerous_deserialization=True` on any call.
- `code-execution` — blocks `exec()`, `compile()`, `pickle.load()`, and `pickle.loads()`.
- `sql-injection` — flags SQL built from f-strings, concatenation, `str.format()`, or `%` formatting (replaces the mislabeled `api1_bola` rule).

### Changed
- Policy defaults widened to OWASP severities: `block_on = [ERROR, CRITICAL, HIGH]`, `flag_on = [WARNING, MEDIUM]`, case-insensitive — HIGH/CRITICAL findings now BLOCK on their own.
- `subprocess-shell-true` rewritten (`pattern-either`) so it fires on `run` / `Popen` / `call` / `check_call` / `check_output` with `shell=True`.

### ⚠️ Breaking
- Default config file is now **`.vorsken.yml`** (was `.stacksecai.yml`). Rename your existing file or set `CONFIG_PATH`; the old name is no longer read.

[Full changelog](https://github.com/zetide/vorsken/blob/main/CHANGELOG.md)

