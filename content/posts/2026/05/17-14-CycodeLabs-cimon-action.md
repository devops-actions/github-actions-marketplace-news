---
title: Cimon by Cycode
date: 2026-05-17 14:05:56 +00:00
tags:
  - CycodeLabs
  - GitHub Actions
draft: false
repo: https://github.com/CycodeLabs/cimon-action
marketplace: https://github.com/marketplace/actions/cimon-by-cycode
version: v1.0.1
dependentsNumber: "49"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/CycodeLabs/cimon-action** to version **v1.0.1**.

- This action is used across all versions by **49** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cimon-by-cycode) to find the latest changes.

## Action Summary

Cimon is a GitHub Action that enhances CI pipeline security by detecting and mitigating software supply-chain attacks in real-time using eBPF technology. It automates the deployment of the Cimon agent to monitor and prevent malicious activity during builds, providing a robust defense against threats like SolarWinds and CodeCov. This action simplifies runtime security integration with minimal setup and supports both detection and prevention modes for adaptable protection.

## What's Changed

Follow-up to [v1.0.0](https://github.com/CycodeLabs/cimon-action/releases/tag/v1.0.0). The per-job install dir that landed in v1.0.0 made the binary unreachable for any verify step that hardcoded the pre-v1.0.0 path. This release surfaces the install location three ways so workflows don't have to reconstruct the tmpdir layout.

## What's in (#121)

After the action installs cimon, the install directory is added to `PATH`, the absolute path is exported as `CIMON_PATH`, and the same path is emitted as the `cimon-path` step output. Subsequent steps can pick whichever fits their pattern:

```yaml
- id: cimon
  uses: cycodelabs/cimon-action/attest@v1
  with: { subjects: dist\my-app.msi, keyless: true }

- name: Verify (PATH lookup)
  run: cimon.exe attest verify --subjects dist\my-app.msi --signed-prov provenance.intoto.jsonl.sig --keyless

- name: Verify (env var)
  run: '& $env:CIMON_PATH attest verify ...'

- name: Verify (step output)
  run: '& "${{ steps.cimon.outputs.cimon-path }}" attest verify ...'
```

Applies to all three install branches: Windows release-zip, Linux install.sh, and the release-path input override.

## Verified

verify-attest-windows end-to-end job on windows-latest exercises the new behavior and passes in ~21s.

## Notes

- No input changes, no breaking changes for existing @v1 consumers — workflows that didn't reach into $RUNNER_TEMP keep working unchanged.
- The hardcoded-path failure mode only affected explicit $RUNNER_TEMP\cimon\ references in verify steps; the action's own attest call continued to work in v1.0.0.
