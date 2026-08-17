---
title: Vaara Policy Check
date: 2026-08-17 21:40:35 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.68.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Vaara is an AI-driven tool that provides verifiable receipts for autonomous actions, ensuring accountability by tracking every decision, call, and outcome in a tamper-evident ledger. The action automates the process of risk-scoring and logging actions according to predefined policies, allowing for transparent and trustworthy verification of any autonomous decision made within the system.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.68.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

Vaara is an AI-driven tool that provides verifiable receipts for autonomous actions, ensuring accountability by tracking every decision, call, and outcome in a tamper-evident ledger. The action automates the process of risk-scoring and logging actions according to predefined policies, allowing for transparent and trustworthy verification of any autonomous decision made within the system.

## What's Changed

## [1.68.0] - 2026-08-17

### Added

- **Northern Lights: a decision now carries the route it actually took, and an
  outcome travels back along that route.** Routing a decision forward is
  ordinary. Without a return path the record is write-only, so the next
  decision is made in the same ignorance as the last one.

  Trust moves at two scales under one rule. A criterion carries a prior that
  decides whether its signal counts at a node; a node carries a weight that
  decides whether its vote counts in a panel. Outcomes move both, both stop
  counting below a floor, and both decay back toward trust so one bad week
  does not become permanent policy. Only what actually voted is moved, so a
  criterion that failed a check is never blamed for the result.

  In a panel, standing follows being right rather than agreeing. A majority
  that carries a call which turns out wrong loses weight while the objector
  gains it, until the lone voice cannot be outvoted. Dissent stays in the
  record instead of being discarded at the tally.

  Four channels carry the return path: relay hop by hop, direct to the origin
  from any point on the route, local closing at the node, and lateral between
  neighbours without the origin hearing it. Four messages stay distinct on
  them: an outcome, a refusal with its reason, a capability probe, and a
  retraction. Hop counts bound the backward wave, a backward message never
  spawns a forward one, and decisions carry a sequence because the two
  directions cross.

  Three shapes of walk share one structure: an ordered route, a broadcast
  where which nodes answered is itself the signal, and a route discovered one
  handoff at a time with no list written in advance.

  Nodes measure their own firing rate against their own baseline, so a node
  that objects constantly is not elevated when it objects. Simultaneous
  elevation across nodes produces conclusions no single node reached.
  Anti-nodes carry what must be un-true for such a conclusion to hold and veto
  it outright, which is not a vote and cannot be outvoted; a blocked
  conclusion is recorded with what stopped it.

  Standard library only, no new dependencies. `docs/northern-lights.md`,
  `src/vaara/northern_lights.py`, 44 tests.

- **`COMMERCIAL.md` states the commercial side of the dual licence.** Vaara has
  been dual-licensed since v1.0.0 and `LICENSING.md` carried the structure and
  the relicensing history. This is the buyer-facing half: when the commercial
  licence is needed, when it is not, and what it does not include. It states
  plainly that AGPL compliance costs nothing and is not a lesser tier.

- **A conformance statement now grades every check as `proved`, `unproved` or
  `false` instead of true or false.** A boolean cannot tell a reader whether a
  check ran and failed or was never reached, and those need different repairs.
  A suite the runner cannot place and a record file that will not parse both
  used to land on `conforms: false`, next to a genuine disagreement with the
  spec, which reports more than the run established.

  `unproved` is only ever produced by an execution state the runner recorded,
  never inferred from a primary check that failed. A suite reports `runnable`;
  an unreadable record is listed by name. Where a run mixes states the worst
  one wins, because a check that ran and failed is a stronger claim than one
  that never ran. Records stay optional: supplying none leaves the section
  absent and contributes no grade, which is a different statement from
  supplying records that could not be read.

  The rendered page no longer prints NON-CONFORMING over an unreached check.
  It prints UNPROVED, names which check could not be reached, and says the
  statement establishes nothing either way.

  `schemaVersion` goes to 2. The change is additive: `conforms` keeps its
  meaning and every previously conforming statement still conforms.

  A fifth vector scenario, `unproved`, carries records that all conform plus one
  file that will not parse, which is the case a boolean cannot express. The
  Vaara-free checker re-derives the grade itself with its own worst-first fold
  and fails if a page or golden ever claims `proved` where it derived
  `unproved`, so the new field is checked rather than asserted.

