---
title: AIsbom Security Scanner
date: 2026-05-15 06:33:02 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v0.10.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v0.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## Action Summary

AIsbom is a security and compliance scanner specifically designed for Machine Learning artifacts. It automates the generation of Software Bill of Materials (SBOMs) in standard formats like SPDX 2.3 and CycloneDX and performs deep binary introspection on model files to detect malware risks and legal license violations. This tool addresses the limitations of generic SBOM tools by analyzing serialized ML model weights, enabling organizations to ensure the safety and compliance of their AI supply chain.

## What's Changed

### What's new

**Two changes you'll see on every successful scan.**

* **Acquisition footer.** Every `aisbom scan` now ends with a "Next steps" panel pointing at the right place to view your SBOM (your hosted share URL if you used `--share`, otherwise the drag-and-drop offline viewer) and at the rolling [AISBOM advisories page](https://aisbom.io/advisories) for the AI/ML supply chain. Recurring re-engagement vector; no scan output formats changed.
* **Friendlier help surface.** Several small `--help` improvements based on a coverage audit of recently shipped features:
  - New top-level `--version` / `-V` flag — print the installed version without spinning up `aisbom info`.
  - Top-level help now documents the `AISBOM_NO_TELEMETRY=1` env-var opt-out directly (no more "read the README" friction).
  - `--share` help text now explicitly calls out that uploaded SBOMs are publicly viewable and expire after 30 days. `--share-yes` is flagged as CI/CD-only with a warning about interactive use.
  - `aisbom info` adds a `Telemetry:` line showing current state (enabled vs opted-out) — one canonical place to confirm whether events are firing.
  - `scan` target arg spells out all three forms with concrete examples (local dir, HTTP(S) URL, `hf://` slug).

### Privacy: attribution tagging

The new footer URLs include `?ref=cli` so we can measure CLI → web conversion in GA4 Acquisition. **This tag is automatically stripped when `AISBOM_NO_TELEMETRY=1` is set** — opt-out users still see the URLs (still useful), just without attribution.

### What's not changing

Scanner behavior, exit codes, output formats, the `--share` flow, and what data is collected — all identical to 0.9.x. The footer replaces the previous "Visualize this report" panel; everything else in scan output is unchanged.

### Opting out

```bash
# Permanent
export AISBOM_NO_TELEMETRY=1

# One invocation
AISBOM_NO_TELEMETRY=1 aisbom scan ./my-project
```

