---
title: compose-lint
date: 2026-05-01 13:52:36 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.7.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a static analysis tool designed to identify and prevent security risks and misconfigurations in `docker-compose.yml` and `compose.yaml` files. It automates the detection of issues such as privileged containers, unpinned images, exposed network ports, sensitive file mounts, and hardcoded credentials, helping to enforce best practices and safeguard containerized applications before deployment. This zero-configuration, fast, and opinionated linter is ideal for improving CI pipelines, enhancing infrastructure security, and ensuring compliance with standards like the OWASP Docker Security Cheat Sheet and CIS Docker Benchmark.

## What's Changed


### Added

- New rule **CL-0020** — credential-shaped env keys with literal values.
  Flags `environment:` entries whose key matches a credential convention
  (`PASSWORD`, `TOKEN`, `SECRET`, `API_KEY`, `ACCESS_KEY`, `PRIVATE_KEY`,
  `CREDENTIAL`, plus suffix-anchored `_PASS`, `_PWD`, `PASSWD`, `_SALT`,
  `_DSN`) and whose value is a non-empty literal string. Exempts the
  `*_FILE` secrets-mount convention, `ALLOW_EMPTY_*` / `RANDOM_*`
  boolean toggles, and bool/numeric values. Skips `${VAR}` substitutions.
  Severity HIGH. Fires on 17.9% of real-world Compose files in the
  corpus. See [docs/rules/CL-0020.md](docs/rules/CL-0020.md). (#190)
- New rule **CL-0021** — credentials embedded in connection-string env
  values. Flags `environment:` values containing a literal
  `scheme://user:password@host` userinfo regardless of the key name.
  Skips when either userinfo half is a `${VAR}` substitution. Catches
  inline credentials in `DATABASE_URL`, `MONGO_URL`,
  `AIRFLOW__DATABASE__SQL_ALCHEMY_CONN`, etc. — the largest detection
  class CL-0020's key-pattern matching misses. Severity HIGH. See
  [docs/rules/CL-0021.md](docs/rules/CL-0021.md). (#193)
- Mutation testing via `mutmut` configured in `pyproject.toml` against
  `src/compose_lint/rules/` and `src/compose_lint/_image.py`. Baseline
  documented in `docs/mutation-testing.md`. New `tests/test_rule_loader.py`
  exercises rule auto-discovery so loader-logic mutants are caught. (#172)
- Corpus regression snapshot at `tests/corpus_snapshot.json.gz` plus
  `scripts/snapshot.py` (`generate` / `diff` / `verify` subcommands) that
  digests compose-lint output across a real-world Compose corpus into a
  `(rule_id, service, line)` fingerprint per file. A CI-gated schema test
  prevents the digest from accidentally carrying third-party content; an
  opt-in pytest entry (`COMPOSE_LINT_CORPUS=<cache-root>`) verifies the
  snapshot against the latest local run. See `LICENSE-corpus.md` for the
  licensing posture and `CONTRIBUTING.md` for the regen workflow. (#173)
- Negative-coverage fixtures (`tests/compose_files/safe_*.yml`) asserting that
  hardened-but-unusual Compose patterns do not trigger false positives:
  `cap_drop: [ALL]` + targeted `cap_add` for CL-0006/CL-0011, the short-form
  `no-new-privileges` security option for CL-0003, `CMD-SHELL` healthchecks
  for CL-0015, and named-volume mounts for CL-0017. (#174)

### Changed

- `CL-0005 _is_wildcard_ip` no longer carries an unreachable defensive
  branch for `[0.0.0.0]` / `[*]` — Docker doesn't accept those forms and
  no test exercised them. `[::]` continues to match via the wildcard set.
  (#172)
- Release docker-smoke jobs (`publish.yml`, `publish-channel.yml`) now
  exercise the image with the full hardening flag set documented in the
  README (`--read-only`, `--cap-drop ALL`, `--security-opt
  no-new-privileges:true`, `--network none`, `--user 65532:65532`,
  `--pids-limit 256`, plus `:ro` on bind mounts). A copy-paste regression
  in the documented recipe will now fail the release gate. (#196)
- README "Running with full hardening" snippet now uses
  `composelint/compose-lint:0.6.0` instead of the
  `composelint/compose-lint@sha256:<digest>` placeholder, so the recipe
  is copy-paste runnable. A new note points users at Docker Hub or
  `docker buildx imagetools inspect` if they want to substitute a digest
  pin for full CL-0004 / CL-0019 satisfaction. The new tag form is
  tracked as a fourth version sync point in `docs/RELEASING.md`.


