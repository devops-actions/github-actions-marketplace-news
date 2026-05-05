---
title: vibe-hardening
date: 2026-05-05 20:53:12 +00:00
tags:
  - vibe-hardening
  - GitHub Actions
draft: false
repo: https://github.com/vibe-hardening/cli
marketplace: https://github.com/marketplace/actions/vibe-hardening
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/vibe-hardening/cli** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibe-hardening) to find the latest changes.

## Action Summary

**Summary:**  
The `vibe-hardening` GitHub Action is a security scanner designed for AI-generated codebases, particularly those built with popular AI coding tools. It automates the detection of vulnerabilities such as hardcoded secrets, injection risks, insecure authentication, and supply chain issues across multiple languages (JavaScript, TypeScript, Python, Go, Rust). By providing rule-based analysis and tailored outputs, it helps developers identify and mitigate security risks efficiently, ensuring safer and more reliable code.

## What's Changed

**`vibe-hardening` 0.4.0** — new `agent scan` subcommand for AI agent skill files.

```bash
npx vibe-hardening agent scan
```

## Why now

Speed is the only moat in indie security tooling. The first OpenClaw / Hermes / Cursor skill compromise that hits HN front page will trigger Google searches for "agent skill scanner" — and the tool that's already shipped, ranked, and starred wins that traffic. Built before the first skill compromise hits the news.

## What it does

Statically scans local AI agent skill files for security issues. Auto-detects 10 platforms by filesystem stat:

| Platform | Path |
|---|---|
| Cursor | `~/.cursor/` |
| Claude Code | `~/.claude/` |
| OpenClaw | `~/.openclaw/` |
| Hermes Agent | `~/.hermes/` |
| Gemini CLI | `~/.gemini/` |
| Goose | `~/.goose/` |
| OpenCode | `~/.opencode/` |
| Codex | `~/.codex/` |
| Trae | `~/.trae/` |
| Factory | `~/.factory/` |

Plus generic `~/.<agent>/skills/` pattern for the long tail.

## 5 rule packs / 65 detection rules

- **A — Hardcoded secrets** in `SKILL.md` / configs / `.env`. Reuses v1's 27 SECRET_RULES verbatim. Hermes specifically stores all secrets in `~/.hermes/.env` (not config.yaml) — that file is now scanned.
- **B — Prompt injection patterns** (11 rules): "ignore previous instructions", role overrides, ChatML control tokens, Llama instruction tags, zero-width hidden characters.
- **C — Dangerous shell commands** (14 rules) in body and `scripts/` files: `rm -rf /`, `curl | sh`, eval/exec on user variables, persistence into `.bashrc` / `authorized_keys`, fork bombs.
- **D — Skill schema / body integrity** (5 active sub-rules): missing required fields, hidden `scripts/` directory, sensitive path + nearby exfil verb, env-dump pattern, folder name typosquatting popular skills.
- **G — MCP server config issues** (6 rules): http:// (non-TLS), localhost residue, secrets in env block, server name typosquatting (Levenshtein ≤ 2), > 20 servers, `npx -y` of unverified packages.

## CLI flags

```bash
vh agent scan                            # all detected platforms
vh agent scan --target cursor            # filter to one platform
vh agent scan --rule b,c                 # only rule packs B + C
vh agent scan --exclude secret           # skip secret rules
vh agent scan --severity high            # CI-friendly threshold
vh agent scan --format json -o r.json    # machine-readable
vh agent scan --no-telemetry             # one-shot opt-out
```

## Telemetry

Sends a separate `event_type: 'agent_scan'` event with an `agents_detected` presence vector across known platforms. Reuses the same opt-in config as v1 (default off, never re-prompts). Zero PII.

## Stats

- **65** new agent-scan rules
- **74** existing code-scan rules
- **406** tests
- 192 KB tarball, 268 files
- MIT, free forever

## Install

```bash
npx vibe-hardening agent scan         # one-shot
npm install -g vibe-hardening         # global
```

Full changelog: [CHANGELOG.md](https://github.com/vibe-hardening/cli/blob/main/CHANGELOG.md).
