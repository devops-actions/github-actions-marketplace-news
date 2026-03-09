---
title: IPC Benchmark Gate
date: 2026-03-09 05:57:10 +00:00
tags:
  - mgmacri
  - GitHub Actions
draft: false
repo: https://github.com/mgmacri/embedded-integration-benchmark-toolkit
marketplace: https://github.com/marketplace/actions/ipc-benchmark-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mgmacri/embedded-integration-benchmark-toolkit** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ipc-benchmark-gate) to find the latest changes.

## Action Summary

The Embedded Integration Benchmark Toolkit is a GitHub Action designed to help embedded Linux teams empirically evaluate whether an inter-process communication (IPC) layer is necessary for their systems or if simpler alternatives suffice. It automates benchmarking of four integration patterns—SQLite WAL mode, inotify sentinel files, Unix domain sockets, and shared memory—to provide data-driven insights on performance, latency, and reliability. This tool aids in making informed architectural decisions, ensuring any newly introduced IPC mechanisms are justified and undergo security reviews.

## Release notes

## Embedded Integration Benchmark Toolkit v1.0.0

Empirical benchmarks for embedded Linux IPC architecture decisions — measure before you commit to a pattern.

### Benchmarks

- **SQLite WAL contention** — C writer + Go reader, 6 scenarios (WAL vs rollback, 33–330 w/s, 1–3 concurrent readers), 10-minute sustained test
- **inotify sentinel files** — Go writer + C watcher, atomic rename delivery, dispatch/processing/pipeline latency
- **Unix domain sockets** — Go client + C server, identical payloads for direct comparison with inotify
- **Shared memory (mmap + FIFO)** — Go writer + C reader, ARMv7 memory barriers, sequence integrity tracking
- **inotify reliability** — 5 failure-mode scenarios: queue overflow, I/O storm, rapid overwrite, fsync race, tmpfs vs block device

### Tooling

- `bench` CLI — YAML-driven orchestration, schema introspection, runtime config bridge
- Verdict-first report generator with pass/fail scorecard and threshold gating
- **GitHub Action** — `uses: mgmacri/embedded-integration-benchmark-toolkit@v1`
- Docker cross-compilation (ARM Linux armv7l via `arm-linux-gnueabihf-gcc`)
- Deploy/collect scripts for target device workflow

### GitHub Action Usage

```yaml
- uses: mgmacri/embedded-integration-benchmark-toolkit@v1
  with:
    results: path/to/results/
    config: bench.yaml
    gate: 'true'
```

Outputs: `verdict` (pass/fail), `report-path`, `transports`, `transport-count`

See [CI-INTEGRATION.md](https://github.com/mgmacri/embedded-integration-benchmark-toolkit/blob/master/CI-INTEGRATION.md) for full documentation.
