---
title: Semantic Firewall
date: 2026-01-17 06:25:34 +00:00
tags:
  - BlackVectorOps
  - GitHub Actions
draft: false
repo: https://github.com/BlackVectorOps/semantic_firewall
marketplace: https://github.com/marketplace/actions/semantic-firewall
version: v2.2.0
dependentsNumber: "0"
---


Version updated for **https://github.com/BlackVectorOps/semantic_firewall** to version **v2.2.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semantic-firewall) to find the latest changes.

## Action Summary

**Semantic Firewall** is an advanced static analysis GitHub Action designed for Go codebases. It detects malware, backdoors, and risky code changes by analyzing the behavior and intent of the code rather than its text, making it resilient to obfuscation, renaming, or formatting changes. The tool automates tasks such as malware detection, risk-aware diffs, and dependency scanning, ensuring code integrity and security during development and code reviews.

## Release notes


This commit overhauls the storage engine and analysis pipeline. Migrated from BoltDB to Pebble to better support range scanning and snapshots for specific use case. Huge shout out to HD Moore (runZero) for the advice on the storage switch and for the concept behind the new intent verification system.


-- Storage Migration (BoltDB -> Pebble) --

* Replaced `BoltScanner` with `PebbleScanner`.

* Added `MigrateFromBolt` to allow importing existing databases.

* Implemented `Checkpoint`, `Compact`, and iterator management for Pebble.

* Refactored entropy and threshold setters.

* Added `ScanByEntropyRange` and `ScanTopologyWithSnapshot`.

* Removed `scanner_bolt.go` and associated tests.


-- Core Analysis & Fingerprinting --

* Updated `GenerateFingerprint`, `countLoops`, and `deriveTripCount` for better SSA handling.

* Refined `generateTopologyHash` and `computeTopologySimilarity`.

* Tweaked `Zipper` logic to reduce false negatives.

* Modified `toSCEV` and `classifyIV` for complex loop detection.


-- CLI & Features (The "Lie Detector") --

* Added `audit` command (`runAudit`) to `cmd/sfw`.

* Implemented LLM based intent verification (`llm.go`) supporting OpenAI and Gemini. (If you prefer another provider, drop an issue and let me know.)

* Added logic to cross reference commit messages against structural code changes to detect deceptive descriptions (Verdict: MATCH / SUSPICIOUS / LIE).

* Updated `scan`, `index`, and `diff` to use `PebbleScanner`.

* Added `runMigrate` command.


-- Housekeeping --

* Moved sample beacon files to `examples/samples/`.

* Updated `go.mod` and `go.sum`.

* Cleaned up `main.go`.

* Rewrote `README.md` to be less academic and more approachable.


The diff is huge, but the performance gains on the topology lookups are significant. As always, please open an issue if you spot any edge case that got through my testing. I'm averaging about 74% accuracy right now so there are definitely edges, I'm only one man. Thank you for the stars and for letting me know this has potential.


Back to work. 