- **A Helm chart and a container image, so Vaara can be deployed on
  Kubernetes.** `deploy/helm/vaara` installs the model-endpoint proxy in front
  of an in-cluster model endpoint: a StatefulSet with one replica, a
  ClusterIP Service, a ServiceAccount with no API token mounted, and a
  PersistentVolumeClaim holding the trail. The image is built on
  `registry.suse.com/bci/python:3.12`, runs as UID 10001 with a read-only root
  filesystem, and is published to `ghcr.io/vaaraio/vaara` on release for
  linux/amd64 and linux/arm64.

  The chart has no replica count. One hash chain has exactly one writer, and a
  second pod appending to the same volume produces a chain neither pod can
  verify, so the invariant is enforced by the shape of the chart rather than
  documented next to a knob that breaks it.

  Three configurations that would fail in the cluster now fail at template
  time with the reason: `enforce` mode with no allow list and no approvals
  directory (every tool call gated, clients appear to lose their tools),
  signing with no Secret named (the chart will not mint a key that rotates on
  every upgrade), and signing without persistence (signed evidence discarded
  on restart).

- **`GET /healthz` on the model-endpoint proxy.** Every other path on the
  proxy forwards upstream, so a liveness probe had no way to ask about the
  proxy rather than about the model: an orchestrator would restart Vaara
  whenever the model was slow to load, and bill a request per probe. The route
  answers locally with status, version and mode, names no internal host, and
  does not shadow the `/health` that vLLM serves.

- **`docs/kubernetes-rancher.md`** covering install, storage, turning on
  enforcement, signed receipts, and the NetworkPolicy that makes the proxy the
  only route to the model. **`docs/supported-platforms.md`** lists the Python,
  container and Kubernetes versions Vaara supports, and separately records
  which platform versions a release has actually been run against.

- **The conformance runner prints one link that opens the results form with
  the run already in it.** The runner printed a table of verdicts and stopped
  there, so anyone who wanted their reproduction listed had to read the numbers
  off a terminal and retype them. The commit, the suites and the totals are all
  known at the end of a run, so they are now carried into the form. The link is
  printed for a failing run as well, because a result that did not pass is a
  legitimate row and gating the link behind a green run would collect only the
  results that passed. `--no-submit-link` omits it for CI and scripted runs.

- **The rendered text of `draft-sirkkavaara-vaara-receipt-07` is in the tree.**
  The `ietf/` directory carried 00 through 06 and the -07 text lived only on
  the datatracker, so the readable timeline of the format had a hole in it at
  the newest revision.

### Fixed

- **The audit trail turned on WAL journalling everywhere, including on
  filesystems that cannot support it, and corrupted itself there.** SQLite's
  WAL journal coordinates readers and writers through a shared-memory segment,
  and SQLite's documentation states that WAL needs coherent shared memory and
  working file locking. virtiofs, 9p, NFS, SMB and FUSE mounts provide neither.
  There the write still goes through and the database corrupts, in the one file
  whose purpose is being evidence.

  This is the ordinary way people try the tool. The trail defaults to
  `~/.vaara/trail/audit.db`, and a container with the host home directory bind
  mounted in puts that on virtiofs or FUSE without anyone choosing it. Docker
  Desktop, Rancher Desktop, Colima, Lima and OrbStack all mount that way, as do
  WSL2 writing to `/mnt/c` and NFS or SMB network homes. On one such machine
  the trail was damaged four times in twelve days.

  Vaara now reads `/proc/mounts` when it opens a trail, and on a filesystem
  that cannot support WAL it uses the DELETE journal instead and logs one line
  naming the path, the filesystem type and what it did. Everywhere else is
  unchanged. `VAARA_TRAIL_JOURNAL_MODE=wal|delete` overrides the choice in
  either direction. Detection is Linux-only, because a filesystem type is not
  readable on macOS or Windows without platform calls. Those keep WAL, and
  `docs/supported-platforms.md` states that limit. 12 tests in
  `tests/test_journal_mode_shared_fs.py`.


