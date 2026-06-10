---
title: Legion Harden Runner
date: 2026-06-10 07:02:02 +00:00
tags:
  - OpenSource-For-Freedom
  - GitHub Actions
draft: false
repo: https://github.com/OpenSource-For-Freedom/Legion_runner
marketplace: https://github.com/marketplace/actions/legion-harden-runner
version: v1.0.27
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/OpenSource-For-Freedom/Legion_runner** to version **v1.0.27**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/legion-harden-runner) to find the latest changes.

## What's Changed

### Added
- **Curated egress presets (`allowed-presets`)**: opt-in per-ecosystem allowlists
  (npm, yarn, pnpm, pip, pypi, cargo, rust, go, maven, gradle, nuget, apt, debian,
  docker) so block mode "just works" for common toolchains without hand-listing
  endpoints. e.g. `allowed-presets: "cargo, apt"`. Unit-tested.
- **Download integrity verification**: the action verifies the `legionr-bpf` /
  `legionr-fim` release binaries against a `.sha256` sidecar before running them
  (the release now attaches the checksums), and **fails closed** — an
  unverified/corrupted/tampered download is rejected and the action degrades
  instead of executing it.
- **`learned-baseline` input** (default `true`): in block mode, also allow
  destinations previously learned into the Actions cache. Set `false` to enforce
  ONLY the explicit allowlist (inline + policy-file + GitHub) with no cache
  read/write — used by the enforce self-test for deterministic deny.
- **File-integrity / tamper detection (Rust `legionr-fim` agent)**: snapshots
  high-value tamper targets at job start (credential/config files, `.git`
  config + hooks, and checked-out source) and diffs them at job end, surfacing
  anything overwritten, deleted, or chmod'd in the summary. Only sha256 hashes
  are stored — never contents. New inputs `file-integrity` (auto|off) and
  `fim-extra-paths`. `file-integrity: auto` downloads the agent from the latest
  release (plain stable Rust, no eBPF toolchain) and degrades to a silent skip
  if unavailable. Logic lives in `legionr-core::fim` (unit-tested); the binary
  is a release asset like `legionr-bpf`, built + attached by `release.yml`.

### Fixed
- **Block mode no longer hangs the runner at teardown.** `applyEgressBlock`
  installed a default-deny `LEGION_EGRESS` chain in `OUTPUT` and nothing ever
  removed it, so the runner's own completion call (to rotating GitHub-backend IPs
  not in the static seed) was dropped and the job spun until timeout. `post()`
  now tears the firewall down (`removeEgressBlock`).
- **Runner hang from leaked daemons.** The post step left privileged background
  processes alive — eBPF agent, DNS forwarder — and the `/proc` monitor could
  wedge in a blocking `ss` subprocess. The monitor now reads `/proc/net/tcp`
  directly (no subprocess); daemons are reliably reaped.
- **Docs/labels**: the eBPF mechanism is a **tracepoint on `sys_enter_connect`**
  (not a "kprobe on tcp_connect"); the sampler is `/proc`-only (the "ss" fallback
  was removed). Corrected the runtime log line, summary label, and README.
- Removed dead `action/baseline.js`; pinned `release.yml` checkout to v6.

### Reliability
- **Tests for the paths that kept breaking**: the firewall rule builders
  (`egressBlockRules`/`egressUnblockRules` — order, DNS-allow, DROP-last,
  OUTPUT-jump-removed-first), the checksum parser, the curated presets, and a
  **full-stack PR gate** that runs block + DNS-capture + eBPF and asserts the
  job finalizes (catches any teardown-hang regression). Action test count 19 → 30.

### Changed
- **Name more destinations**: route glibc `getaddrinfo` (curl/apt/cargo/git)
  through the DNS-capture forwarder via an `nsswitch.conf` reroute, so hosts
  resolved by systemd-resolved (which ignores `resolv.conf`) are now captured
  and named — not just `resolv.conf`/c-ares callers. Health-checked and restored
  on teardown. (A connection to a hard-coded IP with no PTR still shows the IP —
  there is no name to resolve.)
- More accurate "unresolved destination" note in the summary (a name may have
  been resolved outside the capture path, vs. a genuine raw-IP connection).


