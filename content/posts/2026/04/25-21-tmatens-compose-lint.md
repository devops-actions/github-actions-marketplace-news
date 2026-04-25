---
title: compose-lint
date: 2026-04-25 21:28:24 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.5.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.5.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

**compose-lint** is a security-focused linter for Docker Compose files, designed to identify and prevent dangerous misconfigurations before deployment. It automates the process of validating Compose files against industry best practices, such as OWASP and CIS standards, offering a fast, zero-configuration, and opinionated solution. Key capabilities include automated detection of common security risks and compatibility with tools like Docker Scout, Trivy, and Grype for vulnerability scanning.

## What's Changed


### Fixed

- **CL-0009** now detects SELinux disabled via `security_opt:
  [label:disable]`. The rule's description and references promised
  SELinux coverage but the implementation only checked seccomp and
  AppArmor — `label:disable` turns off SELinux type enforcement for
  the container and was silently ignored. Description updated to
  reflect actual coverage; messages now read "SELinux" rather than
  "label profile". `label:user:...`, `label:type:...`, `label:role:...`
  and `label:level:...` overrides remain unflagged since they
  reconfigure rather than disable confinement.
- **CL-0004** and **CL-0019** now parse OCI image references via a
  shared `split_image_ref` helper that recognizes `registry:port/name`
  prefixes. The previous naive `image.rsplit(":", 1)` mistook the
  registry port for a tag separator, causing two related bugs:
  (a) `localhost:5000/foo` was treated as tag-pinned by CL-0004, so
  the "no tag, defaults to :latest" finding never fired; and
  (b) CL-0019 fired on the same input with a misleading message
  ("pinned to a tag but not a digest") for an image that had no tag at
  all. Verified for `localhost:5000/foo`, `localhost:5000/foo:latest`,
  `localhost:5000/foo:v1`, and digest variants of each.
- **CL-0005** now detects IPv6 wildcard binds in short syntax
  (`"[::]:8080:80"`) — the previous regex's IP capture group rejected
  any colon-containing prefix, causing the rule to silently skip the
  port. Bracketed IPv6 prefixes are now stripped before the main pattern
  runs.
- **CL-0005** now detects explicit wildcard `host_ip` values in long
  syntax (`host_ip: "0.0.0.0"`, `host_ip: "::"`). The previous
  implementation treated *any* non-empty `host_ip` as a real bind, so
  operators who explicitly wildcarded their long-syntax bind got no
  warning. Loopback (`127.0.0.1`, `::1`) and specific addresses still
  suppress the finding.
- **CL-0005** also detects IPv4 wildcard short syntax (`"0.0.0.0:8080:80"`)
  — incidental fix; the previous `_is_ip_address` helper accepted
  `0.0.0.0` as a "real" IP and suppressed the finding.
- **CL-0013** now detects mounting the entire host root filesystem
  (`"/:/host"`, `"/:/host:ro"`) at CRITICAL severity — previously the
  short-syntax regex required at least one non-colon character after `/`
  and silently skipped the most dangerous bind possible.
- **CL-0013** now detects long-syntax binds where `source:` is an absolute
  path even when `type: bind` is omitted. Compose infers bind mounts from
  absolute-path sources, but the rule previously gated on `type` and missed
  this realistic configuration.
- **CL-0013** sensitive-paths list extended with `/var/lib/docker`,
  `/var/run`, and `/home`. The existing `/root` entry already covered
  `/root/.ssh` and `/root/.aws` via subpath matching.
- **CL-0011** now flags `cap_add: [ALL]` (and lowercase `[all]`) at
  CRITICAL severity. Granting all Linux capabilities is functionally
  equivalent to `--privileged` for capability isolation, but the rule
  previously only knew the seven named caps and silently ignored the
  catch-all. Named caps (`SYS_ADMIN`, `NET_ADMIN`, etc.) continue to
  fire at HIGH; the rule now emits per-finding severity so `--fail-on`
  thresholds against the named caps are unchanged.
- **CL-0015** now flags `test: ["NONE"]` and the string form
  `test: NONE`, the idiomatic way to disable a healthcheck inherited
  from a base image. Lowercase `["none"]` deliberately does not fire
  — Docker's runtime treats only uppercase `NONE` as the disable
  sentinel; lowercase is executed as a command and is a different
  problem (a broken healthcheck, not a disabled one). Severity stays
  at LOW.
- **CL-0018** now detects the cross-spec root forms `root:0`, `0:root`,
  `root:1000`, and `0:1000` by parsing `user:` rather than matching a
  fixed allowlist. The previous `{"root", "0", "root:root", "0:0"}`
  set silently passed any value where a non-root group was paired with
  a root user, even though the container still runs as UID 0. The
  inverse (`user: "1000:0"` — non-root UID with root group) correctly
  does not fire.
- OpenVEX product identifier in `.vex/compose-lint.openvex.json` now uses
  `repository_url=index.docker.io/composelint/compose-lint`. The previous
  `docker.io/...` form loaded successfully but matched zero scanned
  images: Trivy, Grype (per anchore/grype#2818), and Scout all canonicalise
  Docker Hub to `index.docker.io` for VEX product matching. Confirmed
  locally with Trivy 0.70.0 against the published image.
- Every VEX statement now ships two `products[]` entries —
  `pkg:oci/compose-lint?repository_url=index.docker.io/composelint/compose-lint`
  for Trivy and Grype, plus a bare `pkg:docker/composelint/compose-lint`
  for Docker Scout, whose own "Create exceptions" docs example uses the
  `pkg:docker/` form. Trivy honoured the single-PURL form from PR #143
  but Scout did not — verified empirically on commit `5abd036`'s
  `scout-scan.yml` dispatch where `Loaded 1 VEX document` was followed
  by all three pip CVEs still flagged. OpenVEX explicitly invites
  multi-identifier products for exactly this scanner-disagreement case.
- Every `docker/scout-action` step that passes `vex-location` now passes
  `vex-author: .*`. Scout's default `--vex-author` allowlist is
  `<.*@docker.com>` and silently drops statements signed outside that
  pattern. PR #143's first override (`<.*@gmail\.com>`) was also
  silently dropped — Scout appears to use full-string regex match on
  the author field rather than substring, so the bracket-anchored shape
  did not match the full author string `Todd Matens <tmatens@gmail.com>`.
  `.*` accepts any author and is safe because the document is also
  cosign-attested to the image manifest. Applied to both `scout-scan.yml`
  steps and the `docker-smoke` Scout step in `publish.yml`.

### Added

- VEX statement covering CVE-2026-3219 (pip 25.1.1 — incorrect file
  installation due to improper archive handling). Same
  `vulnerable_code_not_present` mitigation as the existing pip CVEs:
  pip's runtime code is removed from the container image during build,
  only `.dist-info` metadata remains for SCA scanner identification.

### Changed

- VEX document `version` bumped to 3 and `timestamp` refreshed. See
  ADR-012 (`docs/adr/012-vex-product-identifier.md`) for the full
  rationale on the product-identifier and author-allowlist decisions,
  including the empirical evidence from PR #143's first attempt.

### Security

- CI `pip-audit` step ignores `CVE-2026-3219` (pip 26.0.1) until pip
  26.0.2+ ships on PyPI and the dev lockfile is regenerated. pip is a
  dev-only transitive of `pip-audit` here — it is not in
  `requirements.lock` and is stripped from the runtime container image
  (only `.dist-info` metadata is kept for SCA attribution). The same
  CVE is declared `not_affected` against the published image via the
  OpenVEX document on the same `vulnerable_code_not_present` grounds
  as the existing pip CVEs.


