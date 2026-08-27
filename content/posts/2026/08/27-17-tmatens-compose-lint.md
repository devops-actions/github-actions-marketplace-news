---
title: compose-lint
date: 2026-08-27 17:32:07 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.26.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action performs security-focused linting on Docker Compose files to identify and fix potential vulnerabilities such as privilege escalation, network exposure, supply chain issues, file and credential leaks. It automates the detection and correction of these problems before they reach production. The action is useful for ensuring that any real-world Docker Compose files are secure before deployment.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.26.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

This GitHub Action performs security-focused linting on Docker Compose files to identify and fix potential vulnerabilities such as privilege escalation, network exposure, supply chain issues, file and credential leaks. It automates the detection and correction of these problems before they reach production. The action is useful for ensuring that any real-world Docker Compose files are secure before deployment.

## What's Changed


### Added

- **`--explain` now pages through a pager on an interactive terminal**
  ([ADR-034](docs/adr/034-explain-pages-on-a-tty.md)). Rule docs have grown
  past 100 lines, so a terminal dump scrolled the directive and rationale
  out of view instantly. On a TTY the doc now goes through `less -RFX`
  (`PAGER` overrides the command; `--no-pager`, `NO_PAGER`, or `TERM=dumb`
  disables it; a missing pager binary — e.g. the distroless image under
  `docker run -t` — falls back to the plain dump). Piped, redirected, and
  CI output is byte-identical to before: paging engages only when stdout
  is a TTY. The default pager labels its controls in the status line
  (`CL-XXXX · Space next · b back · q quit`) instead of less's bare `:`,
  and a pager that exits nonzero (busybox `less` rejecting the flags)
  falls back to the plain dump rather than swallowing the doc.


