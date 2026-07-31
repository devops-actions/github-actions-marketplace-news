---
title: Supply Chain Guard
date: 2026-07-30 23:59:44 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.23.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action `supply-chain-guard` is an open-source tool designed to scan and detect various security threats in software supply chains across different ecosystems. It automatically identifies malware campaigns, fake AI tool repos, account takeovers, and a wide range of threat indicators in popular package managers (npm, Python, Rust, Go, etc.). The action generates CycloneDX SBOMs with dependency inventories and SLSA provenance, helping to correlate findings into attack-chain incidents. It also provides features like CI exit code control, filtering, and internal disclosure, making it a comprehensive security scanner for developers.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.23.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The GitHub Action `supply-chain-guard` is an open-source tool designed to scan and detect various security threats in software supply chains across different ecosystems. It automatically identifies malware campaigns, fake AI tool repos, account takeovers, and a wide range of threat indicators in popular package managers (npm, Python, Rust, Go, etc.). The action generates CycloneDX SBOMs with dependency inventories and SLSA provenance, helping to correlate findings into attack-chain incidents. It also provides features like CI exit code control, filtering, and internal disclosure, making it a comprehensive security scanner for developers.

## What's Changed

## [5.23.3] - 2026-07-30

### Fixed

- **A built release no longer reports itself as critically compromised.** On the
  v5.23.2 checkout, `scan .` returned 924 high-or-critical findings, including
  917 from compiled `dist/` counterparts of inert detector definitions. Generated
  output remains fully scanned. Self-recognition now requires the exact package
  name plus a canonical repository identity, and suppression is limited to
  reviewed source/generated paths or exact path-and-rule pairs. An arbitrary
  payload under `dist/`, a same-named file in another package, and an unrelated
  malicious rule at an inert path all remain detectable.

- **Shai-Hulud credential-flow detection no longer treats Vite metadata as
  credential theft.** The rule now requires an executable credential source to
  reach a real network sink across JavaScript/TypeScript, Python or shell. It
  handles lexical scope, parameter and declaration shadowing, assignments and
  aliases, receiver provenance for imported and required network clients, pathlib
  reads, command substitutions,
  pipelines and continued shell commands. Comments, declarations, deny lists,
  regular-expression literals, output-only network options, local helper methods
  and path strings without a read stay inert. The advertised source vocabulary is
  shared by the prefilter and matcher, including case-insensitive `.npmrc` and
  `npm_config_userconfig` forms; `npm-cli-login` is no longer advertised as a
  credential source.

- **Ordinary Proxy handlers in Vitest no longer produce high findings.** A bare
  `process.env[key]` access inside a Proxy trap is normal runtime behavior and no
  longer counts as a hostile operation. Evaluation, process execution,
  deobfuscation and network exfiltration inside the trap remain detectable.

- **Mining rules no longer join unrelated bundle tokens or fire on a lone common
  object key.** Pool hostnames now obey DNS label and total-length boundaries,
  retain valid subdomains of known pools, and reject suffix lookalikes. A single
  mining-specific configuration key or a known mining-pool hostname remains high
  confidence. Generic pool-shaped hosts require bounded mining context; ordinary
  keys such as `worker`, `wallet`, `hashrate`, `coin` and `algo` require three
  distinct keys in the same object scope. Separate objects, comments, regexes,
  stringified examples, duplicate keys and scheduler-style configurations do not
  correlate.

- **Backconnect/proxy evidence distinguishes remote infrastructure from local
  development endpoints.** Authority parsing now handles credentials, compact
  and legacy IPv4 spellings, compressed/padded IPv6 and IPv4-mapped IPv6. Loopback,
  wildcard and localhost endpoints are rejected without letting the same scheme
  seed a looser fallback later on the line. Commented examples remain inert while
  external endpoints and behavioral check-ins remain detectable.

