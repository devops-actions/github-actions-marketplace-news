---
title: Runner Insight
date: 2026-04-25 13:23:33 +00:00
tags:
  - mqasimsarfraz
  - GitHub Actions
draft: false
repo: https://github.com/mqasimsarfraz/runner-insight
marketplace: https://github.com/marketplace/actions/runner-insight
version: v0.1.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mqasimsarfraz/runner-insight** to version **v0.1.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runner-insight) to find the latest changes.

## Action Summary

**Runner Insight** is a GitHub Action that monitors CI runners in real-time by leveraging Inspektor Gadget tools to trace system events and collect diagnostic data throughout the job's duration. It automates the detection of common CI issues such as DNS failures, network timeouts, OOM kills, and process errors, generating a comprehensive Job Summary report at the end. This action provides unobtrusive, customizable observability, aiding in debugging and resolving intermittent or hard-to-reproduce failures in CI workflows.

## What's Changed

## 🔍 Runner Insight

Run [Inspektor Gadget](https://github.com/inspektor-gadget/inspektor-gadget) eBPF gadgets on CI runners for the entire job duration and generate a Job Summary report.

### Usage

```yaml
- uses: mqasimsarfraz/setup-ig@v0
- uses: mqasimsarfraz/runner-insight@v0
  with:
    gadgets: |
      trace_dns --fields name,qtype,rcode,latency_ns
      trace_open --failed --fields fname,error
```

### Features
- Runs trace gadgets (`trace_*`, `top_*`) in the background for the entire job via `ig daemon` + `gadgetctl`
- Runs snapshot gadgets (`snapshot_*`) at cleanup for point-in-time state
- Uses the [logs operator](https://www.inspektor-gadget.io/docs/latest/reference/operators/logs) for reliable NDJSON event collection
- Generates a collapsible Job Summary report with event tables
- Supports all ig flags: `--fields`, `--filter`, `--sort`, `--failed`, etc.
- Three recommended configurations: Minimal, Recommended, and Full (Deep Debugging)
- Zero config needed beyond the gadget list

### Recommended Configurations

See the [README](https://github.com/mqasimsarfraz/runner-insight#recommended-configurations) for ready-to-use configs mapping common CI issues (DNS failures, OOM kills, network timeouts) to specific gadgets.

### Requirements
- Linux runners with sudo access (GitHub-hosted Ubuntu runners work out of the box)
- `ig` and `gadgetctl` installed via [setup-ig](https://github.com/mqasimsarfraz/setup-ig)

