---
title: trigger-tree docs discoverability gate
date: 2026-07-29 23:13:18 +00:00
tags:
  - Hedde
  - GitHub Actions
draft: false
repo: https://github.com/Hedde/trigger_tree
marketplace: https://github.com/marketplace/actions/trigger-tree-docs-discoverability-gate
version: v1.28.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action, trigger-tree, automates the discovery of CI gate issues and monitors instruction adherence in projects. It checks repository structure to ensure proper CI wiring without telemetry, provides SARIF and GitLab Code Quality exports, and measures whether CLAUDE.md directives are followed by observable behavior. The action also includes a CI gate that fails a PR with exact file and fix when instructions change agent actions, and a documentation-health grade based on heat maps that provide longer-term evidence of instruction adherence.
---


Version updated for **https://github.com/Hedde/trigger_tree** to version **v1.28.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trigger-tree-docs-discoverability-gate) to find the latest changes.

## Action Summary

This GitHub Action, trigger-tree, automates the discovery of CI gate issues and monitors instruction adherence in projects. It checks repository structure to ensure proper CI wiring without telemetry, provides SARIF and GitLab Code Quality exports, and measures whether CLAUDE.md directives are followed by observable behavior. The action also includes a CI gate that fails a PR with exact file and fix when instructions change agent actions, and a documentation-health grade based on heat maps that provide longer-term evidence of instruction adherence.

## What's Changed

- Treats the install location as authoritative when identifying the client. A
  Codex marketplace install resolves its manifest's `./skills/` to the
  repository's Claude skill, because the portal validator requires that path,
  and that skill asserts `--client claude`. A Codex session was therefore
  reported as Claude. Where the files live is observable, so it now outranks the
  flag in `tt-open.sh`, `tt-stats.py`, and `tt-watch.py`. Recorded telemetry was
  never affected: the `client` field comes from the hook manifests, not this
  flag.
- Explains that a runtime which blocks the first watcher launch is usually
  asking for approval rather than failing permanently, so the retry that
  succeeds no longer reads as a broken command.
- Documents Codex invocation as `@trigger-tree <command>`, alongside the
  plain-language form; both reach the same workflows.

---

**Install (Claude Code)**

```
/plugin marketplace add Hedde/trigger_tree
/plugin install trigger-tree@trigger-tree
```

**Install (Codex, pinned to this release)**

```
codex plugin marketplace add Hedde/trigger_tree --ref v1.28.2
codex plugin add trigger-tree@trigger-tree
```

[Website](https://hedde.github.io/trigger_tree/) · [Documentation](https://github.com/Hedde/trigger_tree/tree/main/docs) · [Changelog](https://github.com/Hedde/trigger_tree/blob/main/CHANGELOG.md) · [Privacy](https://github.com/Hedde/trigger_tree/blob/main/PRIVACY.md)

