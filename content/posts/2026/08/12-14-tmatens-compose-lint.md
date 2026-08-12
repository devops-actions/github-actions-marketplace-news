---
title: compose-lint
date: 2026-08-12 14:44:16 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.17.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The `compose-lint` action is a security-focused linter for Docker Compose files that catches dangerous misconfigurations before they reach production. It automates the process of identifying and fixing common security vulnerabilities in `docker-compose.yml` and `compose.yaml` files, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The action provides a full rule documentation at [tmatens.github.io/compose-lint](https://tmatens.github.io/compose-lint/) for reference.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.17.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The `compose-lint` action is a security-focused linter for Docker Compose files that catches dangerous misconfigurations before they reach production. It automates the process of identifying and fixing common security vulnerabilities in `docker-compose.yml` and `compose.yaml` files, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. The action provides a full rule documentation at [tmatens.github.io/compose-lint](https://tmatens.github.io/compose-lint/) for reference.

## What's Changed


### Upgrading from 0.16.x

**Four capabilities that passed on 0.16.0 now fail; nothing else moved.**
`SYS_NICE`, `IPC_LOCK` and `LEASE` are flagged by the new CL-0029, and
`SYSLOG` by the new CL-0030 — all four at HIGH, and all four ungraded on
0.16.0, where no rule covered them.

| Trigger | 0.16.0 | 0.17.0 |
|---|---|---|
| `cap_add: SYS_NICE` / `IPC_LOCK` / `LEASE` | *none* | **CL-0029** HIGH |
| `cap_add: SYSLOG` | *none* | **CL-0030** HIGH |

Unlike 0.15.x → 0.16.0, no existing finding changes rule or severity, so a
waiver written against 0.16.0 still covers what it named. The only new
suppressions you may need are for the four capabilities above.

### Added

- **CL-0029 — host-availability capability added** (HIGH): flags `cap_add`
  of `SYS_NICE`, `IPC_LOCK` or `LEASE`. Each reaches the host with nothing
  else in the file and costs availability alone — `SYS_NICE` puts the
  container's threads above every ordinary host process on a scheduler that
  is not namespaced, `IPC_LOCK` pins host RAM past `RLIMIT_MEMLOCK` that
  cannot be reclaimed or swapped, and `LEASE` stalls the host's own `open()`
  on any bind-mounted path for the kernel's lease-break timeout. Each member
  was measured on Docker 29.4.3 holding only that capability under
  `--cap-drop ALL`. The fix text points at `deploy.resources` and at bounding
  a workload that keeps the capability, since SPDK and DPDK ask for
  `SYS_NICE` and `IPC_LOCK` together.
- **CL-0030 — host-disclosure capability added** (HIGH): flags
  `cap_add: SYSLOG`, which reads the host kernel ring buffer — `dmesg` is not
  namespaced, so the container sees the host's boot, hardware and driver log,
  including kernel pointers where `kptr_restrict` allows them. Independence
  from the host's `kernel.dmesg_restrict` was measured rather than assumed:
  with that sysctl at 0, a capless container still read 0 lines against 2,028
  with the capability, because Docker's default seccomp profile admits
  `syslog(2)` only for `CAP_SYSLOG`. The gate is the capability, on any host.

  With SYSLOG graded, every Linux capability now carries a rule or a recorded
  reason it needs none — `test_rule_membership.py`'s ungraded set is empty.

### Changed

- CL-0013's remedy for `/dev/shm` and `/dev/hugepages` is now something the
  reader can actually follow. Both kept firing correctly — a host bind of
  either exposes segments belonging to the host and every other container —
  but the guidance said to drop the mount and "use a named volume", which
  provides neither facility. It now names the real alternatives, each
  verified against Docker 29.4.3 rather than taken from documentation:
  `shm_size:` for a larger segment, `ipc: shareable` plus `ipc: service:` for
  two services that must share one, and a `hugetlbfs` volume for huge pages
  (bounded with `deploy.resources.limits`, since the pool stays host-wide). A
  workload that genuinely needs the host's own huge-page files is told to
  suppress with a reason rather than pretend the mount is safe. Over the
  archived 5,417-file corpus this changed 39 fix texts and zero findings.
- CL-0024's doc now states what the `SYS_ADMIN` judgment call actually
  decides, rather than implying a broader choice than the rule makes.
- `docs/state-of-compose.md` and its four charts are regenerated on a 0.16.0
  baseline, so the published corpus figures reflect the current severity
  model rather than 0.15.x pricing.
- The examples library is refreshed against 0.16.0 — each worked example
  re-linted so its quoted findings, ids and severities match what the release
  actually emits.
- The demo GIFs are re-rendered on 0.16.0.
- Rule counts stated in prose are now held to the registry by
  `tests/test_rule_surfaces.py`. Four surfaces had gone on claiming 25 rules
  after CL-0029 and CL-0030 landed — the mkdocs `site_description` search
  engines index, the Docker Hub overview that syncs on every default-branch
  push, `SECURITY-EXPECTATIONS.md`, and the roadmap inventory — because such
  counts go stale when a rule lands, not when a version ships, so neither the
  release checklist nor CI's version-pin check reached them.


