---
title: Droid LLM Hunter
date: 2026-06-02 23:42:39 +00:00
tags:
  - roomkangali
  - GitHub Actions
draft: false
repo: https://github.com/roomkangali/droid-llm-hunter
marketplace: https://github.com/marketplace/actions/droid-llm-hunter
version: 1.1.8
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/roomkangali/droid-llm-hunter** to version **1.1.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droid-llm-hunter) to find the latest changes.

## What's Changed

# Droid LLM Hunter — Update v1.1.8

> **BUGFIX UPDATE:** *"CLI Stability, JSON Parser Fix & Documentation Restructure"*

---

## 🐛 Bug Fixes

### [1] `dlh.py` — `create_profile()` destroys `settings.yaml` 🔴 `CRITICAL`

| | |
|---|---|
| **Problem** | `os.rename()` permanently deleted `settings.yaml` after profile creation, causing the tool to crash on the next run. |
| **Fix** | Safe backup-restore flow: Backup → Run wizard → Copy to profile → Restore original. |

---

### [2] `dlh.py` — `config model` silently fails for `anthropic` / `openrouter` 🟠 `HIGH`

| | |
|---|---|
| **Problem** | Only 4 providers handled (`ollama`, `gemini`, `groq`, `openai`). Calling `config model` with `anthropic` or `openrouter` did nothing — no error, no save. |
| **Fix** | Replaced `if/elif` chain with `provider_model_key` dict. All 6 providers now supported with a clear error message for unknown providers. |

---

### [3] `dlh.py` — `config wizard` missing `anthropic` / `openrouter` support 🟠 `HIGH`

| | |
|---|---|
| **Problem** | Wizard printed *"Invalid provider selected."* for `anthropic` and `openrouter`. |
| **Fix** | Added branches for both providers with default model prompts. Also fixed a deep merge bug — wizard now only updates the `llm` key, preserving `analysis`, `rules`, and other config sections. |

---

### [4] `dlh.py` — `list-rules` linter error from `hidden=True` 🟡 `MEDIUM`

| | |
|---|---|
| **Problem** | `@app.command("list-rules", hidden=True)` caused a VS Code linter error. `hidden=` is not a valid parameter in most Typer versions. |
| **Fix** | Removed `hidden=True`. Command is now visible in `--help` output. |

---

### [5] `dlh.py` — `scan` command returns exit code `0` on failure 🟡 `MEDIUM`

| | |
|---|---|
| **Problem** | On scan error, process exited with code `0`. CI/CD pipelines could not detect scan failures. |
| **Fix** | Added `raise typer.Exit(code=1)` after the error log. |

---

### [6] `core/engine.py` — JSON parse fails on nested LLM responses 🔴 `CRITICAL`

| | |
|---|---|
| **Problem** | Regex `\{.*?\}` (non-greedy) stopped at the **first `}` found**. Nested JSON from `gemini-2.5-flash` was truncated and discarded silently (`is_vulnerable: false`). |
| **Fix** | Changed capture group to `[\s\S]*?` — captures all content between markdown fences. `_extract_json_str()` (brace-counting) handles the actual JSON boundary correctly. |

---

## 📄 Documentation Restructure

`README.md` was too long (619 lines) and hard to navigate on GitHub. Restructured into focused files with backlinks.

| File | Description |
|------|-------------|
| `README.md` | Main entry point — reduced from **619 → 196 lines** |
| `FEATURES.md` | Full feature list with descriptions |
| `SCAN-WORKFLOW.md` | 5-phase pipeline diagram and step-by-step explanation |
| `RULES.md` | All 24 vulnerability rules with MASVS mapping and CLI usage |
| `CONFIGURATION.md` | Filter mode and decompiler mode guide with pros/cons table |
| `INSTALLATION.md` | Standard install + Docker setup guide |
| `USAGE.md` | Command examples, flags table, and full command reference |
| `CICD.md` | GitHub Actions / GitLab CI integration guide |
| `FAQ.md` | 6 common questions with detailed answers |
| `ROADMAP-V2.md` | v2.0 Dynamic Analysis planning (Frida, ADB, Taint Engine) — translated to English |

---

## ✅ Summary

- `settings.yaml` is never destroyed during profile creation
- All 6 LLM providers work correctly in `config model` and `config wizard`
- JSON nested responses from `gemini-2.5-flash` are now parsed correctly — no more silent missed findings
- Scan failures now return exit code `1` (CI/CD compatible)
- README split into **10 focused `.md` files** for easier reading and maintenance

---

*Droid LLM Hunter v1.1.8 — Stable CLI, Accurate Parser & Documentation Restructure. 🛡️🔍✅*

