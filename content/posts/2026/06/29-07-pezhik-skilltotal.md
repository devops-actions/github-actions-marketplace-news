---
title: SkillTotal AI Component Security Scan
date: 2026-06-29 07:11:26 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.22.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.22.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Changed
- **Evasion hardening (ruleset 23): three real detector bypasses closed, FP-safe.** Surfaced by the
  new efficacy benchmark's evasion variants:
  - **base64 module-alias decode-exec** — `import base64 as b; exec(b.b64decode(remote))` now fires
    `ST-OBF-DECODE-EXEC` (the decode-exec regex tolerates an alias prefix before `b64decode`).
  - **indirect eval** — `(0, eval)(atob(remote))` (and `Buffer.from`) now fires `ST-OBF-DECODE-EXEC`.
  - **concatenation-built credential paths** — `os.path.expanduser('~') + '/.aws/credentials'` /
    `os.environ['HOME'] + '/.ssh/id_rsa'` now fire `ST-SENS-PATH-PY` (AST `BinOp` check), so the
    credential-exfil combo (`ST-COMBO-EXFIL`) is no longer evaded by building the path in pieces.
  Denylist/guardrail and literal-payload false-positive guards are preserved; the full FP floor and
  benign corpus stay at zero false positives. New positive evasion samples added to the corpus.

### Added
- **Detection-efficacy benchmark (recall / precision) + continuous gate.** A labeled offline corpus
  of synthetic malware/benign samples (`tests/eval_corpus/`, one technique per directory) plus a
  harness (`tests/manual_eval/efficacy.py`) that measures recall (overall + per technique + per
  OWASP class), precision / false-positive rate, and a per-language coverage matrix.
  `tests/test_efficacy_floor.py` enforces 100% recall and zero false positives on every commit,
  alongside the existing smoke floor. Results are published in `docs/efficacy-report.md`; the
  honest language-coverage boundary (Python/Node/shell semantic vs. deferred Go/Rust/Java/Ruby/PHP)
  is documented in `docs/language-scope.md`. Test/doc tooling only — no detection or ruleset change.


