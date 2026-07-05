---
title: compose-lint
date: 2026-07-05 06:19:06 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.13.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.13.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## What's Changed


### Added

- **Validated profiles must declare immutable version tags.** The profile ci-smoke
  gate (`scripts/validate_profiles.py`) now rejects a `status: validated` profile
  whose `applies_to.tags` includes a mutable rolling tag (`latest`, `stable`,
  `edge`, `main`, `nightly`, …): such a tag points to a different image over time,
  so a derivation done against it cannot be trusted to still apply to the image a
  consumer later pulls. Exploratory profiles are unaffected, and no existing catalog
  profile uses a mutable tag, so this guards against a future mistake without
  changing current data.
- **Profile schema 1.3: `app_tier_verified`.** An optional top-level block on a
  profile recording that the whole hardening was verified at the **service** level
  — the multi-container stack brought up with every dimension applied and a real
  service-level check passed — a stronger signal than the per-dimension workload,
  which exercises only one container. Fields: `service`, `service_version`,
  `method`, `check`, `verified_date`, `result`, and an optional `over_hardening`
  (`applied` + `result`) that proves the check catches a too-tight config (not a
  rubber stamp). Requires `status: validated` (schema) and `result: pass`
  (ci-smoke gate). Optional and additive — all 1.0–1.2 documents remain valid, and
  it never substitutes for the per-dimension `validated_via` evidence. ADR-017 §10.

### Fixed

- **Profile-enrichment hints no longer collapse across services in text output.**
  The fix-block dedup keyed on `rule_id` alone, so when two services were flagged
  by the same rule but enrichment gave them **different** image-specific guidance
  (e.g. postgres → `cap_add: [CHOWN, DAC_OVERRIDE, SETGID, SETUID]`, caddy →
  `cap_add: [NET_BIND_SERVICE]`), the second service was rendered
  `(see fix above)` — pointing at the *first* service's wrong-image recommendation.
  The dedup now keys on `(rule_id, fix, references)`, so distinct hints each print
  in full while identical fixes still collapse.

### Changed

- **Profile enrichment is now labeled experimental.** The feature is already
  opt-in and off by default (`profiles.enabled`); this makes its provisional
  status explicit. When enrichment is active, compose-lint prints a one-line
  stderr reminder that fix recommendations are advisory, derived for a specific
  invocation, and not validated against your runtime — and the config docs mark
  the section experimental. No behavior change to the findings themselves.
- **Clearer profile-enrichment caveat.** The provenance tail `not independently
  verified here` is replaced with `compose-lint can't see your runtime, confirm
  it fits your setup` — it names the actual limit (a static linter reads the
  compose text, not the running container, and can't confirm the recommendation
  matches your invocation) rather than a vague disclaimer.

### Added

- Profile schema **1.2** (ADR-017 §9): an optional `derivation.run_config` block
  recording the invocation a minimum was derived under — `user`, `command`,
  `entrypoint`, `network`, `pid`, `devices`, `security_opt`, `mounts`, and `env`
  (keys only, never values). A derived minimum is only valid for its invocation
  (postgres run with `user:` set skips the root→user drop and needs none of the
  startup caps a default-invocation profile lists), so a consumer can diff a
  target service against it and downgrade to a hint on divergence. Emitted by
  csd's drop-test producer, not hand-authored. Additive — all 1.0/1.1 documents
  remain valid.
- Opt-in profile enrichment (ADR-017). Set `profiles.enabled: true` and point
  `profiles.path` at a catalog of container-sec-derive (csd) profiles you trust;
  findings from CL-0006/0007/0002/0011/0016 then gain image-specific fix guidance
  — e.g. the observed minimum `cap_add` for that image. Enrichment is advisory
  and additive only (it never creates, drops, or reclassifies a finding) and the
  hint is attributed and marked unverified. Off by default. Per ADR-017 §7,
  compose-lint ships **no catalog of its own** — the catalog is a user-configured
  external source, so the linter neither grows nor endorses profile data.
- Profile contribution path (ADR-017): `scripts/validate_profiles.py` (the
  ci-smoke gate — schema, validated/exploratory invariants, and workload-hash
  verification), a `profile-validate` CI job that runs it on catalog changes, and
  a contributor guide (`docs/profiles.md`).


