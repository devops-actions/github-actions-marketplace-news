---
title: Polygraph MCP gate
date: 2026-07-10 06:24:37 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.33.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.33.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Grading hardening: litmus-v16 (bundle schema 1.9.0).

**Coverage cap with sandbox exercise.** The dynamic probes skip actively calling state-changing (write) tools on the host path so the harness can't move money or mutate real state. Under Docker isolation the target runs with no network in a throwaway sandbox, so those tools are exercised by default and a write-capable server earns A on the same terms as a read-only one. The cap fires only where a call would hit a live backend (host path or a remote https target): one high-risk tool left unexercised caps at B, and an unexercised destructive tool together with an unverified category compounds to C.

**C is now a live grade** (refused by the default agent gate): a powerful server that could be neither sandboxed nor exercised.

**Tool-poisoning scanner** (C-01 probe 1.1): flags agent-directed instructions hidden in a tool's surface (concealment directives, secret-file reads, exfil-to-sink).

**New probe 1.4, indirect / passthrough injection**: feeds harness-controlled injection-laced external content into content-fetching tools and grades the relay. Verbatim relay is disclosed as a conduit (not failed); only server-generated amplification fails C-01.

**Advisory injection judge**: opt-in, non-deterministic LLM judge over the tool surface, surfaced in the run summary only. Never affects the A to F letter, never minted.

**Wider corpora**: more jailbreak framings, malformed shapes, runtime crash signatures, and provider-shaped canaries (AWS/GitHub/JWT).

v16 can move a verdict down, so unlike the v2 to v14 false-positive fixes it is not monotonic. Older attestations stay valid because methodologyVersion is a string the agent gate does not branch on.

Full changes in #109; version bump #113.
