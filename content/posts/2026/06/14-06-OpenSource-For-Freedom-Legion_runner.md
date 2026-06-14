---
title: Legion Harden Runner
date: 2026-06-14 06:37:48 +00:00
tags:
  - OpenSource-For-Freedom
  - GitHub Actions
draft: false
repo: https://github.com/OpenSource-For-Freedom/Legion_runner
marketplace: https://github.com/marketplace/actions/legion-harden-runner
version: v1.0.37
dependentsNumber: "2"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/OpenSource-For-Freedom/Legion_runner** to version **v1.0.37**.

- This action is used across all versions by **2** repositories.

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
- **Package repositories roll-up (`📦`)**: the summary now classifies named
  outbound destinations into their ecosystem/registry (npm, PyPI, crates.io,
  apt, Docker, Go, NuGet, Maven, Gradle, RubyGems, Alpine, GitHub) and shows a
  **Package repositories reached** table — registry, ecosystem, connections, and
  the process that reached each. Supply-chain risk hides in *which* registries a
  build talks to, so we surface them directly instead of leaving you to read
  IPs. Bare IPs that never got a forward name get a coarse CDN/provider hint
  (Fastly/Cloudflare/GitHub) via CIDR match — honest about ambiguity (a shared
  CDN can't name a registry). Logic in `action/repos.js`, fully unit-tested.
- **Combined cross-job egress report (one summary for the whole run)**: GitHub
  has no run-level summary, so each job emits its captured egress as a JSON
  artifact (`node action/report.js emit`) and a final `egress-report` job merges
  them into a SINGLE table — which job + process reached what — with a package
  repositories roll-up and a per-job diagnostics block (`render`). Wired into CI;
  `render` is pure and unit-tested. Pairs with `job-summary: false` so the run
  shows one combined summary instead of one table per job.
- **`job-summary` input** (default `true`): set `false` to keep monitoring and
  enforcement fully active but suppress the connections table in the job summary.
  Useful when many jobs in one workflow each run the action and you only want the
  table once (our own CI uses it so a run shows one table, not one per job).
- **Secure diagnostics line** in the summary: reports which resolution path
  actually fired (`forwarder on/off · captured DNS records N · getaddrinfo route
  … · named X/Y destinations`) so a run that comes back as bare IPs is triagable.
  Secure by construction — only booleans, counts, and a fixed enum; never the
  upstream resolver IP, file paths, captured hostnames, or env values.

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
- **No more spurious "could not resolve" annotations.** Allowlist entries that
  are wildcard parents with no A record of their own (e.g. `blob.core.windows.net`,
  `actions.githubusercontent.com`) used to emit one CI **warning annotation**
  each on every run. They are benign: the action skips them, and their subdomains
  are still observed via PTR / DNS capture (and opened just-in-time in block
  mode). They are now collected into a single plain-text log line instead.
- **Docs/labels**: the eBPF mechanism is a **tracepoint on `sys_enter_connect`**
  (not a "kprobe on tcp_connect"); the sampler is `/proc`-only (the "ss" fallback
  was removed). Corrected the runtime log line, summary label, and README.
- **Outbound connections showed as bare IPs when systemd-resolved owns
  `getaddrinfo`.** The `nsswitch` reroute didn't always stick, so package-repo
  lookups bypassed the capture forwarder and were never named. The forwarder now
  targets the *real* upstream (systemd-resolved's actual servers, not the
  `127.0.0.53` stub), and when the bypass is detected but the nsswitch reroute
  fails, Legion redirects systemd-resolved itself at the forwarder via a
  `resolved.conf.d` drop-in — **verify-or-revert** and restored on teardown, so
  it never breaks the job's DNS.
- **IPv4-mapped IPv6 destinations rendered as long expanded addresses**
  (`0000:0000:0000:0000:0000:ffff:HHHH:HHHH`) in the summary. The `/proc` sampler
  emitted the expanded form while `normalizeIp` only collapsed the compressed
  `::ffff:` form. Both now collapse to dotted IPv4 (and the v4/v6 tables dedupe).
  (Shipped in v1.0.35.)
- Removed dead `action/baseline.js`; pinned `release.yml` checkout to v6.

### Reliability
- **Tests for the paths that kept breaking**: the firewall rule builders
  (`egressBlockRules`/`egressUnblockRules` — order, DNS-allow, DROP-last,
  OUTPUT-jump-removed-first), the checksum parser, the curated presets, and a
  **full-stack PR gate** that runs block + DNS-capture + eBPF and asserts the
  job finalizes (catches any teardown-hang regression), plus the package-repo
  classifier (host-suffix + CIDR matching). Action test count 19 → 37.

### Changed
- Removed em-dashes from the job-summary output (headers, the unresolved-host
  note, the enforce hint, and empty-cell placeholders) for plainer rendering.
- **Name more destinations**: route glibc `getaddrinfo` (curl/apt/cargo/git)
  through the DNS-capture forwarder via an `nsswitch.conf` reroute, so hosts
  resolved by systemd-resolved (which ignores `resolv.conf`) are now captured
  and named — not just `resolv.conf`/c-ares callers. Health-checked and restored
  on teardown. (A connection to a hard-coded IP with no PTR still shows the IP —
  there is no name to resolve.)
- More accurate "unresolved destination" note in the summary (a name may have
  been resolved outside the capture path, vs. a genuine raw-IP connection).
- **We dogfood our own action.** Every real-work job in this repo (CI, release,
  eBPF agent, FIM self-test) now runs Legion Runner as its first step (`@v1`,
  audit) — our CI is hardened by the product it ships.
- **Docs-only PRs skip the build/test matrix** (and the release it gates) via
  `paths-ignore`; a `docs-passthrough` workflow reports the same check names
  green so required checks stay satisfied and README edits stay mergeable
  without burning CI minutes.
- **Our CI now captures names.** The dogfooded harden steps run with
  `dns-capture: true` (still `audit` — monitor, don't firewall), so job summaries
  show real destination and package-repository names instead of bare IPs, and the
  capture path is exercised on every run. Safe now that `@v1` (>= 1.0.35) carries
  the teardown + systemd-resolved fixes.


