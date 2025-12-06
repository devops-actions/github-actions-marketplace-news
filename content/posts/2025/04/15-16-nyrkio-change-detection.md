---
title: Nyrkiö Change Detection
date: 2025-04-15 16:58:48 +00:00
tags:
  - nyrkio
  - GitHub Actions
draft: false
repo: https://github.com/nyrkio/change-detection
marketplace: https://github.com/marketplace/actions/nyrkio-change-detection
version: v2
dependentsNumber: "?"
---


Version updated for **https://github.com/nyrkio/change-detection** to version **v2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nyrkio-change-detection) to find the latest changes.

## Release notes

Finally a GitHub Action to integrate your benchmarks with Nyrkiö Change Detection! Just a few lines of yaml and Nyrkiö will let you know if there were any regressions. (or improvements!)

Out of the gates we support the following canonical benchmarking frameworks of all major programming languages:

[cargo bench](https://doc.rust-lang.org/cargo/commands/cargo-bench.html) for Rust projects
go test -bench for Go projects
[benchmark.js](https://benchmarkjs.com/) for JavaScript/TypeScript projects
[pytest-benchmark](https://pypi.org/project/pytest-benchmark/) for Python projects with [pytest](https://pypi.org/project/pytest/)
[Google Benchmark Framework](https://github.com/google/benchmark) for C++ projects
[Catch2](https://github.com/catchorg/Catch2) for C++ projects
[BenchmarkTools.jl](https://github.com/JuliaCI/BaseBenchmarks.jl) for Julia packages
[Benchmark.Net](https://benchmarkdotnet.org/) for .Net projects
[benchmarkluau](https://github.com/Roblox/luau/tree/master/bench) for Luau projects
[JMH](https://openjdk.java.net/projects/code-tools/jmh/) for Java projects
[time](https://man7.org/linux/man-pages/man1/time.1.html) Unix utility to measure execution time of any program
Custom benchmarks where either 'biggerIsBetter' or 'smallerIsBetter'
[Nyrkios own JSON](https://nyrkio.com/openapi#/default/add_result_api_v0_result__test_name__post) format, which is simply passed directly to Nyrkiö API.

For this integration we are thankful to 6 years of hard work by the github-action-benchmark project, of which nyrkio/change-detection is a fork. Now plug this into your Continuous Performance Engineering workflows and let Nyrkiö take care of the rest!
