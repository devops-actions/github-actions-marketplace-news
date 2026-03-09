---
title: Unpinched — PinchTab Detector
date: 2026-03-09 21:50:05 +00:00
tags:
  - Helixar-AI
  - GitHub Actions
draft: false
repo: https://github.com/Helixar-AI/Unpinched
marketplace: https://github.com/marketplace/actions/unpinched-pinchtab-detector
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Helixar-AI/Unpinched** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/unpinched-pinchtab-detector) to find the latest changes.

## Action Summary

The `pinchtab-detector` GitHub Action is a security scanning tool designed to detect the presence of PinchTab, a stealth browser hijacking framework that exploits Chrome DevTools Protocol for unauthorized access and control of browser sessions. It automates the identification of PinchTab-related artifacts, processes, ports, and persistence mechanisms across environments, helping users secure their systems against browser session takeovers, credential theft, and AI agent exploitation. This tool ensures proactive detection where traditional security measures like EDR and WAF may fail.

## Release notes

## What's new

First public release of `pinchtab-detector` by [Helixar Labs](https://helixar.ai/about/labs/).

A single-binary point-in-time scanner that detects PinchTab deployment and agentic browser bridge artifacts on a host — across macOS, Linux, and Windows.

## What it scans

- **Port scan** — PinchTab HTTP API on ports 8080–8090, 3000, 4000, 9222, 9229 with signature verification
- **Process scan** — Running `pinchtab`, `pinchtab-server`, or `browser-bridge` processes
- **CDP bridge** — Unauthenticated Chrome DevTools Protocol exposure on `:9222`
- **Filesystem** — Known PinchTab binary artifact paths

## Install

```bash
# macOS (Apple Silicon)
curl -sL https://github.com/Helixar-AI/Unpinched/releases/download/v0.1.0/pinchtab-detector_darwin_arm64.tar.gz | tar xz
./pinchtab-detector scan
```
Full install instructions → [README](https://github.com/Helixar-AI/Unpinched#install-cli)

GitHub Action
- uses: Helixar-AI/Unpinched@v0.1.0

This tool tells you if you've already been hit. For continuous agentic threat detection that stops PinchTab before it lands → [helixar.ai](https://helixar.ai/)
