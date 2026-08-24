---
title: compose-lint
date: 2026-08-24 22:46:09 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.24.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  **compose-lint is a security-focused linter for Docker Compose files that detects and fixes common vulnerabilities. It identifies issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The tool automates these checks in CI before they reach production, ensuring better security practices are followed.**
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.24.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint is a security-focused linter for Docker Compose files that detects and fixes common vulnerabilities. It identifies issues such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The tool automates these checks in CI before they reach production, ensuring better security practices are followed.**

## What's Changed


### Changed

- **Python 3.11 is now the minimum supported version** (issue #643). Python
  3.10 reaches upstream end-of-life in October 2026, and dropping a version is
  a MINOR pre-1.0 but a MAJOR after — so the drop lands before the 1.0 freeze
  rather than letting a routine EOL force a 2.0. The deprecation was announced
  in 0.22.0, which also added the stderr warning, because the drop itself is
  silent: `requires-python` does not fail an install — pip resolves a 3.10
  interpreter to the last release that allowed it, so `pip install -U
  compose-lint` on 3.10 now stays on 0.23.0 with nothing printed. Pin
  `compose-lint==0.23.0` to be explicit about staying there. The CI matrix is
  now 3.11–3.14, and the lockfiles are regenerated at the new floor (the only
  change is that 3.10-only backport dependencies drop out; no version moves).

- **A scheduled Python-EOL drop is now MINOR, post-1.0 included**
  ([ADR-029](docs/adr/029-scheduled-python-drops-are-minor.md)). MAJOR
  signals surprise; a drop whose date CPython published years ahead, that
  warned on stderr for at least 180 days and one MINOR of grace, and that
  ships no earlier than upstream EOL, surprises nobody — and
  `requires-python` cannot break an existing environment (pip resolves an
  affected interpreter to the last release that allowed it). An
  off-schedule drop stays MAJOR. This closes the trap #643 had to
  outrun, permanently: 3.11's October 2027 EOL will be a routine MINOR,
  not a forced 2.0.

- **The compatibility policy is now part of the contract**
  ([ADR-030](docs/adr/030-the-policy-is-part-of-the-contract.md)). Amending
  it requires an ADR; clarifications ship in any release, tightenings are a
  MINOR, and loosenings are a MAJOR and never retroactive — the promise can
  no longer be weakened by a docs-only patch. Alongside it, the PATCH
  definition is clarified (a false-positive fix removes *incorrect* findings
  and stays a PATCH) and the severity-upgrade rule records its sanctioned
  MINOR alternative, the ADR-028 split pattern.

- **A post-1.0 severity upgrade is a MINOR with a one-release runway, not a
  MAJOR** ([ADR-031](docs/adr/031-severity-upgrades-are-minor-with-runway.md)).
  The release before the move announces it; the next MINOR applies it; the
  two-axis derivation model must produce the new number either way. A new
  HIGH rule already fails a threshold-gated pipeline as a MINOR, so
  upgrades-as-MAJOR guarded a door the contract holds open elsewhere —
  while making it impossible to correct an under-graded risk signal without
  a 2.0. Deliberately the watch-and-see position: under ADR-030, tightening
  to MAJOR later is cheap, and the reverse would not have been.

- **Retiring a refuted rule is a MINOR post-1.0, through the deprecation
  lifecycle** ([ADR-032](docs/adr/032-rule-retirement-is-minor-with-lifecycle.md)).
  A rule leaves the registry only when live evidence refutes its premise —
  the bar that removed CL-0012/0015/0023 pre-1.0 — and pricing that removal
  at a 2.0 would force the tool to keep emitting findings it knows are
  false. Announce, one MINOR of grace, then remove; the ID stays fallow
  forever, the doc page stays as a tombstone, and a config referencing the
  retired ID keeps working, `--strict-config` included (a precondition the
  config layer gains before the first such retirement). "Noisy" remains a
  non-reason (ADR-028).
- **`rule_id` / `ruleId` in machine output is declared opaque.** Every value
  today matches `CL-\d{4}`, but the pattern was never promised and is now
  explicitly excluded from the 1.0 contract: match exact ids, not the
  prefix. Declared before the freeze, while it is still a clarification
  rather than a contract change; it keeps a future rule source with
  differently-shaped ids (e.g. shellcheck's `SC` codes, ADR-007) additive.

### Removed

- **The Python 3.10 deprecation warning** added in 0.22.0. It existed to reach
  3.10 users while a release could still reach them; from this release pip no
  longer installs compose-lint on 3.10, so there is no interpreter left for the
  warning to run on.

- **CL-0022 no longer flags the `dev` tmpfs option.** The pre-1.0 rule-ID sweep
  ([#645](https://github.com/tmatens/compose-lint/issues/645),
  [ADR-028](docs/adr/028-pre-1.0-rule-id-sweep.md)) measured each of the rule's
  three tokens on rootful Docker at defaults. `exec` and `suid` remove a real
  default and stay. `dev` removes `nodev` and changes nothing a container can
  do: a block node created on a `tmpfs:dev` is refused by the **device cgroup**
  (`Operation not permitted`) exactly as it is on the rootfs and in `/dev`,
  neither of which carries `nodev` either; where the cgroup is off
  (`privileged`), `/dev` already permits the node. A finding on `dev` described
  a configuration that changed nothing — the failure mode that removed
  CL-0023 — so the token is gone, with a premise check (`_cl0022_dev_inert`)
  that re-proves the cgroup refusal on every CI run. A file whose only CL-0022
  finding was `:dev` now passes; `exec` and `suid` findings are unchanged. The
  rule's name is now "tmpfs mount re-enables exec/suid".

  The rule doc is corrected at the same time: OWASP Rule #8 recommends the
  `read_only` + `tmpfs` pattern and says nothing about mount options, so it is
  now cited for the pattern the rule protects, with the option semantics
  grounded by the live checks. The doc also states what `noexec` does not
  stop — `memfd_create`, interpreters, and a root workload's writable `/dev` —
  which is why the rule is LOW.

- **The pre-1.0 rule-ID reclamation window is closed.** ADR-028 records a
  disposition for every one of the 27 rules against the four questions #645
  set — would we ship it today, is its grounding container-context, is it
  false-positive-prone beyond what the premise check sees, is the ID right —
  with corpus prevalence and the live measurements behind each. All 27 are
  kept; no ID is reclaimed; CL-0012, CL-0015 and CL-0023 stay fallow
  permanently (already enforced by `tests/test_rule_surfaces.py`). One rule,
  CL-0014, is recorded as retained on maintainer judgment rather than on the
  grounding bar, so the divergence is visible rather than folklore.


