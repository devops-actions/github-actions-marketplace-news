---
title: Nix Distributed Builder Setup
date: 2026-03-25 22:17:21 +00:00
tags:
  - Misaka13514
  - GitHub Actions
draft: false
repo: https://github.com/Misaka13514/setup-distributed-nix-builds
marketplace: https://github.com/marketplace/actions/nix-distributed-builder-setup
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Misaka13514/setup-distributed-nix-builds** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nix-distributed-builder-setup) to find the latest changes.

## Action Summary

This GitHub Action automates the setup of a distributed Nix build cluster using ephemeral GitHub-hosted runners securely connected via Tailscale. It enables seamless horizontal scaling for parallel builds across multiple platforms and architectures (e.g., Linux and macOS), optimizing performance and simplifying remote builder configuration without requiring external infrastructure. Key features include automatic node provisioning, built-in caching, maximum disk space utilization, and graceful teardown of build resources.

## Release notes

This release focuses on resolving severe CPU bottlenecks on the Coordinator runner, significantly improving the network transfer speeds between the Coordinator and Remote Builders, and introducing a command for better runner lifecycle management.

### ⚡ Transport Layer Optimizations (Resolving Coordinator Bottlenecks)

In previous versions, we observed that while remote builders finished compiling quickly, the final step of copying the Nix closures back to the Coordinator was abnormally slow. Our profiling (`dstat` and `pidstat`) revealed that the standard 4-core GitHub Hosted Runner acting as the Coordinator was hitting a severe CPU bottleneck, which restricted the entire pipeline. 

This was caused by two overlapping mechanisms:

1. **Double Encryption:** Tailscale inherently encrypts all mesh traffic using WireGuard (ChaCha20-Poly1305). Running standard SSH on top of Tailscale meant the Coordinator's CPU was encrypting and decrypting data *twice* in software. 
   * **The Fix:** We now explicitly force SSH to use `Ciphers aes128-gcm@openssh.com`. This offloads the SSH encryption layer to the CPU's hardware-accelerated AES-NI instructions, freeing up the general ALU to handle Tailscale's WireGuard encryption without choking.
2. **Double Compression:** Both SSH (via `-C`) and Nix attempt to compress data over the wire. In a cloud environment where intra-region bandwidth is extremely high (often >3 Gbps on Azure), compressing already-dense binary Nix store paths wastes CPU cycles and actually *slows down* the transfer.
   * **The Fix:** We completely disabled compression in the generated `/etc/ssh/ssh_config` (`Compression no`) and explicitly passed `?compress=false` to the `ssh-ng://` protocol in `/etc/nix/machines`.

**Measured Impact:**
According to our benchmark transferring roughly 1GB of generated payloads across 4 multi-arch builders:
* **Throughput:** The Tailscale mesh network easily handles massive bandwidth. With CPU bottlenecks removed, the Coordinator's receive speed (`net/total:recv`) peaked from **485MB/s (~3.8 Gbps) to 585 MB/s (~4.6 Gbps)**.
* **Time Saved:** The total elapsed time for the distributed build and artifact retrieval phase dropped from **126.3s to just 40.6s**. The `ssh` process CPU overhead dropped significantly, allowing `nix-daemon` to utilize the disk I/O much more effectively.

### 🛑 New Feature: Early Builder Teardown

To help you minimize GitHub Actions billing minutes, we are introducing the `stop-nix-builders` command. 

Previously, remote builders would wait idly until their hard timeout or the post-job cleanup phase. You can now invoke this command on the Coordinator immediately after your heavy builds complete to gracefully terminate all remote builders early.

**Example Usage:**
```yaml
- name: Build massive closure
  run: nix build -L --max-jobs 0 .#my-heavy-package

- name: Teardown Builders explicitly to save runner minutes!
  run: stop-nix-builders

- name: Push to cache (Builders are already shut down)
  run: cachix push mycache --all
```

### 🛠️ Minor Fixes

* **Magic Nix Cache:** Explicitly set `diagnostic-endpoint: ""` in the `magic-nix-cache-action` configuration to disable unnecessary telemetry.
