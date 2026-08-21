---
title: Advisory lock service for CI/CD pipelines
date: 2026-08-21 06:36:33 +00:00
tags:
  - releasetools
  - GitHub Actions
draft: false
repo: https://github.com/releasetools/mutex
marketplace: https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines
version: v1.4.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action ensures that only one CI job at a time can access a shared resource by using advisory locks in a PostgreSQL table. It helps prevent race conditions and ensures proper synchronization of workflows working on the same environment. The action also provides features like commenting on pull requests, posting to Slack, and an agent plugin for coding agents holding locks around work they guard.
---


Version updated for **https://github.com/releasetools/mutex** to version **v1.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advisory-lock-service-for-ci-cd-pipelines) to find the latest changes.

## Action Summary

This GitHub Action ensures that only one CI job at a time can access a shared resource by using advisory locks in a PostgreSQL table. It helps prevent race conditions and ensures proper synchronization of workflows working on the same environment. The action also provides features like commenting on pull requests, posting to Slack, and an agent plugin for coding agents holding locks around work they guard.

## What's Changed

- The `enabled` profile setting is now named `default`; existing `profiles.toml` files need the rename. A profile with `default = false` is still selectable with `--profile`.
- Added an agent plugin. Ask a coding agent to guard some work and it takes a mutex lock around it, gives the lock back when the work is done, and warns you before the lease runs out; `/mutex:lock`, `/mutex:unlock` and four more appear in the slash menu. Claude Code and Codex install it from the `releasetools` marketplace at [releasetools/agent-plugins](https://github.com/releasetools/agent-plugins); Hermes, Gemini and Antigravity copy the skill, which ships in the CLI package so a global npm installation has a copy to install from. See [Agent plugin](./README.md#agent-plugin).
- `mutex list` now takes `--owner`, and reads `$MUTEX_OWNER` when the flag is left off, so asking what one owner holds no longer means fetching every lock in the table and filtering them locally. See [Ownership](./README.md#ownership).
- `mutex server status` now prints the running server's version, and names this one alongside when the two differ. A server keeps running the code it started with; until now the only hint of an old one was a protocol number.
- The mutex server's protocol version is now 2. A server left running across the upgrade refuses lock commands with an error that names the mismatch, until it is restarted with `mutex server stop && mutex server start`; stopping and inspecting a server work no matter which version it speaks, so the restart that fixes this never needs `kill` or a pid file.
- `/mutex:status` now asks the lock table for this session's own locks instead of fetching every lock and splitting the list locally; the helper's `--all` still shows what everybody else is holding.
- Connection strings that say `sslmode=require`, `prefer`, `verify-ca` or `allow` keep checking the server's certificate chain and hostname, and node-postgres' SSL deprecation warning no longer prints on every command. Upgrading to pg v9 can no longer weaken them without saying so. See [What `sslmode` means here](./README.md#what-sslmode-means-here).
- mutex now warns when it connects without TLS to anything but a local database, instead of sending the password and every lock in the clear silently.
- A failed TLS handshake now names the setting that most likely caused it, instead of leaving a certificate error or a closed socket to explain itself.
- The mutex server now keeps one database connection open instead of letting it lapse after ten seconds idle. A lock asked for minutes after the last one no longer pays for a fresh handshake, which was about 180 ms per request against a hosted database.
- The mutex server now starts TLS directly whenever the connection is encrypted, without being asked to, and falls back for good after the first refusal. Against PostgreSQL 16 or older that costs one failed connection at startup and nothing afterwards.
- An `sslnegotiation` in the connection string that is neither `postgres` nor `direct` now gets an error naming it, instead of being silently ignored.
- Profiles accept `ssl_negotiation = "direct"`, which removes a round trip from the TLS handshake and needs PostgreSQL 17 or newer. The saved round trip measured 26.5 ms per connection against a hosted database, and there is a benchmark runner to measure your own.
- Documented a mise installation that starts from nothing: one command installs the Node runtime mutex needs and approves the package while it is still below mise's download-count threshold, instead of assuming Node is already there.
- Every release now installs the exact npm package it just published, through an isolated mise-managed Node runtime, so a broken mise installation fails the release that shipped it.
- Pooled CLI commands now start without loading the PostgreSQL client or the mutex server lifecycle code, which cuts the fixed cost of every short-lived command: remote server status measured 81.5 ms, against 316.6 ms for direct access.
- Lock, unlock, and renew now normally finish in one PostgreSQL round trip, with ownership, expiry, and fencing behaving exactly as before; a remote pooled lock/unlock cycle measured 166.7 ms, down from 369.7 ms.
- Added a reusable direct-versus-server benchmark runner that writes its results outside the repository by default.

