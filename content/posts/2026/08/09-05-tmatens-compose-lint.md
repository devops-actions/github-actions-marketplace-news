---
title: compose-lint
date: 2026-08-09 05:42:47 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.15.2
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The `compose-lint` GitHub Action is a security-focused linter for Docker Compose files. It checks for dangerous misconfigurations such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, and hard-coded credentials before they reach production. The action auto-fixes the unambiguous issues and provides a dry-run option to identify potential vulnerabilities in your Docker Compose configurations.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.15.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The `compose-lint` GitHub Action is a security-focused linter for Docker Compose files. It checks for dangerous misconfigurations such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, and hard-coded credentials before they reach production. The action auto-fixes the unambiguous issues and provides a dry-run option to identify potential vulnerabilities in your Docker Compose configurations.

## What's Changed


### Changed

- Rule-doc headings are now phrased for the queries users actually search
  (issue #471): every `docs/rules/` H1 leads with the rule id then names the
  directive and the symptom it produces (e.g. "CL-0007: read_only — fixing
  'Read-only file system' errors"), and the docs-site nav labels — which set
  each page's `<title>` — are synced to match. Affects the site, the GitHub
  view, and `--explain` output; rule ids and content are unchanged.

### Fixed

- CL-0003's compatibility guidance claimed root-dropping entrypoints
  (`gosu`/`su-exec`: postgres, redis, mysql, …) crash-loop under
  `no-new-privileges` — **live-verified false**: nnp blocks privilege *gain*
  at `execve` (sudo, setuid bits, file capabilities), not a root process's
  downward `setuid()`, and a su-exec image (valkey) runs healthy under the
  flag. The doc and fix text are rewritten around the verified semantics,
  and a CI premise check now pins the drop-unaffected fact so the wrong
  claim cannot silently return.
- Fixed file matching in `.pre-commit-hooks.yaml` that was incorrectly including
  `.compose-lint.yml` if present in the commits. This generated errors
  meaning pre-commit will always fail (issue #465). The hook now matches only
  names beginning `compose` or `docker-compose`, and an `exclude` pattern skips
  compose-lint's own config in either spelling — `.compose-lint.yml` and the
  dotless `compose-lint.yml` that `init -o` can write — with either extension.
  **Note** environment specific files, e.g. `compose-dev.yml`, still match, but
  files with prefixes, e.g. `dev-compose.yml`, no longer do.

### Changed

- CL-0003 gains the "Reading the failure" treatment (the last rule from the
  symptom-table survey): sudo's explicit nnp message (captured live), the
  silent case — a setuid `execve` under nnp *succeeds* with privileges
  unchanged (CI-proven: exit 0, euid intact), so failures surface later as
  ordinary permission errors — the `NoNewPrivs` `/proc` confirmation step,
  and an explicit warning not to confuse the crash-looping `cap_drop`
  symptom (CL-0006's `SETUID` row) with this setting.

### Changed

- CL-0012, CL-0018, and CL-0022 get the symptom → remedy treatment
  (issue #479, same pattern as CL-0006/CL-0007): each rule doc gains a
  "Reading the failure" table quoting verbatim, live-captured error messages.
  CL-0012 maps the fork-failure wordings (chronically misattributed to
  `ulimit -u`) to the pids cgroup with a `pids.max`/`pids.current`
  confirmation step; CL-0018 maps non-root `Permission denied` writes by
  mount type, backed by two CI-proven facts — a tmpfs over an existing image
  directory inherits its root ownership (use `uid=`/`gid=`), and named-volume
  initial ownership follows Docker's copy-up rules; CL-0022 frames the
  `noexec` exec failure as relocate-first, `:exec`-with-documented-reason
  last, since the naive fix is the finding. Six new CI premise checks prove
  the busybox rows live. CL-0002's fix text now points at CL-0006's
  capability-determination guide instead of stopping at `<SPECIFIC_CAP>`.


