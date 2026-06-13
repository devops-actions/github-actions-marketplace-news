---
title: compose-lint
date: 2026-06-13 22:08:17 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.12.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.12.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## What's Changed


### Security

- CL-0021 no longer exhibits quadratic (ReDoS) behavior on crafted env values.
  A value shaped like `scheme://<many chars>:<many chars>` with no terminating
  `@` made the connection-string regex rescan the tail from every offset —
  O(n^2) on attacker-controlled input, a cheap DoS when sweeping untrusted
  Compose files. The rule now bails before scanning when the value contains no
  `@` (the pattern requires one, so this changes no findings).
- The text formatter now escapes terminal-unsafe code points — C0/C1 controls
  (ANSI/escape-sequence injection), DEL, and bidirectional/zero-width formatting
  characters — in every string derived from an untrusted Compose file (finding
  messages, fix text, service names, paths, and the on-disk source excerpt). A
  crafted image or service name could previously smuggle a U+202E override (to
  make a malicious tag render as a benign one) or, via the source excerpt that
  is read straight off disk and bypasses the parser's printable-character check,
  a raw ANSI escape into a terminal or CI log. They now render as visible
  `\uXXXX` escapes. JSON and SARIF output were already safe (`ensure_ascii`).
- The corpus fetcher (`scripts/corpus/`, development tooling) now pins the
  download host and refuses redirects. It rewrites `github.com` blob URLs to
  `raw.githubusercontent.com`, but a candidate whose prefix didn't match was
  left intact and fetched verbatim, and `urlopen` follows redirects by default —
  so a malformed or hostile candidate URL could have turned a download into a
  request against an internal or attacker-chosen host (SSRF). The fetcher now
  rejects any non-`https://raw.githubusercontent.com/` URL before opening it and
  uses an opener that does not follow redirects. Candidate URLs come from the
  GitHub API, so this is defense-in-depth.

### Added

- ADR-016 records the runtime rule-premise validation bar — the second,
  `docker run`-based arm of rule grounding that `scripts/validate_rule_premises.py`
  and the `rule-premises` CI job already enforce. It captures *why* the policy
  exists (the CL-0022 rework and CL-0023 removal), which previously lived only in
  the CHANGELOG and the script's docstring, and extends ADR-002.
- A registry-wide consistency test (`tests/test_rule_consistency.py`) that fails
  if any rule's emitted `Finding.rule_id`/`severity` drift from its
  `metadata.id`/`severity`. Each rule states these twice and nothing else tied
  them together, so a typo could desynchronise the SARIF rule descriptor's
  `security-severity` from a result's `level`. Deliberate per-finding escalation
  (CL-0011, CL-0013) is declared in an allow-list; adding it elsewhere is a test
  failure by design.


