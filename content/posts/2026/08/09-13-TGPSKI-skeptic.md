---
title: go-skeptic
date: 2026-08-09 13:45:21 +00:00
tags:
  - TGPSKI
  - GitHub Actions
draft: false
repo: https://github.com/TGPSKI/skeptic
marketplace: https://github.com/marketplace/actions/go-skeptic
version: v0.3.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  `skeptic` is a local repository trust auditor that detects structural vulnerabilities in the gaps between existing security tools, focusing on attack-enabling conditions rather than artifacts. It targets CI/CD trust boundary violations, agentic ecosystem poisoning, and "nobody reviews this" attack surfaces by scanning filesystems for specific patterns and behaviors.
---


Version updated for **https://github.com/TGPSKI/skeptic** to version **v0.3.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/go-skeptic) to find the latest changes.

## Action Summary

`skeptic` is a local repository trust auditor that detects structural vulnerabilities in the gaps between existing security tools, focusing on attack-enabling conditions rather than artifacts. It targets CI/CD trust boundary violations, agentic ecosystem poisoning, and "nobody reviews this" attack surfaces by scanning filesystems for specific patterns and behaviors.

## What's Changed


### Fixed

- Apply `--ignore-paths` to the `GRAPH-`, `DEP-`, and `PROV-` check families.
  All three walk the tree themselves and never received the patterns, so an
  explicitly excluded directory still produced `high` and `critical` findings
  that counted toward `--fail-on`. They also reported the walked path rather
  than one relative to the scan root, which no repo-relative pattern could match
  and which leaked the scanning host's directory layout. The matcher moves to
  `internal/pathfilter` so the two walkers cannot disagree about what "ignored"
  means (#88)
- Omit waived findings from SARIF. Code scanning turns every result into an
  alert and does not honor `result.suppressions`, so a waived finding opened an
  alert the repository had already reviewed and failed the check on any pull
  request touching that file. The complete record stays in the JSON report,
  which carries `suppressed` and `suppression_reason` (#96, #98)
- Label waived findings in markdown output. They rendered identically to live
  ones, reading as open findings nobody had acted on (#96)
- `model.ExpandHomePath` concatenated the home directory with the rest of the
  path, so `~/foo/bar` became `C:\Users\me/foo/bar` on Windows (#66)
- `correlation.filePathRelativeToRepo` accepted paths outside the repository on
  Windows. `filepath.IsAbs` is false for a rooted path with no volume, so
  `/etc/passwd` was joined onto the repo root and passed containment (#66)
- `security.CheckWorldWritableArtifacts` reported every artifact as
  world-writable on Windows. Go synthesizes `0666` for any writable file there,
  so the POSIX other-write bit carries no information. It now reports nothing on
  Windows rather than noise (#66)
- `corpus.groupFindingsByArtifact` bucketed a finding under an empty artifact ID
  when its path began with a separator (#66)
- The results artifact was named from `format` and `fail-on` alone, so two
  invocations of the action in one job collided

### Added

- `windows-latest` job running `go vet` and `go test -race`.
  `internal/corpus/flock_windows.go` shipped in v0.3.0 and had never executed;
  its first run confirmed `LockFileEx`/`UnlockFileEx` work. Integration tests
  stay POSIX-only (#66)
- Sigstore build provenance on every release archive and `checksums.txt`, via
  `actions/attest-build-provenance`. Verify with
  `gh attestation verify <archive> --repo TGPSKI/skeptic`. Attestation runs
  before the release is published, so a failure produces no release; dry runs
  skip it (#4)
- Committed `.skeptic.json` and `.skeptic-waivers.json`. They gate this
  repository's CI and are the reference pair to copy. Markdown stays scanned;
  accepted findings are waived with a `file_sha256` pin, so a waiver lapses when
  the file changes (#65)
- `make waivers-check` and `make waivers-refresh`. Editing a waived file breaks
  its pin, which is the mechanism working and needs a supported way to re-pin.
  `waivers-refresh` prints the findings each waiver will suppress again, because
  re-pinning without reading turns a waiver back into an ignore rule (#93)
- `.github/workflows/ruleset-drift.yml`, `scripts/ruleset-drift.py`, and
  `make ruleset-drift` compare committed `.github/ruleset-*.json` against the
  live rulesets weekly, on dispatch, and on any PR touching them. A token
  without repo admin scope receives a reduced view with `bypass_actors` absent,
  which the script detects and reports as a skip rather than diffing against it
  (#85)
- `run-id` action output, carried into the results artifact name
- `.gitattributes` pinning LF on checkout, so Windows `core.autocrlf` cannot
  rewrite line endings and break `gofmt` or a fixture hash (#66)

### Changed

- The CI self-scan blocks. It discarded stderr and its exit code with
  `|| true`, so 487 findings and a 100/100 risk score enforced nothing. It now
  runs through the local composite action, which also exercises `action.yml` on
  every CI run (#65)
- The release workflow waits for `ci.yml` to reach `completed` instead of
  reading its conclusion once. An in-progress run has a null conclusion and a
  run not yet created returns nothing, and both read as failure — exactly the
  window between merging and dispatching a release (#67)
- `.github/ruleset-main.json` declared `"bypass_actors": []` while the live
  ruleset grants `RepositoryRole` 5 an always bypass. All three ruleset files
  are regenerated from live (#85)
- `.gitignore` stops ignoring `.skeptic.json` and `.skeptic-waivers.json` (#65)
- `test-windows` is a required status check on `main`

### Documentation

- `docs/GITHUB_ACTION.md` gains a permissions table, a runner OS and
  architecture support matrix, a recipe for running the action twice in one job,
  and a statement that SARIF excludes waived findings while JSON retains them.
  `go-version` said "Go version for building skeptic" without noting it applies
  only to the source-build fallback
- README documents installing from a release archive — download, checksum,
  attestation verify, extract — which did not exist though v0.3.0 shipped five
  archives (#4)
- README documents the committed scan config as a worked example, including why
  a SHA-pinned waiver beats an ignore rule for markdown (#65)
- `CONTRIBUTING.md` gains **Provenance**, **Branch rulesets**, and **Scan
  waivers** sections. The second states that a ruleset change goes in the file
  and on the server in the same change (#4, #85, #93)

### Known limitations

- The ruleset drift check needs a `RULESET_READ_TOKEN` secret with repo admin
  scope. Without it the default `GITHUB_TOKEN` returns a reduced view and the
  workflow warns and skips rather than comparing (#85)
- `.skeptic.json` excludes `internal/rules/` and `internal/checks/`, so skeptic
  does not scan its own detection sources. Every pattern it looks for is present
  there as a literal by construction
- Waiver pins cover a whole file, so an unrelated edit invalidates them and two
  pull requests touching the same waived file conflict on the pin (#100)
