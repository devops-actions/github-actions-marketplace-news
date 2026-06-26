---
title: Wardex Release Gate
date: 2026-06-26 22:37:08 +00:00
tags:
  - had-nu
  - GitHub Actions
draft: false
repo: https://github.com/had-nu/wardex
marketplace: https://github.com/marketplace/actions/wardex-release-gate
version: v2.2.1
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/had-nu/wardex** to version **v2.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wardex-release-gate) to find the latest changes.

## What's Changed

# Wardex v2.2.1 Release Notes

**Release Date:** 2026-06-26  
**Version:** 2.2.1  
**Theme:** CRA-Ready Release Gate — Explicit Logging & Persistent State

---

## Highlights

### Feature A: Explicit Rejection Logging

All 26 silent rejection behaviors now produce explicit stderr logging. No more hidden filtering — every decision is visible in CI/CD output.

**Impact:** Security teams can now audit all filtering decisions without code inspection.

### Feature B: Persistent State Store

Cross-execution memory with BLAKE3 hash chain integrity and optional WORM protection. Track risk trends, view decision history, and verify audit trail integrity.

**Impact:** First step toward trend analysis, proactive alerts, and multi-execution dashboards.

---

## Detailed Changes

### Feature A: Explicit Rejection Logging

#### CRITICAL (3 locations)
- `accept.Load()` now accepts `io.Writer` parameter and logs all rejections
- `cmd/evaluate/evaluate.go` adds `[WARN]` when `ResolveSecret` fails
- `main.go` adds `[WARN]` when acceptances cannot be loaded

#### HIGH (10 locations)
- EPSS `FetchScores()` logs malformed scores and out-of-range values
- CycloneDX SBOM logs empty IDs and missing CVE scores
- Grype converter logs empty and duplicate CVE skips
- Art14 artefacts logs malformed file skips
- OpenVEX logs unrecognized state drops
- Policy loader logs new file creation

#### MEDIUM (11 locations)
- Trust store logs admin key decode failures
- Snapshot delta logs missing controls
- Maturity scorer logs unknown domains
- Analyzer gap logs nonexistent controls
- KEV converter logs missing entries
- CPL verifylink logs empty config hashes

#### New Files
- `pkg/ui/logging.go` — Unified logging helpers (`LogReject`, `LogWarn`, `LogInfo`, `LogHint`)

#### Output Format
All messages use standardized prefixes:
- `[FAIL]` — Fatal error preventing continuation
- `[WARN]` — Operational warning (non-blocking)
- `[INFO]` — Contextual information
- `[HINT]` — Resolution suggestion

---

### Feature B: Persistent State Store

#### Core Statestore (`pkg/statestore/`)
- `state.go` — Types: `State`, `TrendPoint`, `TrendAnalysis`, `TrendDirection`
- `store.go` — Main API: `New`, `LoadState`, `SaveState`, `RecordDecision`, `History`, `TrendAnalysis`, `Cleanup`, `VerifyChain`
- `chain.go` — BLAKE3 hash chain: `ChainEntry`, `ComputeChainHash`, `HashBytes`, `LoadChain`, `SaveChain`, `VerifyChain`, `AppendEntry`
- `worm.go` + platform files — WORM protection (immutable bit on Linux/macOS, readonly on Windows)
- `history.go` — Historical queries: `ListHistory`, `HistoryBetween`, `HistoryCount`
- `trend.go` — Formatting: `FormatTrend`, `FormatHistory`, `FormatDashboard`

#### CLI Commands (`cmd/state/`)
- `wardex state status` — Current state and chain integrity
- `wardex state history` — Decision history
- `wardex state trend` — Risk trend analysis
- `wardex state dashboard` — Comprehensive dashboard
- `wardex state verify` — BLAKE3 chain verification
- `wardex state cleanup` — Remove old history snapshots

#### Configuration
```yaml
state_store:
  enabled: true
  dir: .wardex
  retention_days: 90
  worm: true
```

#### Integration
- `config/config.go` — Added `StateStoreConfig` struct
- `cmd/evaluate/evaluate.go` — Records decisions when `state_store.enabled=true`, `--trend` flag
- `main.go` — Registered `wardex state` command

---

## Migration Guide

### From v2.2.0 to v2.2.1

**No breaking changes.** Both features are opt-in:

1. **Explicit Logging** — Automatic. All existing behavior preserved, just with added logging.

2. **State Store** — Opt-in via configuration:
   ```yaml
   state_store:
     enabled: true
   ```

### Upgrading

```bash
# Download v2.2.1
go install github.com/had-nu/wardex/v2@v2.2.1

# Verify installation
wardex --version
```

---

## Testing

All existing tests pass. New components include:

- Unit tests for statestore types and chain operations
- Integration tests for CLI commands
- Platform-specific WORM tests (Linux, macOS, Windows)

```bash
go test ./...
```

---

## Known Limitations

1. **WORM on macOS** — Requires `FS_IOC_SETFLAGS` support (available on HFS+ and APFS)
2. **WORM on Windows** — Uses `FILE_ATTRIBUTE_READONLY` (not true immutability)
3. **Trend analysis** — Requires at least 2 data points for meaningful analysis
4. **Chain verification** — Full chain must be present (no partial verification)

---

## Contributors

- André Gustavo Leão de Melo Ataíde (had-nu)

---

## Links

- [Documentation](https://github.com/had-nu/wardex/blob/main/doc/architecture/TECHNICAL_VIEW.md)
- [Engineering Blueprint](https://github.com/had-nu/wardex/blob/main/doc/architecture/ENGINEERING_BLUEPRINT.md)
- [Business View](https://github.com/had-nu/wardex/blob/main/doc/architecture/BUSINESS_VIEW.md)
- [GitHub Releases](https://github.com/had-nu/wardex/releases/tag/v2.2.1)

