---
title: vens-action
date: 2026-06-16 23:21:28 +00:00
tags:
  - venslabs
  - GitHub Actions
draft: false
repo: https://github.com/venslabs/vens-action
marketplace: https://github.com/marketplace/actions/vens-action
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/venslabs/vens-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vens-action) to find the latest changes.

## What's Changed

Adds opt-in CDXA attestation output. Nothing changes for existing workflows.

## What's new

- New `attest` input (default `false`). Set it to `true` and the action passes `--attest` to vens, which writes a CDXA attestation file next to the VEX (`<vex>.attestation.cdx.json`). It carries the evidence behind each score: model, seed, prompt/input/config hashes, and the raw LLM response.
- New `attestation-file` output that points at it. Empty when `attest` is off, or when the scan finds no vulnerabilities (nothing to attest).

## Upgrade

Drop-in. Leave `attest` unset and v0.1.0 behavior is unchanged. To get the attestation, set `attest: 'true'` and read `steps.<id>.outputs.attestation-file`.

## Thanks

Built on `venslabs/vens`. See upstream for the attestation format and config schema.