- **Character-code obfuscation requires flow into executable code or command
  positions.** Long `String.fromCharCode` sequences are no longer capped at 1,024
  arguments, assignments and aliases are followed with scope-aware overwrite
  handling, and shell-interpreter command positions are recognized. Documentation,
  codepage tables, regular-expression `.exec`, timer callbacks, environment/options
  data and non-executed function arguments remain clean. Matching stays linear on
  multi-megabyte malformed or assignment-heavy input.

- **Protestware locale/GeoIP correlation now requires executable control flow.**
  A locale-derived identifier must feed a conditional geographic gate whose body
  reaches a destructive sink within 512 characters. Overwrites break the flow,
  closed blocks and unrelated cleanup remain inert, and generic `writeFile` calls
  are no longer treated as destructive. Newer local prefixes are still considered
  after an expired candidate, with exact 512/513 boundary coverage.

- **Four-component V8 versions no longer look like private network disclosures.**
  A per-scan incremental lexical index recognizes same-line, typed-array,
  multiline, comment-bearing, CRLF and prose-list ownership without rescanning a
  4 KiB prefix for every candidate. Ownership remains bounded and cannot hide a
  later host, CIDR, non-V8 nested context or ordinary prose that merely mentions
  V8. The adversarial 5 MiB / 20,000-candidate case is guarded against regression.

- **Python dependency-confusion coverage no longer fails clean on unreadable,
  delegated, dynamic or unsupported manifests.** `requirements.txt` reads,
  continuations, comments, includes, editable/VCS entries and malformed PEP 508
  forms now preserve an explicit partial-coverage verdict when dependency intent
  cannot be resolved. `pyproject.toml` parsing covers standardized project and
  optional dependencies, build requirements, dependency groups and includes, plus
  Poetry tables, while respecting TOML case sensitivity, quoted/dotted keys,
  inline/dynamic declarations, escapes and malformed arrays. PEP 503-equivalent
  names share registry work without losing per-manifest attribution.

- **Pattern-table wiring checks cannot be satisfied without executing validation.**
  The AST guard follows direct, aliased, optional, sequence, call/apply and
  immediately invoked bound validators, but no longer treats bare `.bind()` or a
  derived empty array as validation of the original table. Typed pattern-table
  aliases and extracted pattern expressions are also covered, closing routes by
  which future detector tables could silently bypass the shared engine contract.

### Changed

- **Self-scan policy is explicit and narrow.** Re-excluding all of `dist/` was
  rejected because published generated code is part of the artifact being
  protected. The scanner instead recognizes only exact inert counterparts after
  package identity verification, preserving protection for every other generated
  file and every unrelated rule.

- **Release governance documentation matches protected-main reality.** Release
  work now records the required branch, protected PR checks, squash merge, and
  post-merge signed-tag sequence instead of the obsolete direct-to-main flow.

- **Release workflow dependencies were refreshed.** `actions/download-artifact`
  is updated from 7.0.0 to 8.0.1 and `docker/login-action` from 4.5.0 to 4.6.0
  through the reviewed Dependabot changes.

- **Performance gates separate production cost from coverage overhead.** Real
  full-suite 5 MiB wall-clock checks are bounded at 10-15 seconds and pass on
  Linux. V8 coverage runs use a documented 5x instrumentation multiplier;
  profiling and removal of that multiplier are tracked explicitly for v5.23.4.

### Added

- **Build-backed and real-bundle regressions.** An isolated checkout is compiled
  and scanned with assertions of zero high/critical findings, a score no greater
  than 10, and a clean/low aggregate verdict, then seeded with malicious controls
  to prove `dist/` is still scanned. The installed Vite 8.1.4
  and Vitest 4.1.10 artifacts are tested directly, alongside malicious controls.

- **Adversarial precision and cost coverage.** New focused cases cover exact
  512/513 gaps, DNS label limits, local-address encodings, comment/string/regex
  masks, JavaScript and Python scope boundaries, shell expansion and pipeline
  semantics, TOML/requirements completeness, V8 ownership, and multi-megabyte
  near misses and assignment chains.

