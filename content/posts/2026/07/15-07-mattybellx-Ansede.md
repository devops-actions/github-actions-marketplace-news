---
title: ansede-static
date: 2026-07-15 07:01:57 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Ansede
marketplace: https://github.com/marketplace/actions/ansede-static
version: v6.4.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Ansede is an open-source static application security testing (SAST) tool that focuses on detecting authorization flaws, including the CWE-639 IDOR vulnerability. It provides 100% recall of known CVEs and a low level of noise in production code compared to existing tools like Semgrep, CodeQL, and Bandit. Ansede offers full offline functionality and supports multiple programming languages.
---


Version updated for **https://github.com/mattybellx/Ansede** to version **v6.4.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansede-static) to find the latest changes.

## Action Summary

Ansede is an open-source static application security testing (SAST) tool that focuses on detecting authorization flaws, including the CWE-639 IDOR vulnerability. It provides 100% recall of known CVEs and a low level of noise in production code compared to existing tools like Semgrep, CodeQL, and Bandit. Ansede offers full offline functionality and supports multiple programming languages.

## What's Changed

## [6.3.0] — 2026-07-13

### Added
- **CWE-639 IDOR Detection** — World-first among open-source SAST tools. Detects
  Insecure Direct Object Reference patterns across Express/DAO (JS), Django ORM
  (Python), Flask-SQLAlchemy (Python), and Spring Boot JPA (Java). Identifies route
  parameters used in database queries without session/ownership verification.
- **Variable propagation in fallback detectors** — All three language analyzers
  (JS, Python, Java) now trace taint through variable assignments, enabling detection
  of patterns like `const x = req.query.file` → `fs.readFile(x)`.
- **Struts2/Spring parameter binding detection** — Java fallback now recognizes
  implicit taint sources from framework parameter binding (setters, `@RequestParam`,
  `@PathVariable`) in addition to explicit `getParameter()` calls.
- **Django ORM `.raw()` propagation** — Multi-hop taint tracing through string
  concatenation assignments: `name = request.GET.get('q')` → `sql = "SELECT..." + name`
  → `Model.objects.raw(sql)`.

### Improved
- **Known-vulnerability detection: 88.6% → 91.4%** across 4 test applications
  (NodeGoat, goof, pygoat, dvja) covering 35 CWE instances.
- **Production noise: 0.04 findings/kLOC** — Verified across 16 real production
  repositories (366,638 LOC). Scanner correctly identifies well-written production
  code as clean.
- **Python fallback cap** — Increased from 20 to 25 with injection CWE prioritization
  to prevent CWE-89/CWE-78 truncation.
- **Java `Runtime.exec()` pattern** — Now matches `runtime.exec(command)` where
  `command` is a variable, not just chained `.exec(var + "...")`.

### Fixed
- **Confidence pipeline bug** — `pattern-rust` analysis kind now recognized as
  structural evidence, preventing false demotion of legitimate findings.
- **Paren-location bug** — `_arg_contains_taint` now correctly locates the opening
  parenthesis in regex-matched sink patterns across all three language fallbacks.
- **SQLAlchemy parameterized query FP** — `.execute(text(...), {'key': var})` now
  correctly identified as safe (parameterized).
- **CWE-22 method-call FP** — `f.read()`, `obj.write()` patterns no longer flagged
  as path traversal.
- **Python CWE-22 secure_filename guard** — Files using `werkzeug.utils.secure_filename`
  are now correctly excluded from path traversal detection.

### Performance
- 1,215 tests passing (96.4%)
- CVE recall: 100% (164/164 across 5 languages)
- 16-repo production benchmark: 0.04 findings/kLOC average


