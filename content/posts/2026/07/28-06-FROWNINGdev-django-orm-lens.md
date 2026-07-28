---
title: django-orm-lens
date: 2026-07-28 06:53:38 +00:00
tags:
  - FROWNINGdev
  - GitHub Actions
draft: false
repo: https://github.com/FROWNINGdev/django-orm-lens
marketplace: https://github.com/marketplace/actions/django-orm-lens
version: py-v1.5.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Django ORM Lens is a live sidebar and ER diagram extension for Django models that uses static parsing to provide schema insights without requiring a database, virtual environment, or running `runserver`. It supports VS Code, terminal users, AI agents, and integrates with GitHub Actions for continuous integration. Key capabilities include:
  
  - Live ER diagrams directly in the editor
  - Sidebar tree view of all apps, models, fields, and relations
  - 16 QuickFix rules
  - SARIF annotations and PR annotations in CI
  - Pre-commit hooks
  - MCP tools for AI agents
  - Intuitive setup through environment variables
---


Version updated for **https://github.com/FROWNINGdev/django-orm-lens** to version **py-v1.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/django-orm-lens) to find the latest changes.

## Action Summary

Django ORM Lens is a live sidebar and ER diagram extension for Django models that uses static parsing to provide schema insights without requiring a database, virtual environment, or running `runserver`. It supports VS Code, terminal users, AI agents, and integrates with GitHub Actions for continuous integration. Key capabilities include:

- Live ER diagrams directly in the editor
- Sidebar tree view of all apps, models, fields, and relations
- 16 QuickFix rules
- SARIF annotations and PR annotations in CI
- Pre-commit hooks
- MCP tools for AI agents
- Intuitive setup through environment variables

## What's Changed

The "one core, three surfaces" wave: the CLI gains CI-native output formats,
four analyzers that were previously MCP-only, community-standard diagram
exports, and a documentation page for every rule.

### Added

- **CI output formats** — `nplusone` and `migration-risk` accept
  `--format sarif` (SARIF 2.1.0 for GitHub Code Scanning via
  `upload-sarif`) and `--format github` (workflow-command PR annotations,
  zero extra permissions). New module `ci_formats.py`; 20 tests.
- **Four new CLI subcommands** exposing analyzers that existed only behind
  MCP: `suggest-indexes <model>` (Meta.indexes proposals from observed
  QuerySet usage), `signals` (sender→signal→handler graph),
  `migration-deps <app>` (per-app migration DAG — text/json/mermaid),
  `cascade <model>` (delete blast-radius grouped by on_delete). Cascade
  logic moved into shared `models.cascade_preview` so the CLI and the MCP
  server can never drift.
- **ER diagram export formats** — `er --format dbml | d2 | plantuml`
  alongside the Mermaid default; the MCP `er_diagram` tool takes the same
  choice via a new optional `diagram_format` argument. DBML maps
  `on_delete` onto ref settings and apps onto schemas; D2 uses `sql_table`
  shapes with apps as containers; PlantUML uses crow's-foot entities.
  Explicit `primary_key=True` is respected; Django's implicit `id` is
  synthesized otherwise. 11 tests.
- **Three new migration-risk rules** (15 total): `runpython_no_reverse`
  (data migration without reverse_code), `alter_unique_together_lock`
  (unique index build/validation on a populated table — recognises all
  four clearing forms including Django's serialized `set()`), and
  `alter_index_together_deprecated` (operation removed in Django 5.1).
- **pre-commit hooks** — `.pre-commit-hooks.yaml` with
  `django-orm-lens-nplusone` and `django-orm-lens-migration-risk`, plus a
  root pyproject shim so pre-commit can install the repo directly.
- **GitHub Action** — composite `action.yml`
  (`uses: FROWNINGdev/django-orm-lens@<ref>`) wrapping the CLI with
  annotation/SARIF-friendly defaults.
- **docs/rules/** — 19 documentation pages: one per DOL rule (16), the
  migration-risk catalogue, the N+1 analyzer, and an index. Fixes the 16
  dead `docsUrl` links the Problems panel has been shipping.
- **Golden snapshot suite** — full parser-output snapshots for the five
  vendored real-world projects (59 models, 13,478 LOC); parser regressions
  now fail with a diff instead of passing silently.
  `UPDATE_GOLDEN_SNAPSHOTS=1` regenerates.
- **Manifest-sync test** — pyproject / server.json / smithery.yaml versions
  and the MCP tool count vs docstring can no longer drift.
- **CI lint job** — ruff + mypy on every push/PR, both starting green
  (433 ruff findings fixed, 9 mypy errors fixed across 5 files).

### Fixed

- `AlterUniqueTogether` clearing form `unique_together=set()` — the form
  `makemigrations` actually writes — no longer raises a false
  `alter_unique_together_lock`.
- MCP tool-count drift: 9 → **10 tools** everywhere (module docstring,
  section comment, `smithery.yaml` 1.2.7 → 1.4.0 with "10 read-only
  tools", `cli/README.md`).
- README accuracy: MCP table lists all 10 tools (was 5), migration-risk
  rule count corrected ("7 classes" → 15 rules), stale v0.8 labels
  removed.
- DBML export notes are workspace-relative — no absolute machine paths in
  shareable diagrams.

### Changed

- README repositioned as "The schema intelligence layer for Django":
  10-second `uvx` quickstart, a Gate-your-CI section, a measured
  performance section (59 real-world models / 13,478 LOC parsed in ~21 ms
  best-of-3 locally), honest "when you want something else" boundaries,
  and the rule catalogue moved to `docs/rules/`.
- `migration-risk` severity filtering computes its threshold only for
  explicit severities instead of relying on a `.get(..., 99)` fallback
  for `--severity all`.

### Removed

- `media/vendor/mermaid.min.js` (3.34 MB) — dead weight since the webview
  moved to React Flow; the VSIX shrinks accordingly.


---

**Install**

```bash
pip install django-orm-lens==1.5.0        # CLI
pip install "django-orm-lens[mcp]"==1.5.0 # + MCP server
```

Also on [GHCR](https://github.com/FROWNINGdev/django-orm-lens/pkgs/container/django-orm-lens) and the [MCP Registry](https://registry.modelcontextprotocol.io). The VS Code extension is versioned separately and is unchanged in this release.

Full changelog: https://github.com/FROWNINGdev/django-orm-lens/blob/main/CHANGELOG.md

