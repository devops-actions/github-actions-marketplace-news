---
title: Poolsim Capacity Gate
date: 2026-07-12 14:47:33 +00:00
tags:
  - gregorian-09
  - GitHub Actions
draft: false
repo: https://github.com/gregorian-09/poolsim-capacity-gate
marketplace: https://github.com/marketplace/actions/poolsim-capacity-gate
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/gregorian-09/poolsim-capacity-gate** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/poolsim-capacity-gate) to find the latest changes.

## What's Changed

## Poolsim Capacity Gate v0.3.0

`poolsim-capacity-gate` is a GitHub Action for backend teams that want connection-pool sizing checks in CI. It installs `poolsim-cli`, runs `poolsim gate`, prints the JSON gate report, and fails the workflow when your configured policy says the current traffic, latency, or pool assumptions are unsafe.

Use this action when connection-pool changes should be reviewed with the same discipline as schema changes, replica-count changes, database `max_connections` changes, or production traffic assumptions.

## Why This Exists

Connection pools are easy to mis-size:

- A pool that is too small can increase queue wait and p99 latency under load.
- A pool that is too large can waste database connections and starve other services.
- A change that is safe at normal traffic can become unsafe at peak or incident traffic.
- A CI review often sees a numeric pool setting but not the queueing risk behind it.

Poolsim turns those assumptions into a repeatable capacity gate. This action makes that gate easy to run on pull requests and deployment pipelines.

## What The Action Does

- Installs a pinned `poolsim-cli` version from crates.io.
- Runs `poolsim --format json gate`.
- Supports checked-in telemetry config files with `source: telemetry`.
- Supports captured Prometheus response bundles with `source: prometheus`.
- Uses a TOML capacity policy to decide whether the pool assumptions are safe.
- Fails the GitHub Actions job when the gate policy fails.
- Leaves application code, deployment manifests, database settings, and runtime pool settings unchanged.

This is a CI guard. It is not a runtime pool implementation and not a runtime enforcer.

## What's Included In v0.3.0

- First Marketplace-ready release of the action.
- Default `poolsim-cli` version set to `0.3.0`.
- Telemetry-source support for existing Poolsim telemetry JSON/TOML files.
- Prometheus-response-file support for offline Prometheus query snapshots.
- Configurable policy path, service name, observation window, current pool size, server connection cap, connection overhead, and candidate size bounds.
- `extra-args` input for controlled advanced `poolsim gate` flags.
- Detailed README usage examples for telemetry and Prometheus workflows.

## Quick Start: Telemetry Config

```yaml
name: Capacity Gate

on:
  pull_request:
  push:
    branches: [main]

jobs:
  poolsim:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: dtolnay/rust-toolchain@stable
      - uses: gregorian-09/poolsim-capacity-gate@v0.3.0
        with:
          version: "0.3.0"
          policy: capacity-policy.toml
          source: telemetry
          telemetry-config: telemetry.json
```

Equivalent CLI command:

```bash
poolsim --format json gate \
  --policy capacity-policy.toml \
  telemetry \
  --config telemetry.json
```

## Quick Start: Prometheus Response File

```yaml
name: Capacity Gate

on:
  pull_request:

jobs:
  poolsim:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: dtolnay/rust-toolchain@stable
      - uses: gregorian-09/poolsim-capacity-gate@v0.3.0
        with:
          version: "0.3.0"
          policy: capacity-policy.toml
          source: prometheus
          prometheus-response-file: prometheus-responses.json
          service-name: checkout-api
          window: 5m
          current-pool-size: "8"
          max-server-connections: "100"
          connection-overhead-ms: "2"
          min: "2"
          max: "20"
```

Equivalent CLI command:

```bash
poolsim --format json gate \
  --policy capacity-policy.toml \
  prometheus \
  --response-file prometheus-responses.json \
  --service-name checkout-api \
  --window 5m \
  --current-pool-size 8 \
  --max-server-connections 100 \
  --connection-overhead-ms 2 \
  --min 2 \
  --max 20
```

## Inputs

