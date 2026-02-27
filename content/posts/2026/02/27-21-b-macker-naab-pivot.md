---
title: NAAb Pivot
date: 2026-02-27 21:27:26 +00:00
tags:
  - b-macker
  - GitHub Actions
draft: false
repo: https://github.com/b-macker/naab-pivot
marketplace: https://github.com/marketplace/actions/naab-pivot
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/b-macker/naab-pivot** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/naab-pivot) to find the latest changes.

## Action Summary

NAAb Pivot is a GitHub Action that automates the optimization of slow code written in interpreted languages such as Python, Ruby, and JavaScript by analyzing its performance, generating faster versions in compiled languages like Go, Rust, or C++, and validating correctness with statistical parity testing. It addresses the challenges of improving code efficiency, enabling up to 60x speedup and significant memory reductions, while providing confidence in correctness and facilitating incremental migration in large, polyglot codebases. Key capabilities include performance analysis, multi-language code synthesis, correctness validation, and interactive visualization via a web dashboard.

## Release notes

# NAAb Pivot v1.0.0

**Part of the [NAAb Language](https://github.com/b-macker/NAAb) Ecosystem**

Released: 2026-02-26

---

## Overview

NAAb Pivot is a polyglot code evolution and optimization platform built on the NAAb Language. It automatically analyzes slow interpreted code, generates optimized versions in compiled languages, and mathematically proves correctness through parity validation.

**Results:** 3-60x speedups with 99.99% parity confidence

**Ecosystem:**
- [NAAb Language](https://github.com/b-macker/NAAb) - Core polyglot scripting language with governance
- [NAAb Bolo](https://github.com/b-macker/naab-bolo) - Polyglot code executor and validator
- NAAb Pivot (this project) - Code evolution and optimization platform

---

## What's New

### Core Features

**6 Core Scripts:**
- `pivot.naab` - Main CLI orchestrator
- `analyze.naab` - Multi-language code analyzer
- `synthesize.naab` - Code generator with caching
- `validate.naab` - Parity validator (99.99% confidence)
- `benchmark.naab` - Performance tracking
- `migrate.naab` - Incremental migration helper

**10 Advanced Modules:**
- Plugin system
- Hotspot detector
- Report generator (JSON, HTML, CSV, SARIF, Markdown)
- Config manager
- Dependency analyzer
- Parity engine
- Vessel cache
- Template engine
- Compilation manager
- Fabric utilities

**8 Optimization Profiles:**
- ultra-safe
- conservative
- balanced (default)
- aggressive
- experimental
- minimal
- embedded
- wasm

**8 Target Languages:**
- Go
- C++
- Rust
- Ruby
- JavaScript
- PHP
- Zig
- Julia

---

## Examples

10 real-world examples with proven performance improvements:

| Example | Speedup | Description |
|---------|---------|-------------|
| 01. Basic Evolution | 3.5x | Python → Go loop optimization |
| 02. Batch Processing | 10x | Python → Rust ETL pipeline |
| 03. ML Optimization | 15x | Python → C++ inference |
| 04. Web Backend | 8x | Python → Go API (12K req/s) |
| 05. Crypto Mining | 18x | Python → Rust+SIMD |
| 06. Data Pipeline | 10x | Python → C++ analytics |
| 07. Scientific Computing | 60x | Python → Julia+GPU |
| 08. Embedded System | 15x | Python → Zig (96% less memory) |
| 09. Incremental Migration | N/A | 156K LOC enterprise guide |
| 10. Polyglot Microservices | 7.1x | Mixed stack ($1,800/mo savings) |

---

## Quality Metrics

- 46 commits (100% governance compliance)
- 17/17 tests passing
- 8/8 examples validated
- 134+ files
- ~28,000 lines
- Zero critical bugs
- 77.5% code coverage

---

## Installation

```bash
# Clone repository
git clone --recursive https://github.com/b-macker/naab-pivot.git
cd naab-pivot

# Build NAAb
bash build.sh

# Run
./naab/build/naab-lang pivot.naab --help
```

**Docker:**
```bash
docker pull bmacker/naab-pivot:1.0.0
```

**GitHub Action:**
```yaml
- uses: b-macker/naab-pivot@v1
  with:
    file: src/code.py
    profile: balanced
```

---

## Documentation

- [Quick Start](QUICKSTART.md)
- [Getting Started](docs/getting-started.md)
- [Architecture](docs/architecture.md)
- [CLI Reference](docs/cli-reference.md)
- [Examples](examples/)
- [Roadmap](docs/roadmap.md)

---

## Usage

**Analyze code:**
```bash
naab-lang pivot.naab analyze slow.py
```

**Generate optimized version:**
```bash
naab-lang pivot.naab evolve slow.py --profile balanced
```

**Validate correctness:**
```bash
naab-lang pivot.naab validate slow.py vessels/slow_vessel
```

**Benchmark performance:**
```bash
naab-lang pivot.naab benchmark vessels/
```

---

## Platform Support

- Linux (tested)
- Android/Termux (tested)
- macOS (community testing)
- Windows (community testing)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

---

## License

MIT License - See [LICENSE](LICENSE)

---

## Links

- Repository: https://github.com/b-macker/naab-pivot
- NAAb Language: https://github.com/b-macker/NAAb
- NAAb Bolo: https://github.com/b-macker/naab-bolo
- Issues: https://github.com/b-macker/naab-pivot/issues

