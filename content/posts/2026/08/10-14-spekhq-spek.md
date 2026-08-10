---
title: spek - OpenSpec Static Site
date: 2026-08-10 14:20:32 +00:00
tags:
  - spekhq
  - GitHub Actions
draft: false
repo: https://github.com/spekhq/spek
marketplace: https://github.com/marketplace/actions/spek-openspec-static-site
version: v1.12.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  spek is a lightweight tool that provides a read-only, local interface to browse OpenSpec content. It offers features such as a dashboard, spec and change browsers, schema browser, worktree aggregation, timeline, BDD syntax highlighting, task progress tracking, and full-text search. The tool is designed to be accessible in any browser without server deployment or authentication.
---


Version updated for **https://github.com/spekhq/spek** to version **v1.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spek-openspec-static-site) to find the latest changes.

## Action Summary

spek is a lightweight tool that provides a read-only, local interface to browse OpenSpec content. It offers features such as a dashboard, spec and change browsers, schema browser, worktree aggregation, timeline, BDD syntax highlighting, task progress tracking, and full-text search. The tool is designed to be accessible in any browser without server deployment or authentication.

## What's Changed

**Highlight: spek now shows the workflow itself, not just its output.** A schema decides what a change *is* in OpenSpec — which artifacts exist, what order they come in, what each is supposed to contain, and when the change is ready to implement. spek has always rendered the products of that process and never the process. Until now the schema appeared only as a small badge on a change that differed from the repo default: a name with nothing behind it.

- **New Schemas page** listing every workflow schema available to the selected repo, with its description, its source (shipped with the `openspec` package, or project-local under `openspec/schemas/`), and how many artifacts it defines. The schema named by `openspec/config.yaml` is marked as the repo default, and each schema shows how many active changes declare it, with a link through to them. Thanks to [@nthansen](https://github.com/nthansen) (Norman Hansen)
- **A schema detail view that reads as a workflow** — its artifacts in authoritative order as a diagram, each showing the file it generates, what it requires before it can be written, and its full instruction text. The `apply` step is drawn as the flow's terminal step, because "when is this change ready to implement" is part of what a reader is trying to understand
- **When the OpenSpec CLI cannot answer, the page says so.** If the CLI is missing, exits non-zero, times out, or emits something unparsable, the list comes back empty *with the reason stated*, rather than as an unexplained empty page. It does not substitute a reading of its own: which schemas exist, and which shadows which across the three directories OpenSpec searches, is a question only OpenSpec can answer
- **Schema reads stay off the scan hot path** — they happen only when schema information is asked for, and are cached per repo. Change lists, the overview and worktree aggregation are unaffected
- **Spec content is now ranked by structure rather than by inherited type size.** In a change's Specs tab the spec's own name was smaller than the `ADDED Requirements` label inside it — and, being an `h3` sibling of the content's `h2`s, it was *terminated* by the first one rather than containing them, leaving the requirements below attributed to no spec at all. The topic name is now the dominant heading of its section with a rule beneath it, the operation label is demoted, and an open section is inset with a hairline rule marking where it ends. Reported from the IntelliJ tool window (issue #42)
- **Every delta operation is marked, not an arbitrary two.** `REMOVED` and `RENAMED` had no styling of their own, so in prose they read as ordinary words. `REMOVED` deliberately does not take red: red already means "normative" (`MUST` / `SHALL`) in this renderer, and one colour carrying two meanings weakens both
- *Internal:* `@spekjs/core` 1.8.0 exposes the schema enumeration and reading API, and gains `yaml` as a runtime dependency

