---
title: Rsync Deployments Action
date: 2025-12-06 21:01:05 +00:00
tags:
  - Burnett01
  - GitHub Actions
draft: false
repo: https://github.com/Burnett01/rsync-deployments
marketplace: https://github.com/marketplace/actions/rsync-deployments-action
version: v8
dependentsNumber: "4,974"
---


Version updated for **https://github.com/Burnett01/rsync-deployments** to version **v8**.
- This action is used across all versions by **4,974** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rsync-deployments-action) to find the latest changes.

## Release notes

![v8-release-banner](https://private-user-images.githubusercontent.com/1208707/523360756-2a4c5eb3-16ba-4822-b89b-67e65225dd1b.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NjUwNTExNjAsIm5iZiI6MTc2NTA1MDg2MCwicGF0aCI6Ii8xMjA4NzA3LzUyMzM2MDc1Ni0yYTRjNWViMy0xNmJhLTQ4MjItYjg5Yi02N2U2NTIyNWRkMWIucG5nP1gtQW16LUFsZ29yaXRobT1BV1M0LUhNQUMtU0hBMjU2JlgtQW16LUNyZWRlbnRpYWw9QUtJQVZDT0RZTFNBNTNQUUs0WkElMkYyMDI1MTIwNiUyRnVzLWVhc3QtMSUyRnMzJTJGYXdzNF9yZXF1ZXN0JlgtQW16LURhdGU9MjAyNTEyMDZUMTk1NDIwWiZYLUFtei1FeHBpcmVzPTMwMCZYLUFtei1TaWduYXR1cmU9MjY2NDgxMDAyYTlhM2U4MWE1ODQwYmQ4Y2M3M2Y3ZDAzYzEyNjc1NDE5NTM5ZTUwZWYzZjkzYjU3MTkzZDg0NiZYLUFtei1TaWduZWRIZWFkZXJzPWhvc3QifQ.iT3YcIsDsRMmcheImxH_o2UCwb08DEoh-pI6ah91Vv8)

## What's Changed

Version v8 (8.0.0) offers the following features:

- feat: latest Alpine 3.23.0
- feat: latest Rsync 3.4.1-r1
- feat: integrate [rsync-docker](https://github.com/JoshPiper/rsync-docker/) 3rd party into this action as 1st party code (no more dependency, better audit, single source of truth)
   - backported:
       - agent-start
       - agent-stop
       - agent-askpass
       - agent-add
       - hosts-add
       - hosts-clear
   - new added: 
       - ssh-init
       - hosts-init
   - improved: 
     - stricter permissions on .ssh/ folder (700) and known_hosts (600)
     - use set -eu in all scipts
- feat: new ``strict_host_keys`` option to enable support for strict host key verification. Default: false (to keep backward compatibility)
- feat: new ``debug`` option to see the commands executed (-x) by this action
- feat: this action is now scanned for vulnerabilities by Snyk
- feat; this action is now scanned by CodeQL for Q/A
- feat: this action now performs CI tasks such as Validation, Linting and Unit Tests
- fix: various shell syntax for robustness
- fix: use printf and redirect output to non-stdout instead of echo in sensitive code locations
- refactor: use $HOME instead of tilde ~ for robustness
- feat: cross-platform support
- chore: Deprecate 7.0.2
- chore: EOL 7.0.0 & 7.0.1

## New release channels:

From now on you can use ``@v8`` instead of manually pinning to a version like ``8.0.0``.

The benefit of using ``v8`` is that you will receive future MINOR+PATCH updates automatically, since ``v8`` is a pointer to ``8.x.x``.

However, of course you are free to use the regular format like ``8.0.0`` directly.


**Full Changelog**: https://github.com/Burnett01/rsync-deployments/compare/7.1.0...8.0.0
