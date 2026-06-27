---
title: BPFCompat eBPF Compatibility Gate
date: 2026-06-27 22:22:25 +00:00
tags:
  - Kernel-Guard
  - GitHub Actions
draft: false
repo: https://github.com/Kernel-Guard/bpfcompat
marketplace: https://github.com/marketplace/actions/bpfcompat-ebpf-compatibility-gate
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Kernel-Guard/bpfcompat** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bpfcompat-ebpf-compatibility-gate) to find the latest changes.

## What's Changed

## bpfcompat v0.2.0

The biggest release since the project went public: a new embeddable library API, a new OS family (OpenShift/CoreOS), and aarch64 VM support.

### Highlights

- **Embeddable library mode — `pkg/bpfcompat`.** `ValidateBeforeLoad` does a real `bpf()` load against the node's own running kernel (no VM, no network) for a pre-load gate such as bpfman's; `Validate` exposes the full VM matrix engine. Host loading is gated behind the `hostload` build tag with an embedded static validator. See `pkg/bpfcompat/README.md`. (Pre-1.0 / experimental.)
- **OpenShift / CoreOS support (Ignition boot).** Fedora CoreOS is runnable out of the box (`make vm-image-fcos`); RHEL CoreOS is opt-in with an operator-supplied image (`BPFCOMPAT_ENABLE_RHCOS=1`). Backed by a real, recorded evidence matrix — **3 OpenShift releases × 6 artifacts on x86_64 plus a real aarch64 boot** ([docs/evidence-rhcos.md](docs/evidence-rhcos.md)), including a BPF-LSM backport boundary (rejected on RHEL 9.2, loads+attaches on 9.4).
- **aarch64 VM boot fixed.** The executor now supplies aarch64 UEFI firmware (AAVMF pflash) and uses TCG when the guest arch differs from the host — so aarch64 cloud-image profiles actually boot.
- **Zero-config gadget validation.** `--artifact` accepts an OCI gadget reference; `--quick` needs no matrix file; runtime-sized maps are auto-sized; programs libbpf can't classify are auto-typed, with a manifest program-type override; generic inner-map (map-in-map) fixup.

### Verify the release

```sh
cosign verify-blob \
  --certificate SHA256SUMS.crt --signature SHA256SUMS.sig \
  --certificate-identity-regexp 'github.com/Kernel-Guard/bpfcompat' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com \
  SHA256SUMS
sha256sum -c SHA256SUMS --ignore-missing
```

Full changelog: [CHANGELOG.md](CHANGELOG.md#020---2026-06-27). SBOM attached (`bpfcompat.sbom.cdx.json`); build provenance + SBOM attestations via Sigstore.

