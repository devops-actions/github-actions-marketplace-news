---
title: Bernstein — Multi-Agent Orchestration
date: 2026-05-20 15:08:49 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.5.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.5.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic Python-based scheduler designed for orchestrating multiple CLI coding agents to work collaboratively toward a shared goal using parallel Git worktrees. It provides robust compliance features such as HMAC-signed audit trails, agent authentication with bearer tokens, and artifact lineage tracking, making it ideal for regulated environments. The action automates multi-agent task execution while ensuring traceability, security, and accountability.

## What's Changed

## A note on the voice

v2.4.0 was about observability surfaces, running the four backends through one umbrella so a code-scanning regression or a coverage drop surfaces in the same table as a GlitchTip spike. v2.5.0 is the next question over: now that the orchestrator can see itself, can the hosts an operator already runs see it too. And can it stop quietly phoning home to my private infrastructure when it does.

## Interop, finally

The piece that kept blocking me on multi-host runs was the lack of a real handshake. Claude Desktop is one process, Claude Code is another, both can spawn agents, neither knew what the other had already decided. I shipped A2A capability cards (#1698): one process mints a signed manifest of what it can do, the other consumes it, verifies the signature against a trusted-issuer set, and refuses to delegate when the advertised policies do not meet the operator's required policies. The lineage chain rides through the same envelope so the audit trail does not break at the organisation boundary.

The MCP client got the matching upgrade (#1692). Upstream servers will return malformed responses, hang mid-stream, demand re-auth, lie about their capability manifest. The client now treats every upstream as untrusted: capability-card validation before a tool call, retry-with-continuation on dropped streams, in-flight cancellation that preserves partial output, per-server cost metering, schema-violation containment that marks a misbehaving server degraded for the rest of the task. None of this is exotic; it is the brittle-real-world posture that the larger MCP ecosystem will end up needing.

The MCP server side got prompt-catalogue plus OAuth-2 PKCE discovery metadata (#1696, #1709), so auto-discovering hosts that expect a real RFC 8414 / RFC 9728 surface stop skipping us.

## bernstein desktop-register

`bernstein desktop-register --host <name>` (#1697, then #1708 added five more hosts) writes the host-specific config entry for Claude Desktop, Claude Code, Cursor, Continue, Cline, Zed, and Aider. One command. The orchestrator is a guest in the host's settings file; we ship the plugin, the host renders it. `bernstein doctor --substrate` reports which hosts have us registered, which do not, and which have a stale registration.

The honest disclaimer: if a host changes its plugin spec, the per-host adapter breaks. Each adapter is small enough that a host-spec change is a one-day fix, not a re-architecture.

## I removed my private infrastructure from the shipped package

This one was a real silent bug, not a feature. The shipped wheel had `errors.bernstein.run` baked in as the GlitchTip DSN default, and `telemetry.bernstein.run` baked in as the telemetry endpoint default. Both backends soft-fail when their env vars are unset, so the package never actually reached out without consent. But the hostnames were sitting there as defaults, which is the kind of thing that turns into a real leak the day someone wires a config they did not read.

#1694 strips those defaults. `tests/unit/observability/test_no_hardcoded_infra.py` asserts zero operator-private host, IP, or DSN matches in `src/` and will fail the build if a future change reintroduces one. Telemetry side-channel is now portable across hosts behind one Sentry-compatible `BERNSTEIN_TELEMETRY_DSN` (#1691) so each operator runs against their own backend, not mine.

## Deterministic replay

Three small things compounded. Session ids are bound deterministically (#1684) so a replayed run reproduces its own event stream without colliding with a sibling. The supervisor enforces a bounded respawn budget and parks an agent when the budget is exhausted (#1683), instead of looping respawns indefinitely. On-disk state has a versioned migrations module (#1689) so an older `.sdd/` upgrades predictably. Plus the cosmetic-but-real win: runs surface a memorable deterministic name (#1682) in user-facing output, so the operator can refer to "the brisk-sparrow run" instead of memorising a UUID.

## The API stops returning 500 on a fuzzer-found bug

The `TaskCreate.scope` and `complexity` fields were typed as plain `str` with only a length cap. An empty or out-of-range value passed pydantic and then raised `ValueError` deep in the task store when the enum was constructed, surfacing as an unhandled 500 on `POST /tasks` and `POST /tasks/batch`. Schemathesis kept flagging it intermittently and everyone kept rerunning it as a flake. It was not a flake. #1700 validates at the request boundary and returns 422.

## What I am not claiming

The two new transports are functional but not load-tested at adversarial scale; the OAuth-2 PKCE discovery surface ships metadata, full token issuance and OIDC federation are deferred to a follow-up. The substrate adapters cover seven hosts; Codex and Gemini CLI are stubbed by design until their respective plugin specs stabilise. The A2A integration honours the protocol as specified at the time of pickup and will need maintenance as the spec evolves.

## Try it

```bash
pipx install --upgrade bernstein
bernstein interop a2a card --output card.json
bernstein desktop-register --host cursor
```

Full per-PR notes in `docs/release-notes/v2.5.0.md`. Source: https://github.com/sipyourdrink-ltd/bernstein (Apache-2.0). 22 commits since v2.4.0.

