---
title: SteerSpec Sync
date: 2026-08-20 22:39:29 +00:00
tags:
  - SteerSpec
  - GitHub Actions
draft: false
repo: https://github.com/SteerSpec/strspc-sync
marketplace: https://github.com/marketplace/actions/steerspec-sync
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SteerSpec Sync automates the synchronization of AI configuration files across a GitHub organization by defining templates in one central repository. The action generates unique hashes for rendered configurations, compares them with the deployment state, and creates pull requests for any changes. It supports dry runs, filtering options, and outputs PR creation statistics.
---


Version updated for **https://github.com/SteerSpec/strspc-sync** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/steerspec-sync) to find the latest changes.

## Action Summary

SteerSpec Sync automates the synchronization of AI configuration files across a GitHub organization by defining templates in one central repository. The action generates unique hashes for rendered configurations, compares them with the deployment state, and creates pull requests for any changes. It supports dry runs, filtering options, and outputs PR creation statistics.

## What's Changed

First release since March. 35 commits, taking the prototype toward a production-ready GitHub App.

## ⚠️ License changed: MIT → Apache 2.0

`strspc-sync` is now **Apache 2.0**, matching every other public SteerSpec repository. The previous
MIT license was an oversight. If you track dependency licenses, this is the change to note — Apache
2.0 adds an explicit patent grant and a trademark clause. A `NOTICE` file is included in the source
tree and in every release archive.

## ⚠️ Action users: update your ref

Earlier docs told you to use `@v1`. **That ref never existed** — there has never been a `v1` tag or
branch, so any workflow copied from the quickstart failed to resolve. Pin to the release tag instead:

```yaml
- uses: SteerSpec/strspc-sync/sync@v0.2.0
```

While this project is pre-1.0, pin explicitly and upgrade deliberately; there is no floating major
tag, because a `v1` would advertise API stability this codebase is not yet offering.

## GitHub App

- Installation permissions are validated after token exchange, failing fast with a clear message
  instead of surfacing a confusing 403 later (#18). Requires `contents:write`, `pull_requests:write`,
  `issues:write`, `metadata:read`.

## Reliability

- **`central-repo` config field** replaces deriving the central repo from the first include glob,
  which broke on wildcards. Resolution order: config → `GITHUB_REPOSITORY` → error (#14).
- **Proactive rate limiting** — reads `X-RateLimit-Remaining`/`Reset` and sleeps before hitting the
  limit, honouring `Retry-After` for secondary limits, rather than only reacting to 429s (#15).
- **`--timeout`** for operation-level deadlines, default 10m (#16).
- **Fingerprint-based issue idempotency** — drift and conflict issues carry a BLAKE3 fingerprint, so
  renaming an issue no longer causes a duplicate to be filed (#17).

## Observability

- **Structured logging** via `log/slog`, with `--log-level` (`debug|info|warn|error`) and
  `--log-format` (`auto|json|text`). JSON under GitHub Actions, human-readable locally; logs go to
  stderr so they never mix with the JSON result on stdout (#21).

## Templates

- The **marker strategy preserves CRLF** line endings, so Windows-centric repos no longer get
  whole-file line-ending churn (#19).

## Fixes

- **The quickstart config parses again** (#30). The shipped example — the first thing the README
  points you at — failed to load: a YAML list under a string-map `variables`, and templates missing
  the required `version` field. Both fixed, with a regression test that loads every shipped config.
- **Sync branches are cut from a real commit SHA** (#31). `getBaseSHA` returned a branch *name* where
  `git/refs` requires a SHA, so branch creation 422'd against live GitHub — and the error was
  discarded, letting later steps run against a branch that was never created. Branch-creation
  failures now surface; only a genuine "already exists" is tolerated.

## Verifying this release

```console
$ curl -fsSL https://github.com/SteerSpec/strspc-sync/releases/download/v0.2.0/checksums.txt
$ shasum -a 256 strspc_0.2.0_linux_amd64.tar.gz
```

**Full changelog:** https://github.com/SteerSpec/strspc-sync/compare/v0.1.1...v0.2.0
