---
title: pipeline-check
date: 2026-06-13 22:18:43 +00:00
tags:
  - dmartinochoa
  - GitHub Actions
draft: false
repo: https://github.com/dmartinochoa/pipeline-check
marketplace: https://github.com/marketplace/actions/pipeline-check
version: v1.14.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/dmartinochoa/pipeline-check** to version **v1.14.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipeline-check) to find the latest changes.

## What's Changed


### Added

- **`scan_status.warnings` in JSON / SARIF output.** The structured
  `scan_status` payload now carries the raw scan-metadata warning strings
  (parse failures, a provider's `post_filter` crash, a rule-set filter
  notice) whenever any fired, not just the `files_unparsed` /
  `degraded_modules` counts. A CI job parsing the report can now see the
  same detail the stderr summary prints. The key is absent when a scan
  produced no warnings, so existing consumers are unaffected.

### Changed

- **`--baseline` not-found error now names the recovery command.** Instead
  of just reporting the missing path, the message points at
  `pipeline_check --write-baseline <path>` to create one and how to pair it
  back, so a first-time user is not left guessing.

### Fixed

- **`pyproject.toml` pipeline-check config no longer dropped silently on a
  parse error.** `_load_path` reported a malformed `.pipeline-check.yml`,
  but `_load_pyproject` swallowed a malformed `pyproject.toml` without a
  word, so a typo in a `[tool.pipeline_check]` table stranded the config
  with no signal. It now prints the same `[config] could not parse` line,
  but only when the file actually carries a `[tool.pipeline_check]` table,
  so an unrelated project's broken `pyproject.toml` (auto-probed on every
  run) stays silent.
- **Docker publish: `apt-get upgrade` layer no longer served stale from
  cache.** The release image build pins the base by digest and runs
  `apt-get upgrade` to pull the latest Debian security patches, but the
  layer's instruction text and base digest are both stable, so BuildKit
  replayed a cached layer on every build and the upgrade never re-ran.
  That silently stranded fixable base-package CVEs (the v1.14.0 publish
  failed Docker Scout on four HIGH openssl CVEs already patched in
  `trixie-security`). An `APT_CACHE_BUST` build-arg fed the commit SHA
  busts that layer per build so the upgrade re-runs against the current
  index.


