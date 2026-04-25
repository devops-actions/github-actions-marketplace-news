---
title: Aguara Security Scanner
date: 2026-04-25 05:56:05 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.14.5
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.14.5**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to analyze AI agent skills and MCP server configurations, preventing threats such as prompt injection, data exfiltration, and supply-chain attacks prior to deployment. It automates static code analysis using advanced techniques like pattern matching, NLP, taint tracking, and cross-file toxic flow analysis to identify vulnerabilities, even in obfuscated or structured configurations. Aguara provides actionable insights through detailed risk scoring, context-aware scanning, and customizable scan profiles, helping developers safeguard their systems without requiring cloud services or external APIs.

## What's Changed

## What's new

Four audit items surfaced by an external review of `v0.14.4`, plus incidental dev-tooling cleanup. One behavior change library consumers must know about (credential-leak `matched_text` is now scrubbed by default), one new CLI flag (`--no-redact`), one new library option (`WithRedaction`).

### Credential-leak findings are redacted by default

Detecting a secret and then writing it verbatim to terminal output, JSON, SARIF, or an `-o` file creates a second copy of the secret in a location that often has weaker access controls than the original: CI logs retained for days, GitHub Code Scanning history, Slack notifications, shared `results.json` files checked into git by accident. The scan artifact becomes the leak.

`Finding.MatchedText` and any `Context` lines marked `is_match=true` are now replaced with the literal string `[REDACTED]` when the finding's category is `credential-leak`. Rules in other categories are untouched because their match is typically a pattern signature (`ignore previous instructions`) rather than a secret that needs protecting.

**Behavior change for library consumers.** Code parsing `matched_text` of a `CRED_*` finding as the credential value itself will now see `[REDACTED]`. Known consumers:

- **`oktsec`**: no code change required. Their `internal/engine/scanner.go` already redacts credentials; double-redaction stays `[REDACTED]`.
- **`aguara-mcp`**: no code change required. Having credentials scrubbed before crossing the MCP boundary is strictly better for AI-agent consumers.

Consumers that genuinely need the raw match pass `aguara.WithRedaction(false)` (library) or `--no-redact` (CLI).

### Update check auto-suppresses in recognized CI environments

The GitHub Action already passed `--no-update-check`, but anyone running the bare binary inside CI (Dockerfile, Makefile, ad-hoc script) was hitting the GitHub Releases API on every run. Leaked timing and user-agent metadata from supposedly-isolated environments, and fights the "no network, no LLM" positioning.

`Execute()` now flips `flagNoUpdateCheck` automatically when `CI=true` (the de-facto standard: set by GitHub Actions, GitLab, CircleCI, Travis, Buildkite, Bitbucket Pipelines, Drone, Woodpecker, and most others), or when any of `GITHUB_ACTIONS`, `GITLAB_CI`, `CIRCLECI`, `BUILDKITE`, `JENKINS_URL`, `TEAMCITY_VERSION`, `TRAVIS` is set. `CI=false`/`CI=0`/empty `CI=` are correctly ignored. Local invocations still get the notice; `--no-update-check` and `AGUARA_NO_UPDATE_CHECK=1` remain as explicit opt-outs.

### `--changed` scan no longer follows committed symlinks

The regular directory walk in `internal/scanner/target.go` rejects symlinks via `info.Mode()&os.ModeSymlink`. `scanChangedFiles` got its paths from git and used `os.Stat`, which resolves symlinks to their target. A symlink committed to the repo pointing at `/etc/passwd` or `~/.ssh/id_rsa` would be followed on the next `--changed` CI run and the target's contents would surface in findings (and any SARIF upload to GitHub Code Scanning).

Fix: `os.Stat` → `os.Lstat`, skip entries where the mode bit is set. Regression test creates a git repo with a symlink pointing to an out-of-tree secret and asserts the symlink is not scanned.

### `.gitignore` hygiene + contributor self-scan config

Prophylactic: `.gitignore` now covers `.env`, `.env.*`, `*.pem`, `*.key` (with `.env.example` allow-listed so templates stay trackable). `git log --all` confirms the repo has never contained such files, but a scanner's own repo really should not ship a misplaced credential file by accident.

Aguara is a scanner whose own source intentionally contains attack-pattern signatures (rule YAML `examples.true_positive` blocks, `testdata/`, `sandbox/`, documentation). A clean `aguara scan .` against the repo produced ~9,600 findings dominated by by-design content. A repo-root `.aguara.yml` now scopes contributor self-scans to production code paths (~63 findings, all in test files that embed payloads). `CONTRIBUTING.md` gained a `Running Aguara on this repo` section.

### Library API

New:
- `aguara.WithRedaction(enabled bool) Option` - opt-out with `WithRedaction(false)`.
- `types.RedactedPlaceholder` - string constant, value `[REDACTED]`.
- `types.RedactCredentialFindings([]Finding)` - exposed for consumers that want to apply the same redaction to findings obtained via other code paths.

Changed:
- `aguara.Scan`, `aguara.ScanContent`, `aguara.ScanContentAs`, `(*Scanner).Scan`, `(*Scanner).ScanContent`, `(*Scanner).ScanContentAs` scrub credential-leak matches before returning. Pass `WithRedaction(false)` to preserve the previous behavior.

No signature changes. No removed symbols. No rule-count change (still 189). No engine changes.

### Not in this release

Two `P2` audit items are deferred to v0.15.0 Tier 1:

- Rule target globs beyond the `*.ext` fast path. Custom rules with `skills/**/*.md` or `.github/workflows/*.yml` silently do not fire. Depends on the `match_mode` proximity work already planned as T1-01.
- Decoder-cap bypass via benign-padding. An attacker can push a malicious encoded blob past the `maxBlobsPerFile=10` cap by prepending benign blobs. Needs perf benchmarks before raising the cap or adding hash-based dedup.

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.14.4...v0.14.5