| Input | Required | Default | Description |
| --- | --- | --- | --- |
| `version` | No | `0.3.0` | `poolsim-cli` version to install from crates.io. Pin this for reproducible CI. |
| `policy` | Yes | none | Path to the Poolsim gate policy TOML file. |
| `source` | No | `telemetry` | Input source kind. Supported values: `telemetry` and `prometheus`. |
| `telemetry-config` | Required for `source=telemetry` | empty | Path to a Poolsim telemetry JSON or TOML config file. |
| `prometheus-response-file` | Required for `source=prometheus` | empty | Path to captured Prometheus query responses. |
| `service-name` | No | `service` | Service name used for Prometheus-derived reports. |
| `window` | No | `5m` | Observation window label used for Prometheus-derived reports. |
| `current-pool-size` | No | `8` | Current configured pool size for Prometheus-derived reports. |
| `max-server-connections` | No | `100` | Database connection cap visible to this service. |
| `connection-overhead-ms` | No | `0` | Connection overhead assumption in milliseconds. |
| `min` | No | `2` | Minimum candidate pool size. |
| `max` | No | `20` | Maximum candidate pool size. |
| `extra-args` | No | empty | Additional arguments inserted after `--policy` and before the gate source subcommand. Keep this controlled by maintainers. |

## Gate Policy Example

```toml
max_saturation = "Warning"
max_pool_increase_percent = 100
max_additional_connections = 10
max_recommended_pool_size = 20
max_recommended_p99_queue_wait_ms = 80
max_recommended_mean_queue_wait_ms = 20
max_recommended_rho = 0.90
max_current_p99_queue_wait_ms = 100
max_current_mean_queue_wait_ms = 25
max_current_rho = 0.95
```

The policy file defines what your team considers safe. If Poolsim predicts a recommendation or current pool state outside those limits, the action fails the job.

## Telemetry Config Example

```json
{
  "telemetry": {
    "service_name": "checkout-api",
    "window": "1h",
    "observed_at": "2026-05-15T10:00:00Z",
    "current_pool_size": 8,
    "workload": {
      "requests_per_second": 180.0,
      "latency_p50_ms": 8.0,
      "latency_p95_ms": 30.0,
      "latency_p99_ms": 70.0
    },
    "pool": {
      "max_server_connections": 100,
      "connection_overhead_ms": 2.0,
      "idle_timeout_ms": 120000,
      "min_pool_size": 2,
      "max_pool_size": 20
    }
  },
  "options": {
    "iterations": 1200,
    "seed": 9,
    "distribution": "LogNormal",
    "queue_model": "MMC",
    "target_wait_p99_ms": 40.0,
    "max_acceptable_rho": 0.85
  }
}
```

## Exit Behavior

The action follows `poolsim gate` behavior:

- Exit `0`: policy passed and the assumptions are considered safe.
- Non-zero exit: policy failed, inputs were invalid, or the CLI could not run.

A non-zero exit is not necessarily an action bug. It usually means Poolsim found capacity assumptions that violate your policy. Review the JSON output in the workflow logs to see which check failed.

## Recommended CI Pattern

Run this action on pull requests that change:

- service pool configuration,
- traffic assumptions,
- latency assumptions,
- database connection budgets,
- deployment replica counts,
- telemetry fixtures used for capacity planning,
- capacity policy files.

Example path-filtered workflow:

```yaml
on:
  pull_request:
    paths:
      - "capacity/**"
      - "deploy/**"
      - "telemetry/**"
      - ".github/workflows/capacity.yml"
```

## Security Notes

- Do not put database passwords or application secrets in telemetry files.
- Treat Prometheus exports as internal operational data.
- Pin `version` for reproducible CI.
- Review policy changes like production configuration changes.
- Keep `extra-args` controlled by repository maintainers, not untrusted contributors.
- Prefer running this on trusted pull request contexts when capacity files may contain sensitive operational data.

## Troubleshooting

### `cargo: command not found`

Install Rust before the action:

```yaml
- uses: dtolnay/rust-toolchain@stable
```

### `telemetry-config is required when source=telemetry`

Set `telemetry-config`, or switch to `source: prometheus`.

### `prometheus-response-file is required when source=prometheus`

Set `prometheus-response-file`, or switch to `source: telemetry`.

### `source must be telemetry or prometheus`

The only supported source values are `telemetry` and `prometheus`.

### The gate failed, but the action installed and ran correctly

That means the capacity policy failed. Inspect the JSON report in the action logs and either fix the pool assumptions, update the telemetry input, or intentionally change the policy through review.

### `poolsim-cli` install failed

Confirm the requested `version` exists on crates.io and that the runner can access crates.io. This release defaults to `0.3.0`.

## Related Links

- Main Poolsim repository: https://github.com/gregorian-09/poolsim
- Poolsim documentation: https://github.com/gregorian-09/poolsim/tree/main/docs
- Poolsim CLI crate: https://crates.io/crates/poolsim-cli
- Issues: https://github.com/gregorian-09/poolsim/issues


