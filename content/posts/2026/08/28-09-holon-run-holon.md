---
title: Holon Solve
date: 2026-08-28 09:35:40 +00:00
tags:
  - holon-run
  - GitHub Actions
draft: false
repo: https://github.com/holon-run/holon
marketplace: https://github.com/marketplace/actions/holon-solve
version: v0.33.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action provides a local workbench for agents to perform continuous work. It automates the process of setting up and managing an agent's workspace, organizing tasks, and handling events in a structured manner. The key capabilities include maintaining state across sessions, using explicit task models, and maintaining clear context boundaries between different types of inputs or outputs.
---


Version updated for **https://github.com/holon-run/holon** to version **v0.33.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/holon-solve) to find the latest changes.

## Action Summary

This GitHub Action provides a local workbench for agents to perform continuous work. It automates the process of setting up and managing an agent's workspace, organizing tasks, and handling events in a structured manner. The key capabilities include maintaining state across sessions, using explicit task models, and maintaining clear context boundaries between different types of inputs or outputs.

## What's Changed

## Runtime line

Holon v0.33.0 is part of the Rust runtime line. The Rust runtime is now the main `holon` binary.

This release adds the observer-sync foundation for resilient browser clients, first-class Ollama support, richer provider model discovery and reasoning controls, and stronger runtime lifecycle and recovery guarantees.

Supported binary assets for this release are Linux amd64, macOS amd64, and macOS arm64. The Linux amd64 binary supports Ubuntu 22.04 or newer (glibc 2.35 or newer).

## Changes

- Add the observer-sync contract and canonical per-agent projection pipeline, including durable event ingestion, roster snapshots, recovery boundaries, browser-local read state, multi-tab merging, and unread state ([#2617](https://github.com/holon-run/holon/pull/2617), [#2619](https://github.com/holon-run/holon/pull/2619), [#2623](https://github.com/holon-run/holon/pull/2623), [#2625](https://github.com/holon-run/holon/pull/2625), [#2626](https://github.com/holon-run/holon/pull/2626), [#2627](https://github.com/holon-run/holon/pull/2627), [#2628](https://github.com/holon-run/holon/pull/2628), [#2629](https://github.com/holon-run/holon/pull/2629), [#2630](https://github.com/holon-run/holon/pull/2630), [#2631](https://github.com/holon-run/holon/pull/2631), [#2634](https://github.com/holon-run/holon/pull/2634)).
- Harden browser synchronization with persisted payload validation, bounded replay and roster lookups, v3 session event support, scoped observed heads, and deterministic real-daemon Chromium coverage ([#2639](https://github.com/holon-run/holon/pull/2639), [#2652](https://github.com/holon-run/holon/pull/2652), [#2653](https://github.com/holon-run/holon/pull/2653), [#2658](https://github.com/holon-run/holon/pull/2658), [#2659](https://github.com/holon-run/holon/pull/2659), [#2661](https://github.com/holon-run/holon/pull/2661), [#2664](https://github.com/holon-run/holon/pull/2664), [#2665](https://github.com/holon-run/holon/pull/2665), [#2668](https://github.com/holon-run/holon/pull/2668), [#2669](https://github.com/holon-run/holon/pull/2669), [#2692](https://github.com/holon-run/holon/pull/2692)).
- Add read-only runtime database auditing and strengthen retention, verification-proof reuse, and runtime search indexing boundaries ([#2644](https://github.com/holon-run/holon/pull/2644), [#2650](https://github.com/holon-run/holon/pull/2650), [#2651](https://github.com/holon-run/holon/pull/2651), [#2656](https://github.com/holon-run/holon/pull/2656)).
- Make task, turn, WorkItem, and scheduler recovery transitions more robust, including terminal settlement, pending web-read retries, legacy WorkItem completion, execution-source recovery routing, and quarantine for unmatched task results ([#2624](https://github.com/holon-run/holon/pull/2624), [#2646](https://github.com/holon-run/holon/pull/2646), [#2682](https://github.com/holon-run/holon/pull/2682), [#2689](https://github.com/holon-run/holon/pull/2689), [#2691](https://github.com/holon-run/holon/pull/2691), [#2693](https://github.com/holon-run/holon/pull/2693)).
- Complete timer lifecycle surfaces and improve timer rendering in the operator timeline ([#2663](https://github.com/holon-run/holon/pull/2663), [#2683](https://github.com/holon-run/holon/pull/2683)).
- Add first-class Ollama provider support with credential-free Web GUI discovery and automatic vision-model discovery for `ViewImage` ([#2677](https://github.com/holon-run/holon/pull/2677), [#2679](https://github.com/holon-run/holon/pull/2679), [#2684](https://github.com/holon-run/holon/pull/2684)).
- Expand provider interoperability with default model discovery for custom OpenAI-compatible routes, per-route reasoning effort, preserved provider server-tool blocks, and new GLM-5.3 and Qwen 3.8 catalog entries ([#2640](https://github.com/holon-run/holon/pull/2640), [#2670](https://github.com/holon-run/holon/pull/2670), [#2673](https://github.com/holon-run/holon/pull/2673), [#2674](https://github.com/holon-run/holon/pull/2674), [#2696](https://github.com/holon-run/holon/pull/2696), [#2697](https://github.com/holon-run/holon/pull/2697)).

## Install

Homebrew:

```bash
brew tap holon-run/tap
brew install holon
```

Direct binary:

```bash
curl -L "https://github.com/holon-run/holon/releases/download/v0.33.0/holon-linux-amd64.tar.gz" | tar -xz
chmod +x holon
./holon --help
```

Replace `holon-linux-amd64.tar.gz` with `holon-darwin-amd64.tar.gz` or `holon-darwin-arm64.tar.gz` on macOS.

Docker:

```bash
docker pull ghcr.io/holon-run/holon:0.33.0
```

