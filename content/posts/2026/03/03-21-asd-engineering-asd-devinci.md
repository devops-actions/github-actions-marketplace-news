---
title: ASD DevInCi
date: 2026-03-03 21:29:37 +00:00
tags:
  - asd-engineering
  - GitHub Actions
draft: false
repo: https://github.com/asd-engineering/asd-devinci
marketplace: https://github.com/marketplace/actions/asd-devinci
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asd-engineering/asd-devinci** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/asd-devinci) to find the latest changes.

## Action Summary

DevInCi is a GitHub Action that provides a fully functional development environment within CI/CD runners, enabling users to access a web-based terminal, VS Code IDE, cloud tunnels, and the full ASD CLI without requiring SSH keys. It simplifies remote debugging, testing, and development tasks by creating instant, secure, and authenticated access to CI environments through a generated URL. Key capabilities include cross-platform compatibility, multiple authentication modes, and automatic server discovery for quick and seamless setup.

## Release notes

Full development environment inside GitHub Actions runners — web terminal, VS Code, and cloud tunnels. Click a URL to
  connect. No SSH keys required.

  ## Highlights

  - **Web Terminal (ttyd)** — full terminal in your browser
  - **VS Code (code-server)** — full IDE in your browser
  - **One-click access** — public HTTPS URL with embedded credentials
  - **Three auth modes** — API key, pre-existing credentials, or zero-config ephemeral
  - **Auto server discovery** — tunnel host, port, and ownership resolved from API
  - **Cross-platform** — Linux, macOS, and Windows runners

  ## Quick Start

  ```yaml
  - uses: asd-engineering/asd-devinci@v1
    with:
      api-key: ${{ secrets.ASD_API_KEY }}
      tunnel-name: debug-${{ github.run_id }}
```
  Use Cases

  - Debug failing CI — drop into the exact runner where tests broke
  - Ephemeral dev environments — spin up a cloud workspace on demand
  - Pair programming — share a live URL with a colleague

  Links

  - https://asd.host/docs
  - https://asd.host/workspace/api-keys
