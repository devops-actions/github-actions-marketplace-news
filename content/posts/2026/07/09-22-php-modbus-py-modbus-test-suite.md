---
title: PY Modbus Test Suite
date: 2026-07-09 22:41:51 +00:00
tags:
  - php-modbus
  - GitHub Actions
draft: false
repo: https://github.com/php-modbus/py-modbus-test-suite
marketplace: https://github.com/marketplace/actions/py-modbus-test-suite
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/php-modbus/py-modbus-test-suite** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/py-modbus-test-suite) to find the latest changes.

## What's Changed

## v1.0.0 — 2026-07-07

### Initial Release

Docker-based Modbus server simulator suite for testing Modbus clients and
SCADA systems, built on pymodbus (pinned `3.13.1`).

### Server Infrastructure

- **6 pre-configured endpoints** via Docker Compose from a single image: Modbus TCP (host port 502), RTU over TCP (5021), ASCII over TCP (5022), UDP (5023), Modbus/TCP Security TLS (host port 802), RTU on virtual serial via RFC2217 (5024, raw 5025).
- **Non-root container** — binds unprivileged in-container ports (5020+); canonical 502/802 come from host port mappings.
- **Health check** via `python -m mbsim.healthcheck` — reads `hr[0]` of the health device (unit 1, expected `1234`), so `docker compose up --wait` gates on real Modbus readiness.
- **Baked-in config and certs** — GitHub Actions service containers cannot mount checkout files; override at runtime with `MBSIM_MAP_B64` / `MBSIM_SCENARIO_B64` or a volume on `/app/config`.

### Register Map & Generators

- **YAML register map** (`config/default-map.yaml`) defining units 1–3 with holding registers, input registers, coils and discrete inputs; multiple `devices` entries simulate a multi-drop bus behind one endpoint.
- **4 deterministic generators** — `ramp`, `sine`, `random_walk`, `toggle`: tick-based, seeded per cell from the map `seed` — same map, same history, every run.

### Fault Injection

- **Scenario YAML** (`config/scenarios/*.yaml`) attaching deterministic faults per rule; matchers `device_id`, `function_code`, `every_nth`, `after_n_requests`, `times` — counting is request-order based, never wall clock.
- **7 fault actions** — `exception`, `no_response`, `truncate`, `corrupt` (CRC/LRC/MBAP), `garbage`, `delay`, `disconnect`.
- **7 pre-configured fault services** behind the `faults` compose profile (ports 5100–5106): `tcp-silent`, `tcp-slow`, `tcp-exceptions`, `tcp-drop`, `rtu-tcp-badcrc`, `tcp-truncated`, `tcp-garbage`.
- **Health-safety guard** — rules that could hit holding-register reads on the health device are rejected at startup.

### CI/CD

- **GitHub Actions composite action** (`action.yml`) for one-step CI integration — inputs `services`, `faults`, `wait-timeout`; output `certs-dir` for TLS CA pinning.
- **Docker image** published to `ghcr.io/php-modbus/py-modbus-test-suite` (multi-arch amd64/arm64) by `.github/workflows/release.yml`, gated on the smoke suite.
- **CI-optimized compose file** (`docker-compose.ci.yml`) with no-restart policy.

### Documentation

- Documentation in `docs/` covering setup, endpoints, register map, generators, fault injection, environment variables, serial usage, and CI integration.

