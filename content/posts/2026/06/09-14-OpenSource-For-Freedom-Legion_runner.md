---
title: Legion Harden Runner
date: 2026-06-09 14:50:14 +00:00
tags:
  - OpenSource-For-Freedom
  - GitHub Actions
draft: false
repo: https://github.com/OpenSource-For-Freedom/Legion_runner
marketplace: https://github.com/marketplace/actions/legion-harden-runner
version: v1.0.12
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/OpenSource-For-Freedom/Legion_runner** to version **v1.0.12**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/legion-harden-runner) to find the latest changes.

## What's Changed

### Added
- **Ephemeral runner control plane** (`legionr`): `provision`, `run`, `harden`,
  `pair`, `status`, `doctor`. Every job lands on a fresh, single-use runner that
  mints a JIT credential, runs one job, wipes its workspace, and self-destructs.
- **legionr-core**: GitHub JIT/registration API client, ephemeral lifecycle,
  systemd hardening-profile generator, rootless container sandbox backend, and a
  Legion desktop "link" that heartbeats lifecycle events.
- **Bash backbone**: `install.sh` (service user + official runner fetch) and
  `harden.sh` (systemd unit, sysctl drop-in, nftables default-deny egress).
- **Legion Harden Runner action**: dependency-free Node 20 action (main + post)
  that monitors outbound connections and prints them as a markdown table in the
  job summary, with reverse-DNS/DNS-capture naming, a learn→enforce baseline,
  and a `block` mode with dynamic allow-by-domain egress enforcement.
- **Release automation**: verify-then-tag workflow with SemVer auto-patch and a
  moving `v1` tag.

