---
title: Cepheus Container Escape Scanner
date: 2026-05-28 06:42:44 +00:00
tags:
  - Su1ph3r
  - GitHub Actions
draft: false
repo: https://github.com/Su1ph3r/cepheus-action
marketplace: https://github.com/marketplace/actions/cepheus-container-escape-scanner
version: v0.6.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Su1ph3r/cepheus-action** to version **v0.6.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cepheus-container-escape-scanner) to find the latest changes.

## Action Summary

The `cepheus-action` GitHub Action integrates the Cepheus container escape scanner into CI pipelines. It automates the scanning of container images for security vulnerabilities, generates a SARIF report, and uploads it to GitHub Code Scanning. The action helps ensure container security by failing builds based on configurable severity thresholds or regression gates.

## What's Changed

First Marketplace-listed release of `Su1ph3r/cepheus-action` — a GitHub Action that runs the [Cepheus](https://github.com/Su1ph3r/Cepheus) container escape scanner against a container image (or a previously-captured posture file), uploads SARIF to GitHub Code Scanning, and fails the build on severity or baseline-regression thresholds.

## Quick start

```yaml
name: container security
on: [pull_request]

jobs:
  cepheus:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      security-events: write
    steps:
      - uses: actions/checkout@v4

      - name: Build image
        run: docker build -t my-app:\${{ github.sha }} .

      - name: Cepheus scan
        uses: Su1ph3r/cepheus-action@v0.6.3
        with:
          image: my-app:\${{ github.sha }}
          max-severity: critical
```

The action installs Cepheus from PyPI, scans the image, writes a SARIF report, and uploads it to Code Scanning. The build fails if any escape chain at the `max-severity` threshold or higher is found.

## What Cepheus detects

65 escape techniques across 6 categories:

- **Capability-based** — \`CAP_SYS_ADMIN\`, \`CAP_SYS_PTRACE\`, \`CAP_DAC_READ_SEARCH\`, \`CAP_NET_ADMIN\`, BPF probe_write_user, and more
- **Mount-based** — \`docker.sock\`, containerd / CRI-O sockets, \`core_pattern\`, sysrq, sysfs, host-path mounts, cgroup fs, \`/proc/self/fd\`, device-mapper
- **Kernel CVEs** — CVE-2022-0185, DirtyPipe (CVE-2022-0847), CVE-2024-1086, CVE-2024-21626, CVE-2025-21756, CVE-2024-23651/2/3 BuildKit, and 10 more
- **Runtime / orchestrator** — Kubernetes service account, kubelet API, etcd, Docker API, containerd shim, runc CVE-2019-5736, cloud metadata SSRF, NVIDIA CVEs, IngressNightmare (CVE-2025-1974)
- **Combinatorial** — multi-prerequisite chains plus dynamic two-step chain construction
- **Information disclosure** — env var secrets, cloud metadata credentials, K8s secret mounts, Docker env inspection

Chains are ranked by a composite of reliability, stealth, and confidence; missing posture data defaults to 0.3 confidence rather than discarding the technique.

## Common patterns

**Severity gate** — block any container shipping a critical escape chain:

\`\`\`yaml
- uses: Su1ph3r/cepheus-action@v0.6.3
  with:
    image: my-app:\${{ github.sha }}
    max-severity: critical
\`\`\`

**Regression gate** — block only NEW chains versus a checked-in baseline. Useful for existing projects with imperfect postures:

\`\`\`yaml
- uses: Su1ph3r/cepheus-action@v0.6.3
  with:
    image: my-app:\${{ github.sha }}
    baseline: .github/cepheus-baseline.sarif
    fail-on-new: true
\`\`\`

**Both** — critical chains always block; everything else blocks only on regression vs. \`main\`.

**Scan a deployed pod** (out-of-band posture capture):

\`\`\`yaml
- uses: Su1ph3r/cepheus-action@v0.6.3
  with:
    posture-file: .github/prod-posture.json
    max-severity: high
\`\`\`

## Inputs + outputs

See the [README](https://github.com/Su1ph3r/cepheus-action#readme) for the full input/output reference, gating patterns, SARIF integrity caveats, and troubleshooting.

## Source

The action is developed in [\`Su1ph3r/Cepheus\`](https://github.com/Su1ph3r/Cepheus) under \`cepheus-action/\`. This standalone repo is a release-mirrored copy; PRs against this repo will be overwritten on the next Cepheus release — open them against the monorepo instead.

## Requirements

- A Linux GitHub Actions runner (composite action; \`ubuntu-latest\` works)
- \`docker\` (or \`podman\`, configurable) on the runner for image-based scans
- \`permissions: { security-events: write }\` on the job if you want SARIF auto-uploaded to Code Scanning

## License

[MIT](https://github.com/Su1ph3r/cepheus-action/blob/v0.6.3/LICENSE)
