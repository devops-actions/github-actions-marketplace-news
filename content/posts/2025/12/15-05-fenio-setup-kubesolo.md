---
title: Setup KubeSolo
date: 2025-12-15 05:37:16 +00:00
tags:
  - fenio
  - GitHub Actions
draft: false
repo: https://github.com/fenio/setup-kubesolo
marketplace: https://github.com/marketplace/actions/setup-kubesolo
version: v5.0.2
dependentsNumber: "1"
---


Version updated for **https://github.com/fenio/setup-kubesolo** to version **v5.0.2**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-kubesolo) to find the latest changes.

## Release notes

## What's Changed

- docs: update README with dns-readiness input, fix timeout default, update to v5 (e34d51e)
- fix: use pod name pattern for CoreDNS detection in KubeSolo (e305b87)
- feat: add dns-readiness input to verify DNS resolution during setup (5849610)
- ci: add CoreDNS readiness check before DNS tests (ffa9f9b)
- chore: unify CI and release workflows across setup-* repos (ad0832a)
- fix: use nuclear iptables flush for reliable cleanup (2e1dfd2)
- refactor: dynamically remove all Docker iptables rules and chains (56e1f91)
- debug: add iptables state check after KubeSolo installation (71d49fb)
- debug: add iptables state check before cleanup (f2ec5ba)
- move container runtime cleanup into setup.sh for automatic handling (e31c4a4)
- fix: add retry loop for DNS test (b5a7b8a)
- fix: add back socket and data directory removal (c1f819b)
- refactor: clean up CI workflow - rename binaries instead of apt purge, remove debug steps (dc2be66)
- fix: use targeted Docker iptables cleanup instead of nuclear option (defafa0)
- fix: flush all iptables rules (nuclear option) and add pre-install debug step (0ed220a)
- fix: remove docker0 interface and flush iptables rules before KubeSolo install (63b85b9)
- test: add network debugging (services, endpoints, interfaces, routes, iptables) (79e2f56)
- test: show full dpkg -l, ps aux, and find /var/run output (e040194)
- test: add debug steps to inspect system state (00e3988)
- test: add back connectivity tests (ac4d5dd)
- test: also remove Docker socket (dcdfe87)
- test: remove Docker before running KubeSolo installer (cd7462f)
- test: run official KubeSolo installer to see what it does (e05a51e)
- stop Docker/containerd before KubeSolo setup (365c019)
- check for conflicting container engines before setup (9ce660c)
- fix: wait for CoreDNS before running DNS connectivity test (6ff0c67)
- Add internet connectivity test to CI workflow (0122306)
- chore: bump actions/checkout to v6 (d625970)
- chore: further unify coding style with other setup-* actions (cb88f77)
- chore: unify coding style with other setup-* actions (b72ef00)
**Full Changelog**: https://github.com/fenio/setup-kubesolo/compare/v5.0.1...v5.0.2

