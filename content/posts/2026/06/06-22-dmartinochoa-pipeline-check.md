---
title: pipeline-check
date: 2026-06-06 22:49:07 +00:00
tags:
  - dmartinochoa
  - GitHub Actions
draft: false
repo: https://github.com/dmartinochoa/pipeline-check
marketplace: https://github.com/marketplace/actions/pipeline-check
version: v1.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/dmartinochoa/pipeline-check** to version **v1.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-check) to find the latest changes.

## What's Changed


### Added

- **HTML report: step-level pipeline graph for GitLab, CircleCI, Cloud
  Build, and Drone (DAG v2).** The HTML report now renders these as
  layered job graphs, each node colored by the worst finding that lands
  on it, extending the step-level DAG that previously covered only GitHub
  Actions. GitLab (`.gitlab-ci.yml`): jobs as nodes, `needs:` as edges,
  and stage ordering as edges for jobs without explicit `needs`. CircleCI
  (`.circleci/config.yml`): jobs and their steps as nodes, with the
  `workflows.<name>.jobs[].requires` references (unioned across every
  workflow) as edges. Cloud Build (`cloudbuild.yaml`): each build step as
  a node, with `waitFor` as the DAG and a sequential chain for steps that
  omit it. Drone (`.drone.yml`): each step as a node, with `depends_on`
  as the DAG (or a sequential chain when none is declared), and one graph
  per `kind: pipeline` document in the multi-document file. Each is a new
  `checks/<provider>/_graph.py` builder with no contract change, so every
  other reporter and provider is unchanged. Pure inline SVG, no JS / CDN
  / network.
- **`scan_status` in the JSON and SARIF outputs.** The terminal report
  already flags an incomplete scan (a file that failed to parse, a
  credential-less cloud probe) instead of presenting a confident grade,
  but the machine-readable outputs did not, so a CI consumer could not
  tell a fully-completed scan from a partial one. JSON gains a top-level
  `scan_status` object and SARIF a run-level `properties.scan_status`,
  both carrying `complete`, `files_scanned`, `files_unparsed`,
  `degraded_modules`, and a `reason` when incomplete.
- **`--fail-on-parse-error` gate.** Opt-in CI gate that fails the run when
  any file could not be parsed (malformed YAML / JSON, read error), so a
  scan that silently skipped part of its input is treated as a failure
  rather than a clean pass. Layers on top of the existing gate conditions
  (it does not disable the default `--fail-on CRITICAL` floor); the count
  it acts on is the same one surfaced in `scan_status.files_unparsed`.

### Changed

- **Faster startup: heavy imports are deferred.** The single-format
  reporters (JUnit, SARIF, Markdown, CodeQuality, threat-model, HTML)
  were imported at CLI load, so every invocation, including `--version`
  and `--list-*`, paid for them. They now import lazily when their format
  is actually selected. The headline win is the JUnit reporter pulling in
  `xml.sax` (~20 ms off every run). The autofix engine's `difflib`
  dependency is likewise deferred to where a patch is actually rendered
  (under `--fix`), since the fix engine is otherwise on every CLI load.
  CLI import drops from ~150 ms to ~114 ms.
- **Attack-chain reports distinguish the two reachability tiers.** A
  chain confirmed only by the shared-job co-location fallback
  (`via_dataflow=False`) used to render the same confident green
  `Reachability confirmed` badge as a chain backed by a proven
  source-to-sink dataflow path. Co-location is not a proven path, so the
  terminal / Markdown / HTML reports now show it as a weaker caution
  badge (`Co-located (unverified)`) and reserve `Reachability confirmed
  (dataflow)` for the proven tier. The SARIF chain result also gains a
  `via_dataflow` property so machine consumers can gate on the stronger
  signal (mirroring `--chains-require-dataflow`). The underlying
  `confirmed_reachable` flag and which chains emit are unchanged.

### Fixed

- **ReDoS in the remote-script-exec primitive.** The curl-pipe detector
  (`_primitives/remote_script_exec`, used by the GHA-016 / GL-016 /
  BB-012 / ADO-016 / ... curl-pipe rules) used unbounded fills around the
  captured URL. A crafted CI line such as `curl https://x/<60 000 chars>`
  with no trailing pipe drove the engine into quadratic backtracking
  (~5 s per pattern at 60 kB; ~11 s at 80 kB). Since these patterns run
  on pull-request-controlled workflow files, that was a denial-of-service
  vector against the scanner itself. The URL body and every fill are now
  length-capped (`_MAX_FILL`, 2048), so a crafted long line scans in
  ~15 ms with no change to detection on real command lines. Regression
  test in `tests/test_primitives.py::TestRemoteScriptExecReDoS`.


