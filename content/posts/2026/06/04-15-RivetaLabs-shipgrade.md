---
title: shipgrade
date: 2026-06-04 15:09:28 +00:00
tags:
  - RivetaLabs
  - GitHub Actions
draft: false
repo: https://github.com/RivetaLabs/shipgrade
marketplace: https://github.com/marketplace/actions/shipgrade
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/RivetaLabs/shipgrade** to version **v0.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipgrade) to find the latest changes.

## What's Changed

This release prepares shipgrade for the GitHub Marketplace and adds the first real-world proof gallery. No new probe, OWASP category, or rule pack; the v1 scope is unchanged. shipgrade is an automated heuristic audit, not a certification, a security guarantee, or a legal or compliance sign-off.

**What changed**

- The bundled GitHub Action is now drop-in. It installs `uv` for you, so a consumer workflow needs only `actions/checkout`. Pinning the action at a ref now also pins the shipgrade release, because the scan step pins the package to this version.
- New paste-ready `## Use in CI` section in the README, with the minimal workflow and the permissions it needs.
- An OpenSSF Scorecard workflow and badge report the repo's supply-chain posture.
- A real-world proof gallery under `examples/real-world/` grades three regulated-domain assistant prompts and shows the findings shipgrade emits.
- The rendered tool version now matches the package version everywhere.
- PyPI discovery keywords broadened with `owasp` and `compliance`.

**Install**

```text
uvx shipgrade demo
pipx install shipgrade
```

Requires Python 3.11 or newer.
