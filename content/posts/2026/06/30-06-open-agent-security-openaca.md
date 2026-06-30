---
title: OpenACA Scan
date: 2026-06-30 06:43:36 +00:00
tags:
  - open-agent-security
  - GitHub Actions
draft: false
repo: https://github.com/open-agent-security/openaca
marketplace: https://github.com/marketplace/actions/openaca-scan
version: v0.3.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/open-agent-security/openaca** to version **v0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openaca-scan) to find the latest changes.

## What's Changed

# 0.3.0 — MCP launch dependency resolution + local Agent BOM diff

This release teaches the composition graph to follow an MCP server into the
package it launches, so an MCP server's bundled supply chain is no longer
dropped — and adds a local Agent BOM diff for comparing two snapshots. It also
corrects the Agent BOM schema version, which had drifted behind the format.

## Highlights

- **MCP-server launches resolve to their dependency manifests (ADR-0039).**
  `mcp_server` is no longer a leaf. When an MCP server is declared through a
  package runner — `npx` / `uvx` / `bunx <pkg>` — whose package name matches a
  local manifest, OpenACA resolves it to that dependency directory and attaches
  its dependencies as agent dependencies in the composition graph, re-parenting
  them under the MCP node. This closes the false negative where the supply chain
  of an MCP-launched package went unseen. Resolution is **name-match only**:
  remote, external, local-path (`node ./x.js`, `python -m`), and env-wrapped or
  exotic launches attach nothing — on-disk package-manager cache resolution is
  deferred to a Phase 2 ADR. Includes `bun x` / `bunx` launcher coverage, shlex
  tokenization of launch strings, and `.claude/settings*.json` MCP paths
  anchored at the project root.

- **Local Agent BOM diff (`openaca bom diff`).** A new command compares two
  Agent BOM snapshots and reports what changed, with scope, match coordinate,
  source provenance, transport, URL / install source / git ref, artifact
  coordinates, and git commit SHA all included in the comparable payload.

- **Agent BOM schema version corrected to `0.2`.** (see Compatibility) The
  graph-encoded BOM format shipped in 0.2.0 but was still labeled
  `openaca:schema_version: 0.1`. This release labels the graph-era format `0.2`
  so downstream consumers can tell it apart. ADR-0039 adds MCP→dependency edges
  *within* that format; it is not itself a format change.

- **Bug fixes.** Launch parsing stops scanning argv after eval flags and no
  longer treats `python -m` config args as entry points; external-`npx`
  fall-through is gated to a runner allowlist; PyPI extras are stripped before
  name matching; the root package cache is excluded from the manifest name
  index; and the endpoint name index now respects the project root's
  `.gitignore`. Plus assorted Codex-review fixes across `mcp_json`,
  `graph_build`, and `mcp_launch_resolve`.

## Install

`uv tool install openaca==0.3.0` or `pip install openaca==0.3.0`. Or:
`curl -fsSL https://openaca.dev/install.sh | sh`.

## Compatibility

- **`openaca:schema_version` bumps `0.1` → `0.2`.** The graph-encoded Agent BOM
  format actually arrived in **0.2.0**, but that release shipped it mislabeled
  as `0.1`, and published 0.2.0 BOMs cannot be relabeled. From 0.3.0, graph-era
  BOMs carry `0.2`. Consumers keying on this field should treat `0.1` as
  ambiguous (pre-0.2.0 *or* 0.2.0) and `0.2` as the graph-era format (0.3.0+).
- **`mcp_server` nodes now carry dependency children** when their launch package
  name-matches a local manifest. Scans will surface more components — and their
  advisories — under MCP servers than before. This is additive within the
  existing format (CycloneDX `dependencies[]` edges); no fields or component
  types changed.

The Agent BOM format and component identities remain pre-1.0 and may still
evolve.

