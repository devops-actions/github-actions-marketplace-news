---
title: compose-lint
date: 2026-05-26 06:25:24 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.12.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.12.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files, designed to detect and prevent misconfigurations such as privilege escalation, unpinned images, network vulnerabilities, and sensitive data leaks. It automates security checks during CI/CD pipelines to catch issues early and ensure compliance with best practices from OWASP and the CIS Docker Benchmark. This action provides fast, zero-configuration static analysis to enhance the security and reliability of Docker Compose deployments.

## What's Changed


### Changed

- CL-0022 is reworked. As shipped in 0.12.0 it flagged tmpfs entries *missing*
  `noexec`/`nosuid`/`nodev` — but Docker mounts every tmpfs with all three by
  default (verified across the short, list, and long forms, and with `size=`
  set), so the old rule fired on already-secure configs and missed the real
  weakening. It now flags the *presence* of `exec`, `suid`, or `dev`, which
  explicitly remove those defaults, at LOW (was MEDIUM). A plain `tmpfs: [/tmp]`
  is no longer flagged; `tmpfs: [/tmp:exec]` is. The auto-fix is dropped — the
  option is set deliberately, so reverting is left to manual review.

- CL-0012's message no longer asserts a container can "create unlimited
  processes" and fork-bomb the host. A container's `pids.max` is bounded by the
  cgroup hierarchy (often a high parent cap, occasionally unbounded), so the
  finding now says the limit is left to whatever that hierarchy allows. The rule
  is unchanged — it still flags an explicit `pids_limit` of 0 or negative.

### Removed

- CL-0023 (dangerous network sysctls), shipped in 0.12.0, is removed. Verified
  against real Docker, its premise did not hold: `net.ipv4.ip_forward` and
  `net.ipv4.conf.all.send_redirects` are already `1` by default in every
  container (so flagging them flagged the platform default), and Docker rejects
  `net.*` sysctls under host networking — so the rule's "acute under host
  networking" case is a configuration Docker refuses to start. Hit rate was 0%
  across the corpus. Pre-1.0, the `CL-0023` id is freed and may be reassigned to
  a future rule. The remaining net.* deviations (`accept_source_route`,
  `accept_redirects`, IPv6 forwarding) are too niche and weakly grounded to
  carry a rule on their own.


