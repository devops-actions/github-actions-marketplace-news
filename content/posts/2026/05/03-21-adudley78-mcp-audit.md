---
title: mcp-audit
date: 2026-05-03 21:32:28 +00:00
tags:
  - adudley78
  - GitHub Actions
draft: false
repo: https://github.com/adudley78/mcp-audit
marketplace: https://github.com/marketplace/actions/mcp-audit
version: v0.8.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/adudley78/mcp-audit** to version **v0.8.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-audit) to find the latest changes.

## Action Summary

`mcp-audit` is a privacy-focused security scanner designed to analyze and flag vulnerabilities in MCP (Model Context Protocol) server configurations used by AI coding clients. It automates the detection of issues like tool poisoning, credential exposure, insecure transport, and supply chain risks, while also identifying multi-server attack paths and generating interactive attack graphs. With features such as live server analysis, static code scanning, policy enforcement, and real-time monitoring, it helps developers enhance the security posture of their AI development environments.

## What's Changed

## mcp-audit v0.8.0 — Find, prioritize, gate, and preserve

Four new commands that turn mcp-audit from a scanner into a full MCP security workflow.

---

### `mcp-audit shadow` — find every MCP server you didn't authorize

Sweeps your entire machine across every AI tool (Claude Desktop, Cursor, VS Code, Copilot CLI, and more) and classifies every MCP server as **sanctioned** or **shadow**. By default, everything is shadow until you say otherwise — because the pitch to your security team is "here's every MCP server on every developer's machine, and here's which ones you didn't approve."

For each shadow server, mcp-audit attaches a risk score (LOW → CRITICAL) based on what the server can actually do. A server that can hit a database and make external network calls scores HIGH automatically — that's a known exfiltration pattern.

`--continuous` mode runs as a daemon and emits a structured alert within seconds of a new server appearing. Pipe it into syslog, Splunk, or your SIEM of choice. OWASP MCP09.

```
mcp-audit shadow
mcp-audit shadow --allowlist .mcp-audit-allowlist.yml --continuous
mcp-audit shadow --format json | jq
```

---

### `mcp-audit killchain` — if you can only fix three things, which three?

Takes the attack-path graph from a scan and figures out which single server removal cuts the most paths, then the second most, then the third. You get a ranked action list with real numbers — not estimates. When it models "remove server X," it actually re-runs the attack-path analysis without that server.

Output: a Slack/email-ready Markdown report you can paste into a ticket, plus a governance policy patch (YAML) that formally blocks the offending servers so they fail future scans automatically.

```
mcp-audit killchain
mcp-audit killchain --top 5 --format json
mcp-audit killchain --patch yaml --output-file remediation.yml
```

---

### `mcp-audit diff <base> <head>` — security-aware PR reviews for MCP configs

Normal `git diff` shows you text changes. `mcp-audit diff` shows you *what those changes mean* — "this PR added a server with hardcoded AWS credentials" or "this new tool can make external network calls." It understands MCP semantics well enough to ignore cosmetic changes (tool order, whitespace) and surface only the ones that matter.

The GitHub Actions integration posts a formatted comment directly on the PR. Reviewers see the security impact without knowing anything about MCP internals.

```
mcp-audit diff main feature-branch
mcp-audit diff scan-before.json scan-after.json --format pr-comment
```

Reference workflow: `examples/github-actions/diff-mode.yml`

---

### `mcp-audit snapshot` — forensic record of your MCP configuration

Takes a signed, time-stamped photograph of every MCP server on the machine and saves it as a CycloneDX 1.5 AI/ML-BOM — an industry-standard format that security tools and compliance systems already understand.

**`--rehydrate`** reconstructs the attack-path graph from an old snapshot, so you can answer "was this dangerous server already installed before the incident?" without needing a time machine.

**`--stream`** emits one JSON object per finding (NDJSON) — pipe directly into Splunk HEC, Microsoft Sentinel, or any SIEM. Copy-paste recipes in `docs/integrations/splunk.md` and `docs/integrations/sentinel.md`.

```
mcp-audit snapshot --output snapshot.json
mcp-audit snapshot --sign --output snapshot.json
mcp-audit snapshot --rehydrate old-snapshot.json
mcp-audit snapshot --stream | curl -H "Authorization: Splunk $TOKEN" ...
```

---

### Also in this release

- 1,764 tests passing
- `ruff check` clean
- `docs/shadow-mcp.md`, `docs/killchain.md`, `docs/diff.md`, `docs/snapshot.md` — full command references
- SIEM integration recipes: `docs/integrations/splunk.md`, `docs/integrations/sentinel.md`
- `action.yml` extended with `mode: diff` for PR comment workflows

---

**Full changelog:** [CHANGELOG.md](https://github.com/adudley78/mcp-audit/blob/main/CHANGELOG.md)
