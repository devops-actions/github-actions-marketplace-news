---
title: Install bashunit
date: 2026-08-22 21:52:07 +00:00
tags:
  - TypedDevs
  - GitHub Actions
draft: false
repo: https://github.com/TypedDevs/bashunit
marketplace: https://github.com/marketplace/actions/install-bashunit
version: 0.50.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The action automates running unit tests and static analysis for bash scripts using BashUnit, a lightweight testing framework. It focuses on developer experience by providing 93 assertions, spies, mocks, data providers, snapshots, and more. The action simplifies the process of writing and running tests in bash projects.
---


Version updated for **https://github.com/TypedDevs/bashunit** to version **0.50.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/install-bashunit) to find the latest changes.

## Action Summary

The action automates running unit tests and static analysis for bash scripts using BashUnit, a lightweight testing framework. It focuses on developer experience by providing 93 assertions, spies, mocks, data providers, snapshots, and more. The action simplifies the process of writing and running tests in bash projects.

## What's Changed


## 🐛 Bug Fixes
- `tear_down_after_script` runs when `set_up_before_script` fails, so it can release file-scoped resources acquired before the failure (#1318)
- Under `--parallel`, `tear_down_after_script` runs after the file's own tests instead of alongside them, so a fixture it releases stays alive for the tests that read it. The same file no longer passed sequentially and failed in parallel (#1320)
- `--stop-on-failure` runs `tear_down_after_script` for the file it halts in, so a sequential run releases what `set_up_before_script` acquired before the halt (#1321)
- `bashunit bench` runs `tear_down_after_script` before it aborts on a malformed annotation, so the file releases what `set_up_before_script` acquired (#1322)
- Ctrl-C runs `tear_down_after_script` for the file it interrupts in a sequential run, so a file-scoped resource is released. A second Ctrl-C now ends the run even if that hook never returns (#1323)
- A test killed by `--test-timeout` runs its `tear_down`, so a per-test resource is released. Best effort within the watchdog's grace before it sends SIGKILL, so a hook cannot outlive the timeout it cleans up after (#1324)
- A test file that fails to source sweeps its script temp files, so a `bashunit::temp_file` it created at top level no longer survives the run. `bashunit bench` already did this (#1325)
- A malformed `@timeout` or `@retry` runs `tear_down_after_script` before it aborts the run, so the file releases what `set_up_before_script` acquired. Sequential and `--parallel` both leaked it (#1329)
- Ctrl-C releases what an interrupted `--parallel` run acquired: the file's `tear_down_after_script` and the `tear_down` of a test in flight. The worker that owns the file's hook now handles the signal and reaches its test bodies, which a kill from the parent could not (#1331)
- A malformed `@timeout` or `@retry` fails a `--parallel` run alongside a passing file. The abort happened inside the file's worker and never reached the parent, so the run printed the error and still exited 0, which kept it out of CI (#1335)


## 👥 Contributors
- @aditya226-sharma
- @Chemaclass

## Checksum
SHA256: `18d83d590c5304f1853dd4fe4fec4ec6effbd9fe5a21831fe9f66f70afe17d93`

**Full Changelog:** [0.50.0...0.50.1](https://github.com/TypedDevs/bashunit/compare/0.50.0...0.50.1)

