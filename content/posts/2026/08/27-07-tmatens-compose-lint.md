---
title: compose-lint
date: 2026-08-27 07:41:27 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.25.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations before they reach production. It catches privilege flaws, network exposure, supply-chain issues, filesystem and credential leaks, and provides auto-fixes where possible. The action is built for anyone whose Compose file runs real services and serves as the pre-merge gate to catch misconfiguration before deployment.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.25.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

This GitHub Action is a security-focused linter for Docker Compose files that checks for dangerous misconfigurations before they reach production. It catches privilege flaws, network exposure, supply-chain issues, filesystem and credential leaks, and provides auto-fixes where possible. The action is built for anyone whose Compose file runs real services and serves as the pre-merge gate to catch misconfiguration before deployment.

## What's Changed



### Added

- **CL-0025 now grades a writable bind of the host's module and library tree**
  ([ADR-033](docs/adr/033-library-tree-is-root-equivalent-by-containment.md),
  the disposition #737 deferred). `/lib/modules` and `/usr/lib/modules` are
  matched by descent — everything below is a file the host kernel loads by
  name, as root, on demand, so a replaced module is kernel-mode code on the
  host with no capability needed. `/usr/lib`, `/lib` and `/lib64` are matched
  exactly, the `/var/lib` mechanism: `systemd/system` and `ld.so` sit below
  them, but so do `python3`, `node_modules` and `jvm`. Measured on Docker
  29.7.2 at defaults, unprivileged: every path accepted a write through an rw
  bind and refused it through an ro bind, and module lookup works through
  `:ro`. New premise check `_cl0025_module_tree` plants a file in the running
  kernel's module directory, observes it from a second container and removes
  it; the kernel is never asked to load it. Same cell as `/etc`: Direct × Host,
  CRITICAL, no override.

  On the corpus this is **7 new CRITICAL findings, all WireGuard / strongSwan
  services** binding `/lib/modules` without `:ro`. They are true positives
  with a one-token fix — the container only reads module files — so the
  finding's fix text leads with `:ro` rather than "remove the mount", and the
  read-only form `/lib/modules:/lib/modules:ro` is clean under every rule (the
  tree is world-readable by design, so it is exempt from CL-0013 too, as the
  executable tree is). `/usr/lib/systemd` and the multiarch library
  directories are recorded as real grants with no corpus incidence, not
  matched by descent yet.

- **CL-0025 now grades a writable bind of the host's executable tree**
  ([#737](https://github.com/tmatens/compose-lint/issues/737)). `/usr/bin`,
  `/usr/sbin`, `/usr/local/bin`, `/usr/local/sbin`, `/bin` and `/sbin` are
  matched by descent — `/usr/bin/docker:/usr/bin/docker`, the corpus idiom for
  driving the host's CLI, counts — and bare `/usr` is matched exactly, the
  `/var/lib` mechanism: it is root-equivalent for what it *contains*, and by
  descent it would also have priced `/usr/src`, `/usr/share/zoneinfo` and
  site-packages as host root (6 of the 27 writable `/usr`-family binds in the
  corpus, 22%). Both spellings are listed because matching is lexical on what
  the document wrote, while Docker resolves the merged-`/usr` symlink at mount
  time. Measured on two hosts at Docker defaults, unprivileged: each member
  accepted a write through an rw bind and refused it through an ro bind, and a
  root-owned `755` file planted through `-v /usr` into `/usr/local/bin` — ahead
  of `/usr/bin` on root's `PATH`, so nothing need be overwritten — was on the
  host afterwards. New premise check `_cl0025_exec_tree` plants, observes from
  a second container, and removes it. Same cell as `/etc`: Direct × Host,
  CRITICAL, no override. On the corpus this is 20 new CRITICAL findings.

  Two boundaries recorded rather than guessed: a **read-only** bind of the
  executable tree is exempt from CL-0013 as well — every file in it is
  world-readable by design, so `:ro` discloses nothing (the timezone-file shape,
  one tier up); and the **library tree** (`/usr/lib`, `/lib/modules`) is
  deferred to an ADR, because by descent it would sweep `/usr/lib/python3` and
  the standard `/lib/modules` bind of every VPN workload, and the corpus holds
  nothing else to shape a narrower match on.
- **A host file handed over through `secrets:` or `configs:` `file:` is now a
  bind mount to every mount rule**
  ([#736](https://github.com/tmatens/compose-lint/issues/736)). Outside swarm,
  `secrets: dsock: file: /var/run/docker.sock` is a read-only bind of that host
  file at `/run/secrets/dsock` — measured on Docker 29.7.2 / Compose 5.4.0: the
  container saw the host inode, the daemon answered through the secret, and the
  write stayed refused even with `mode: 0666`. Neither channel was read by any
  mount rule, so a service could hand itself the Docker socket and pass
  CL-0001 clean. `iter_bind_mounts` now yields each referenced `file:` entry
  as a read-only bind (`BindMount.origin` names the channel), so the existing
  partition grades it without a new rule: a socket or socket directory is
  CL-0001 CRITICAL, a root-equivalent or credential path is CL-0013's read-only
  disclosure at HIGH, and CL-0025 never applies because the channel cannot be
  writable. A project-relative `file: ./secrets/…` — the CL-0020 remediation —
  is not a host path and is not graded, matching the line `volumes:` draws;
  `external: true` and `environment:`-sourced entries have no host path. New
  premise check `_cl0001_secret_socket` drives `docker compose` and asserts
  both `ro` and a live daemon through the secret. Corpus: 73 `file:` entries,
  none absolute, so no existing finding changes.

- **Three bump classes the judgment-call cheat sheet did not price**
  ([docs/RELEASING.md](docs/RELEASING.md#judgment-call-cheat-sheet)). The
  sharpest is a rule's **evidence** derivation: it never appears in text output
  so it reads as an implementation detail, but it is the input to the SARIF
  `partialFingerprints` digest — the *identity* of a Code Scanning alert
  ([ADR-024](docs/adr/024-finding-identity-is-not-prose.md)). Change one and
  every existing alert for that rule closes as "fixed" while the same findings
  reopen as new, with no field renamed and no shape moved. No document assigned
  it a bump class; it is a MINOR, announced under `Changed`, and
  `docs/compatibility.md` gains an *Alert identity* section saying so in
  user-facing terms. The other two: retiring a rule admitted on *judgment*
  (new in this release, and previously harder to remove than a grounded rule),
  and amending the policy itself — ADR-030's
  clarification/tightening/loosening ladder governs every other row in the
  table but was only findable in prose elsewhere.


- **A test gates the `Development Status` classifier against the major
  version.** `docs/RELEASING.md` says to flip `4 - Beta` to
  `5 - Production/Stable` in the same commit that sets `version = "1.0.0"`, but
  nothing enforced it — the classifier was referenced nowhere in `tests/`,
  `scripts/` or the workflows. PyPI metadata is immutable per version, so a
  missed flip would have published 1.0.0 permanently labelled Beta with 1.0.1
  as the only remedy.
- **`x-` prefixed top-level keys are accepted in `.compose-lint.yml`.** Compose's
  extension-field convention, already honoured in the documents compose-lint
  lints. It is the other half of merge-key support — a `<<:` needs an anchor to
  merge *from*, and the idiomatic place to hold one is a top-level `x-` block,
  which previously warned and, under `--strict-config`, failed the run. Because
  `x-` is a deliberate marker it costs no typo detection: a mistyped `rulez:`
  still warns.

### Changed

- **A rule admitted on judgment may be withdrawn on judgment**
  ([ADR-032](docs/adr/032-rule-retirement-is-minor-with-lifecycle.md)
  condition 1, widened). ADR-032 made retirement MINOR only where evidence
  refutes the rule's premise. CL-0014's premise *holds* — `docker logs` under
  `driver: none` really does fail — so that bar could never be met for it, and
  the thin part is its grounding, which is a different defect. The effect was
  that a rule the project itself declines to ground was *harder* to remove than
  one that is grounded and later refuted, which is backwards; dropping it would
  have cost a MAJOR. The exception reaches only rules
  [ADR-028](docs/adr/028-pre-1.0-rule-id-sweep.md) records as admitted on
  judgment — a set closed at the 1.0 sweep, currently `{CL-0014}` — so "evidence,
  not preference" is unchanged for every rule admitted on evidence. Withdrawal
  still needs its own ADR and still runs the full deprecation lifecycle. Landed
  before the tag because the direction only goes one way: admitting this ground
  later is a loosening and costs a MAJOR, while removing it later is a
  tightening and costs a MINOR.

- **JSON `file` and `line` now name the same document, and the envelope is
  schema `"2"`.** `file` had always named the document being *graded* while
  `line` indexed wherever the evidence actually came from, so on a merged run
  (default since [ADR-025](docs/adr/025-lint-the-merged-configuration.md)) or
  one reading an `env_file:` (default since
  [ADR-027](docs/adr/027-grade-env-file-where-the-document-routes-it.md)) the
  pair named a real line of the *wrong file* — an overlay's CL-0002 was
  reported at the base file's line 3, which is its `image:` key. SARIF was
  already corrected this way after the same mismatch made Code Scanning
  annotate an unrelated line of the base file; JSON was the last format
  emitting an incoherent pair. `file` now names the document the evidence is
  in, the graded document moved to the new conditional `graded_file`, and
  `source_file` stays as a deprecated alias for consumers written against
  schema 1. **This is a breaking change to a required field**, which is why it
  ships before the 1.0 freeze — after the tag the same correction would be a
  MAJOR. ADR-015 and `docs/configuration.md` now document the complete emitted
  field list, including `severity_overridden_from` and the closed `severity`
  set, neither of which the frozen contract had named.


### Fixed

- **`fix --only` now normalizes case and reports an id that names no rule.**
  `--only cl-0014` — the correct id, lower-cased — matched nothing, printed
  "nothing to fix" and exited 0, which is indistinguishable from a clean repo;
  so did `--only CL-9999` and `--only banana`. A CI remediation step pinned to a
  typo therefore went green forever. `--explain` already normalized case, so one
  CLI was answering the same input two different ways. An id that matches no
  rule is now a `Warning:` naming it, promoted to an error by `--strict-config`
  — the same treatment an unknown rule id in `.compose-lint.yml` already gets.

- **`fix --apply` on a read-only file is now exit 2, not exit 0.** The three
  sibling write refusals — a symlink target, a hard link, an unwritable
  directory — all report exit 2, as does `init --force` on the same predicate.
  Only this case reported success, so the documented Docker recipe
  (`docker run -v "$(pwd):/src" … fix --apply`, where the image runs as UID
  65532) wrote nothing and told a gate it had succeeded.
- **`compose-lint init` no longer writes a config `check` then refuses.** A
  service named `no`, `yes`, `on`, `123`, `1.5` or `null` was emitted unquoted:
  the plain-scalar pattern said the *characters* were safe, but YAML 1.1
  resolves those *tokens* to booleans, ints and None, and `config.py` requires
  `exclude_services` keys to be strings. `init` reported success and the next
  `check` in that directory exited 2 until someone hand-edited the file — the
  exact failure the emitter's own docstring says it exists to prevent, arriving
  through the token rather than the characters. A candidate is now emitted
  unquoted only if PyYAML reloads it as the same string.

- **A `<<:` merge key in `.compose-lint.yml` no longer aborts the run.** The
  config loader called `construct_object` on every key node and PyYAML has no
  constructor for the merge tag, so a config using YAML's own merge syntax died
  with `could not determine a constructor for the tag 'tag:yaml.org,2002:merge'`
  and named no fix. `parser.py` already skipped the tag for Compose documents,
  so `<<:` was legal in the file being linted and fatal in the config beside it.

- **`--format json` and `--format sarif` now emit a document for every exit-2
  path.** "No Compose files found" and a missing `--config` exited before any
  formatter ran, producing **zero bytes** on stdout — while a missing file, a
  parse error and a directory argument all produced a full envelope. A `jq`
  pipeline therefore broke or not depending on which kind of exit 2 it hit, and
  both silent cases are the commonest CI misconfigurations: the wrong working
  directory and a typo'd config path.


- **Four published claims corrected to match what the tool does.** Under
  [ADR-030](docs/adr/030-the-policy-is-part-of-the-contract.md) the policy is
  part of the frozen contract, so a claim that is wrong at the tag is expensive
  to walk back later. `docs/ASSURANCE.md` said compose-lint "does not modify
  its inputs" — `fix --apply` has rewritten files in place since 0.11.0 — and
  its CWE-22 row said "the tool only *reads* them" and "No path is constructed
  from untrusted YAML content", when `env_file:` targets and `COMPOSE_FILE`
  entries are exactly that (ADR-026, ADR-027); the row now describes both path
  classes and the two containment gates that guard the document-supplied one.
  `docs/compatibility.md` promised a config naming a retired rule ID "keeps
  working, `--strict-config` included"; it loads, but the override is reported
  as an unknown ID and `--strict-config` promotes that to an error, which the
  page now says. `docs/configuration.md` told users to pass a `--pattern` flag
  that does not exist — globbing is the GitHub Action's `pattern:` input, not a
  CLI flag.
- **A crashed rule now reports itself in JSON and SARIF, not only on stderr.**
  A rule that raises is isolated rather than aborting the run
  ([ADR-006](docs/adr/006-exit-codes.md)), and it already set exit 2 and printed
  to stderr — but `run_errors` omitted `rule_errors`, so the machine output said
  nothing. JSON reported `errors: []` and SARIF reported
  `executionSuccessful: true` while that rule's findings were silently absent
  from a document the GitHub Action uploads. For Code Scanning that is worse
  than an omission: a *declared* rule with zero results reads as "every alert
  for this rule is fixed", so a crash closed the alerts instead of reporting
  itself. Crashed rules now ride the same structured channel as parse errors and
  coverage gaps.
- **Contract tests for three frozen surfaces that no test pinned.** Found by
  mutation: each change below left the entire suite green before this release.
  Halving `_KNOWN_RULE_KEYS` to `{enabled, reason}` passed — `severity:` and
  `exclude_services:` would have started warning as unknown keys, and *erroring*
  under `--strict-config`. Regrading SARIF `security-severity` for HIGH
  (`7.5`→`3.0`) and MEDIUM (`5.5`→`0.5`) passed, and both drop a full tier in
  GitHub's bands — the formatter's own comment records that Code Scanning
  derives an alert's severity column from that number alone. And changing the
  evidence derivation in CL-0017, CL-0020, CL-0021, CL-0025, CL-0028 or CL-0030
  passed *whenever the values stayed distinct*: evidence is the SARIF
  fingerprint, so that silently re-keys every alert, and the existing collision
  test only catches the degenerate case where values collapse together. Each is
  now pinned, with a guard-the-guard companion. Separately, `ci.yml`'s path
  filter now includes `docs/`, `README.md` and `mkdocs.yml`, which are asserted
  against by tests and could previously break on a docs-only PR that merged
  green.

- **A failed stdout write is now exit 2, not an undocumented exit 120 or a
  false exit 1.** Every path that could raise mid-run had been hardened to the
  0/1/2 contract; the channel all of them write through had not. A full disk
  (`> /dev/full`), a reader that closed early (`compose-lint check f.yml |
  head`) or a descriptor closed at startup (`>&-`) let the error escape
  `main()`: CPython reported an unraisable error from its own final flush and
  exited **120** — a code [ADR-006](docs/adr/006-exit-codes.md) does not define
  and which `docs/compatibility.md` prices at a MAJOR to add — or, when the
  write failed earlier, exited **1**, which reads as "findings at or above the
  threshold" on a file that is clean. Piping a clean run into `head` was
  therefore a red merge gate. Writes now report
  `Error: could not write output: <reason>` and exit 2, which is what that code
  already means: compose-lint could not complete the run.
- **A tiny Compose file can no longer buy an unbounded amount of work.** Two
  vectors, both reachable from a pull request in the CI merge gate the tool
  ships as. `MAX_SCAN_LEN` bounds what a pass *scans*; nothing bounded what
  substitution *produces* — `${A}${A}` is four characters whose result is twice
  whatever `A` holds, so a ladder of definitions each referencing the one below
  doubles per rung, and thirty rungs is a **489-byte** `.env` whose expansion
  exhausts memory. The new `MAX_SUBSTITUTED_LEN` bounds the result as it is
  built, returning the same "unknowable" answer both call sites already return
  for a name they cannot resolve. Separately, `str()` on an alias-expanded
  nested list serializes the DAG as a tree: `security_opt: [*l26]` is **690
  bytes** on disk and took 35s. `compose_lint._scalar` exists to refuse exactly
  that and `_caps.iter_cap_add` already applied it to `cap_add`; the CL-0003 /
  CL-0009 `security_opt` normalizer and CL-0010's namespace comparison now do
  too — 35.85s to 90ms. A list is not a value any of those fields can hold, so
  the entry is skipped rather than compared.
- **A pull request can no longer choose its own lint scope through a quoted
  `.env` value.** godotenv — and therefore Compose — lets a quoted value span
  lines, so the physical lines after the opening quote are value *text*, not
  entries. `_scan` read them as entries, which handed an untrusted contributor
  the one thing [ADR-026](docs/adr/026-read-the-sibling-env-file.md) §4 forbids:
  a `COMPOSE_FILE` compose-lint honours and Compose never sees. Three committed
  files were enough — a `.env` whose value text carries
  `COMPOSE_FILE=compose.yml:scrub.yml`, and a `scrub.yml` that `!reset`s the
  dangerous keys — turning a privileged, socket-mounting service from two
  CRITICAL findings into `✓ PASS` and exit 0, including in the explicit-file
  form the GitHub Action and the pre-commit hook use. `docker compose config`
  was never fooled; only compose-lint was. The scanner is now value-aware for
  both quote styles, with double-quote escapes honoured, and an unterminated
  quote consumes the rest of the file exactly as Compose does. This is the same
  failure `_split_env_lines` already closed for `\r`, by the route left open
  for `\n`.
- **A committed symlink no longer walks through the project-containment
  guard.** The guards in `_selection` and `_service_env` are deliberately
  lexical — whether a path *says* it leaves the project is a fact about the
  document, identical on every platform
  ([ADR-023](docs/adr/023-deploy-host-independent-claims.md) §1) — and a
  symlink says nothing. `probe.env` is spelled like a project-relative file
  and passes every lexical test while the link beside it points at
  `/home/runner/.aws/credentials`: exactly the scenario
  [ADR-027](docs/adr/027-grade-env-file-where-the-document-routes-it.md) §7
  names and `README.md` promises to refuse. In a pull request that put
  out-of-project env-key names into CL-0020/CL-0021 findings, and a line of an
  arbitrary host file into the SARIF uploaded to Code Scanning. A second gate
  now asks the *filesystem* — after the lexical test, at the moment of
  resolution — for both `env_file:` targets and `COMPOSE_FILE` entries.
  Symlinks themselves are still followed; only ones resolving outside the
  project are refused, with the existing `outside-project` note.

- **A parse error no longer reproduces the line it failed on.** PyYAML renders
  a snippet of the document under a caret, which reached `errors[].message`,
  the SARIF `toolExecutionNotifications` uploaded to Code Scanning, and the job
  log. A syntax error on a line carrying a credential therefore republished the
  credential. The diagnosis and the line/column position are kept — they say
  what is wrong and exactly where — and only the quoted bytes are dropped.


