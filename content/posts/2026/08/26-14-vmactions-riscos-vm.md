---
title: RISCOS-vm
date: 2026-08-26 14:39:12 +00:00
tags:
  - vmactions
  - GitHub Actions
draft: false
repo: https://github.com/vmactions/riscos-vm
marketplace: https://github.com/marketplace/actions/riscos-vm
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates CI testing on RISCOS using AnyVM.org's VMs. It simplifies setup by handling common configurations and integrates with AI-powered automation through the vmactions-ci skill. The action supports running tests on RISC OS but is limited to x86_64 Linux hosts and requires a patched QEMU emulator for Raspberry Pi-specific functionality.
---


Version updated for **https://github.com/vmactions/riscos-vm** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/riscos-vm) to find the latest changes.

## Action Summary

This GitHub Action automates CI testing on RISCOS using AnyVM.org's VMs. It simplifies setup by handling common configurations and integrates with AI-powered automation through the vmactions-ci skill. The action supports running tests on RISC OS but is limited to x86_64 Linux hosts and requires a patched QEMU emulator for Raspberry Pi-specific functionality.

## What's Changed

## Binary folder sync no longer depends on luck

The runtime moves to anyvm v0.6.5 (from v0.6.0), and the fix that
matters here is v0.6.4's. The telnet reader dropped half of an escaped
0xFF whenever the two-byte IAC escape straddled a recv boundary, so any
binary payload could come back the right size with the wrong contents --
and it was this guest that exposed it, returning 201 base64 files
byte-perfect while corrupting the 400 KB random blob sitting next to
them. Incomplete escape sequences are now held for the next chunk,
proven by cutting the stream between every escape pair.

v0.6.2 also gave the copy-back real timeout budgets -- 900 s to the
first byte, because the guest walks the whole tree before it writes
anything, then 600 s between bytes -- instead of one flat 120 s window
that a large workspace could blow past.

The guest CI payload grew from one file to 200 files plus a 0.4 MB
blob, checksummed on the way back, so a regression of this shape cannot
ship unseen again.

**Full Changelog**: https://github.com/vmactions/riscos-vm/compare/v1.0.0...v1.0.1

