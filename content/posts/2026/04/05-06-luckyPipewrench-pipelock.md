---
title: Pipelock Agent Security Scan
date: 2026-04-05 06:26:36 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source agent firewall and local runtime designed to secure AI agents by providing network scanning, process containment, and enforcement of tool usage policies in a single binary. It prevents sensitive data leaks, such as API keys, and mitigates malicious activity by intercepting and analyzing HTTP traffic, blocking unauthorized requests without requiring code changes to the agent. Pipelock supports various AI frameworks and offers flexible deployment options, including standalone binaries, Docker containers, and proxy modes.

## What's Changed

## Changelog
* ce7afb548c27fdda4e5f084d81031b525442d2a6 feat: ClusterFuzzLite integration and Hangul Filler normalization (#339)
* be844403db91f5aaf48c5c56a14a93808de07d0b fix: SSRF hex/octal IP decoding + separate subdomain entropy threshold (#336)
* 5b120112463122952205c98e2bbbb7e7a01a11f3 fix: SSRF trust gap for allowlisted domains resolving to internal IPs (#334)
* 0889578699a90a1369c3af5d2b6f8e60ff2b823b fix: harden MCP input DLP with new patterns and path coverage (#337)
* 94d99be71ed2cd920ef5b9ae46d6e548dcf92ca0 fix: harden chain detection and shell obfuscation coverage (#338)
* 6da4a85c907e4fda39dc89f2caf7d6dca4e01510 fix: recursive response decode + remove numbered comment lists (#344)
* c3d7bf499f1673c57ddda2ec1d95f3f60f33f8c3 fix: reject MCP batch requests at ingress (#335)
* 4c4a7cb621ae4b80dcc81a08616285ddefe6166d fix: widen DLP and tool scanner patterns for gauntlet coverage (#348)
* 208bedc68ae668d2f8b221d9be56758e15083733 fix: widen Tool Invocation pattern and add SYS closing tag to Instruction Boundary (#350)
* 7951e28a961df9ae52ab195f6a9757e68709278e refactor: BodyScanRequest struct, server timeout constants, token field docs (#345)
* e71b19dff8250de04c8504124200cce543cbf9d8 refactor: consolidate signal recording + split mcp/input.go (#346)
* 3f0911a30d49ed37190dc2a4de975685dd7fd592 refactor: extract LogContext and InterceptContext structs for audit + intercept pipelines (#340)
* e0b2b07dcd746a52a7d719d6e64597641e912451 refactor: extract relay and hop-by-hop helpers into relay.go (#347)


