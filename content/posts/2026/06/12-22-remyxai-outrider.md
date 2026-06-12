---
title: Remyx Outrider
date: 2026-06-12 22:55:27 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.4
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.4**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## Repo orientation pass + clean PR-title/branch defaults

Adds a **repo orientation pass** to the agent's bundle so the implementation agent sees the target repo's contributor guide, PR template, recent merged PRs, lint/type config, and a sample of nearby files and tests before generating code. Drops the `[Remyx Recommendation]` PR-title prefix, the `remyx-recommendation/<arxiv-id>` branch prefix, and the "Contributed via..." marketing-link requirement from generated README additions — artifacts now go out as upstream-quality from the start.

Captures **Phase 1 + Phase 1c of REMYX-116**. Phases 2 (orchestrator workflow fixes) and 3 (verification execution loop) are deferred to follow-up releases.

PR: #35

### Phase 1 — orientation pass

The agent's bundle gains a new file `.remyx-recommendation/ORIENTATION.md` containing:

- **Contributor guides** — `CLAUDE.md` / `AGENTS.md` / `CONTRIBUTING.md` (truncated to 3K chars each)
- **PR template** — `.github/PULL_REQUEST_TEMPLATE/*.md` or root `pull_request_template.md`
- **Recent merged PRs** — last 10 via `gh_api`, titles + labels + 3 sample bodies
- **Tooling config** — `pyproject.toml` `[tool.X]` sections, `.ruff.toml`, `mypy.ini`, `pyrightconfig.json`, `tox.ini`, Makefile verification targets
- **Detected verification stack** — package manager (uv/poetry/pip) + ordered command list (detection only; execution deferred to Phase 3)
- **Nearby files** — up to 5 `.py` modules in the package root with first-line docstrings
- **Nearby tests** — up to 5 test files + a 30-line pattern sample

Each section is independently skip-able; if every section is empty, `ORIENTATION.md` is not written and bundle behavior is unchanged from v1.5.3.

`INVOCATION.md` is updated to read `ORIENTATION.md` before generating, with explicit guidance on using the patterns rather than re-exploring the repo.

### Phase 1c — drop Outrider scaffolding from PR title / branch / README

- **`format_pr_title(rec)`** — new helper returning `rec.paper_title` (no `[Remyx Recommendation]` prefix). Both PR-title construction sites use the helper.
- **`format_branch_name(rec)`** — new helper returning slugified paper title (arxiv-id fallback), no `remyx-recommendation/` prefix. Both branch-construction sites use the helper.
- **`_INVOCATION_MD_TEMPLATE`** README append guidance is now conditional on the repo's convention (visible via `ORIENTATION.md`). The "Contributed via [Remyx Recommendation]" attribution requirement is removed; attribution lives in the PR body footer.

**Dedup compatibility preserved:** `PR_TITLE_PREFIX` and `BRANCH_PREFIX` constants remain for backward-compat dedup of historical-format PRs/branches. New-format PRs are caught by the existing body-marker check.

### Empirical validation

**Phase 1 A/B test** (smellslikeml/openai-agents-python-outrider-demo#3): agent-generated code showed clear orientation-pass effects:

- ✅ Absolute imports matching the repo's pattern (vs. the prior run's broken relative imports)
- ✅ Test design through public interface (vs. the prior run's direct internal-attribute poking)
- ✅ No bare `except:` (which would have failed ruff lint)
- ✅ Modern Python style (`from __future__ import annotations`, dataclass, type-hinted signatures)

**Phase 1c** orchestrator changes are deterministic string transformations validated by unit tests; effects materialize on the next PR-producing run automatically.

### Tests

354 passed (29 new orientation tests + 325 pre-existing). Run with:

```bash
pytest tests/ -q
```

### Deferred to follow-up releases

- **Phase 2** (orchestrator workflow fixes): real `gh repo fork` for cross-repo PR enablement + git committer email format for GitHub-Apps badge attribution.
- **Phase 3** (verification execution loop): run the detected verification commands with iteration on failures + graceful degradation.

---

**Full change list:** [v1.5.3...v1.5.4](https://github.com/remyxai/outrider/compare/v1.5.3...v1.5.4)

