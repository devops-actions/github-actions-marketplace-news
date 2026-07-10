---
title: OSS Security Policy as Code
date: 2026-07-10 06:26:52 +00:00
tags:
  - lucashgrifoni
  - GitHub Actions
draft: false
repo: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit
marketplace: https://github.com/marketplace/actions/oss-security-policy-as-code
version: v10.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit** to version **v10.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oss-security-policy-as-code) to find the latest changes.

## What's Changed

## OSS Security Policy as Code Starter Kit v10.0.1

A hardening hotfix for the v10.0.0 surface. An extreme end-user validation sweep — 275 clean-room scenarios run against a seven-lab test project — surfaced 37 confirmed defects. All 37 are fixed here, each pinned by a focused regression test.

**Nothing about how the kit evaluates changed.** No control state, no `summary_by_status`, no `results_digest`, and no exit code moves in this release: fences FT-2, FT-3 and FT-4 all hold. Upgrading from v10.0.0 requires no action and cannot change a gate decision.

---

## Highlights

### Privacy by default (M-002)

Shareable artifacts were leaking the auditor's absolute paths, home directory, and OS username. They no longer do:

- `evaluation-report.md` now redacts per-control evidence bullets through the same `classify_reference` path the JSON report already used. The Markdown report was leaking absolute paths that the JSON report scrubbed.
- The `--format json` stdout summary sanitizes `target_path` to the target's basename.
- `evaluate-many` sanitizes `target_root`, per-run `target_path`, report artifact paths, and skipped-directory paths in both the batch JSON and Markdown.
- `correlate-findings` waiver warnings and `--target` error echoes use the basename or the string you typed — never the resolved absolute path — in the `findings/1.0` artifact and on stderr.

`--include-absolute-path` opts back in wherever this applies, and is now available on `evaluate-many` too.

### Contract honesty

- **`export-evidence` no longer silently accepts a stored pre-2.0 report.** Feeding it a `reports/0.1`/`0.2`/`0.3`/`1.0` report previously produced all-unknown, content-dropped evidence with exit 0. It now fails fast with a clean exit 2 and a pointer to the migration guide, before any renderer runs.
- **`evaluate` now honors `oss-policy-kit.yaml`.** `fail_on`, `output_dir`, and `report_json_contract` are used as fallbacks when the matching flag is omitted. An explicit flag always wins — provenance is tracked via Click's parameter source, so `--fail-on none` still beats a config that says `fail`. Previously `init` wrote these keys and `evaluate` ignored them, which meant a configured gate silently never fired.

---

## Improvements

### Findings surface

Ranking and accounting only — none of these can change a control verdict.

- Malformed SARIF and kit-evidence result **containers** now demote to `status: "error"`, so a corrupt drop is distinguishable from a genuinely empty one.
- Out-of-range EPSS values in an offline snapshot (outside `[0.0, 1.0]`) are ignored, so a garbage number cannot warp ranking.
- `extensions.findings_summary` gains `sources_ok` and `sources_total`, so a genuinely clean zero is distinguishable from an all-unreadable zero.
- A present-but-non-list `waivers:` key now emits an honest warning instead of being silently ignored.
- `correlate-findings` marks waived findings with a `WAIVED` tag in the human view, and resolves a relative `--output`, `--waivers`, and `--enrichment-file` under `--target` (they now agree; previously `--enrichment-file` resolved against the current directory).

### CLI robustness

- A broken output pipe (`| head`, `| less`) exits 0 quietly instead of printing "Unexpected error" and exiting 3.
- `init --with-evidence` scaffolds GitLab evidence templates, which have shipped since v6.4.0 but were being downgraded to a note.
- `COLUMNS` is honored for non-TTY streams, so wrapped error messages use the caller's real width.
- `SOURCE_DATE_EPOCH` is honored by `scan-*` and `export-*` timestamps, for reproducible output.
- `correlate-findings --target ""` is rejected with a clean exit 2 rather than being silently coerced to the current directory.
- `export-evidence` accepts the `-t` / `-o` short flags, matching the other commands.

---

## Security

No vulnerability is fixed in this release. The privacy fixes above close an information-disclosure class in artifacts intended to be shared: absolute paths, home directories, and OS usernames could reach a report that a user would reasonably attach to a ticket or a PR.

Release artifacts are unchanged in shape: signed wheel and sdist, CycloneDX SBOM, and an in-toto provenance attestation.

---

## Upgrading

```text
pip install --upgrade oss-policy-kit
```

No migration is required from v10.0.0. Two behavior changes are worth knowing about:

1. If you have an `oss-policy-kit.yaml` written by `init` and you relied on `evaluate` ignoring its `fail_on` / `output_dir` / `report_json_contract`, `evaluate` now honors them when you omit the corresponding flag. Pass the flag explicitly to override.
2. If you pipe `evaluate --format json` into tooling that expects an absolute `target_path`, pass `--include-absolute-path`.

**Full Changelog**: https://github.com/lucashgrifoni/OSS-Security-Policy-as-Code-Starter-Kit/compare/v10.0.0...v10.0.1

