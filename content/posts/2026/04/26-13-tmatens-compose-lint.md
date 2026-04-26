---
title: compose-lint
date: 2026-04-26 13:38:22 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter designed to detect and prevent misconfigurations in Docker Compose files, ensuring they adhere to OWASP and CIS security standards. It automates the identification of potential vulnerabilities, such as dangerous settings or insecure configurations, before deployment to production. The action provides a fast, opinionated, zero-configuration tool compatible with modern Compose specifications, offering robust security features and detailed feedback for secure container orchestration.

## What's Changed


### Added

- `-v` / `--verbose` flag for the text formatter. Default text output now
  prints the fix block and reference URL only on the first occurrence of
  each rule id within a file; subsequent occurrences carry
  `(see fix above)` instead. `-v` restores today's per-finding fix
  repetition for IDE tooling or local fix-it-now workflows. JSON and
  SARIF output are unaffected. (#156)

### Changed

- Text formatter groups findings by service under a per-file header.
  Presence rules (e.g. CL-0001, CL-0002, CL-0005, CL-0019) render a
  one-line source excerpt under the finding so the offending value is
  visible inline. Pure-absence rules (CL-0003/4/6/7) skip the excerpt —
  the violation is the absence — and rely on the fix block to show the
  remediation. (#156)
- `docs/severity.md` now distinguishes "absence" rules (fire when a
  hardening directive is missing — high real-world hit rate) from
  "explicit-disable" rules (fire only when a service opts into a
  dangerous configuration — deliberately low hit rate by design). A
  zero-hit run on an explicit-disable rule is expected, not a bug. (#159)
- Multi-file invocations no longer fail-fast on the first parse error.
  The CLI now records the failure, continues scanning the remaining
  files, and exits 2 only after every input has been attempted. Per-file
  error messages include the filepath; the text-mode aggregate footer
  and verdict report how many files were skipped; SARIF output surfaces
  parse failures via `runs[].invocations[].toolExecutionNotifications`
  and sets `executionSuccessful: false`. A single-file invocation that
  fails to parse still exits 2 with the same `Error:` line. (#158)
- Compose v1 files (services declared at the top level) and structural
  fragments (files with only `volumes:` / `networks:` / `configs:` /
  `secrets:` / `x-*` keys) are now skipped with exit 0 and a per-file
  stderr note rather than hard-failing the whole invocation. The v1
  format was retired by Docker in 2023; fragments are typically merged
  with `-f overlay.yml` and not meaningful to lint in isolation.
  Genuinely unrecognised shapes still exit 2. Combined with the
  multi-file change above, `compose-lint **/*.yml` over a monorepo no
  longer dies on the first v1 file or overlay it encounters. See
  [ADR-013](docs/adr/013-missing-services-key.md). (#163)
- SARIF `result.fixes[]` removed in favor of `result.properties.fix`.
  SARIF 2.1.0 § 3.55 requires `artifactChanges` on every fix object,
  and compose-lint's `Finding.fix` is human-readable prose, not a
  machine-applicable patch — emitting `fixes[]` without `artifactChanges`
  produced documents that strict validators (`check-jsonschema`
  against the canonical OASIS schema) rejected. Lenient consumers
  reading `result.fixes[0].description.text` should switch to
  `result.properties.fix`. GitHub Code Scanning, Sonar, and other
  major consumers tolerated the missing field but the document was
  schema-invalid. (#168, fixes #166)

### Fixed

- Findings on YAML sequence items (e.g. one entry in `ports:`,
  `volumes:`, `cap_add:`, `devices:`, `security_opt:`) now report the
  line of the offending item, not the line of the parent mapping key.
  Previously every finding on a sequence item attributed to the parent
  key — three unbound ports all showed the `ports:` line, sensitive
  mounts pointed at `volumes:` instead of the mount itself. The parser
  now records per-item line numbers in `LineLoader` (sidecar keyed on
  `id(list)` on the loader instance, kept off the list itself to avoid
  changing list semantics), and `_collect_lines` emits `...[N]`
  entries. CL-0009, CL-0011, CL-0013, CL-0016, and CL-0017 were
  updated to consult the per-item entry with parent-key fallback;
  CL-0001 and CL-0005 already used this pattern and now resolve
  correctly. Fixes #157.
- `_collect_lines` no longer fans out `O(branching^depth)` across YAML
  alias graphs. Chained anchors (`b: {p: *a, q: *a, ...}; c: {p: *b,
  ...}; ...`) previously revisited the same container along every alias
  path; ClusterFuzzLite hit this with a sub-4KB input that grew RSS
  past 3 GB and OOMed the linter. Mirrors the `id()`-keyed visited-set
  pattern already in `_strip_lines`. The same input now completes in
  &lt;1 ms / 13 MB. (#161, fixes #154)


