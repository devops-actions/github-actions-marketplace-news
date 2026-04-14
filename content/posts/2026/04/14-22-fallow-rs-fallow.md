---
title: Fallow - Codebase Health
date: 2026-04-14 22:21:49 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.35.0
dependentsNumber: "7"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.35.0**.

- This action is used across all versions by **7** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a Rust-based codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplication, complexity issues, and architectural problems, providing rapid insights without requiring configuration. Fallow helps streamline code maintenance by offering capabilities such as dead code identification, circular dependency detection, and boundary violation auditing, making it a valuable tool for improving code quality and maintainability.

## What's Changed

## Severity Tiers for Health Findings

Every complexity finding now has a **severity** field that tells you how urgently it needs attention:

| Severity | Cognitive | Cyclomatic | What it means |
|:---------|:----------|:-----------|:-------------|
| `moderate` | < 25 | < 30 | Above threshold but manageable |
| `high` | 25-39 | 30-49 | Recommended for extraction |
| `critical` | >= 40 | >= 50 | Immediate extraction candidate |

Thresholds are asymmetric because cognitive complexity maps more directly to comprehension difficulty.

### In practice

```json
{
  "name": "processOrder",
  "cyclomatic": 57,
  "cognitive": 90,
  "exceeded": "both",
  "severity": "critical"
}
```

Summary includes severity breakdown:

```json
{
  "functions_above_threshold": 24,
  "severity_critical_count": 10,
  "severity_high_count": 7,
  "severity_moderate_count": 7
}
```

Human output shows `CRITICAL` and `HIGH` badges on findings. Moderate findings are visually silent (no badge noise for the baseline tier).

### CI exit code filtering

New `--min-severity` flag controls which findings cause exit code 1:

```bash
# Only fail on critical findings (ignore moderate/high)
fallow health --min-severity critical

# Default: any finding causes failure (same as before)
fallow health
```

## MI Formula Fix for Small Files

The Maintainability Index formula previously used `complexity_density = cyclomatic / LOC` as its dominant term. This caused a 5-line type-guard function (density 0.40) to score worse than a 192-line nightmare function with 57 cyclomatic complexity (density 0.30).

**Before:** `MI = 100 - (density × 30) - (dead_code × 20) - fan_out_penalty`
**After:** `MI = 100 - (density × 30 × dampening) - (dead_code × 20) - fan_out_penalty`

Where `dampening = min(lines / 50, 1.0)`. Files under 50 lines get proportionally reduced density weight.

`SNAPSHOT_SCHEMA_VERSION` bumped to v7. Existing `--save-snapshot` data will not compare against pre-v7 snapshots.

## All changes

### Added
- Severity tiers on health findings (moderate/high/critical) across all 6 output formats (#119)
- `--min-severity` CLI flag for exit code filtering
- Health finding test fixtures in GitHub Action and GitLab CI jq tests

### Fixed
- MI formula distorted for small files (#118)
- Integration test fixture for bin-script dependency resolution tracked in git

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.34.0...v2.35.0
