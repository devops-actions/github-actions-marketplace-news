---
title: sec-recon SBOM gate
date: 2026-07-11 22:20:08 +00:00
tags:
  - Shurtug4l
  - GitHub Actions
draft: false
repo: https://github.com/Shurtug4l/sec-recon-agent
marketplace: https://github.com/marketplace/actions/sec-recon-sbom-gate
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Shurtug4l/sec-recon-agent** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sec-recon-sbom-gate) to find the latest changes.

## What's Changed

Publishes the **sec-recon SBOM gate** to the GitHub Marketplace.

No behavioural change to the gate since `v0.1.0`. This release trims the `action.yml` description under the Marketplace 125-character limit and folds in the dependency-lockfile security patches (`aiohttp`, `cryptography`, `joserfc`, `pyjwt`, `python-multipart`, `starlette`, `pydantic-ai`, `js-yaml`).

## Usage

```yaml
- uses: Shurtug4l/sec-recon-agent@v0.1.1
  with:
    sbom-path: sbom.cdx.json      # CycloneDX / SPDX JSON or requirements.txt
    fail-on: act                  # act | attend | track-star | never
    github-token: ${{ github.token }}   # optional; omit = degraded, not silent
```

Deterministic and LLM-free: OSV.dev advisories enriched with CISA KEV, FIRST EPSS and public-exploit signals, prioritised with SSVC, rendered to SARIF 2.1.0 and OpenVEX v0.2.0. The exit code is the CI contract.
