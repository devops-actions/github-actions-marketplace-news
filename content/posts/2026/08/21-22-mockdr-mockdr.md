---
title: mockdr — Multi-EDR Mock Server
date: 2026-08-21 22:02:58 +00:00
tags:
  - mockdr
  - GitHub Actions
draft: false
repo: https://github.com/mockdr/mockdr
marketplace: https://github.com/marketplace/actions/mockdr-multi-edr-mock-server
version: v2.0.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The mockdr GitHub Action is a self-contained multi-EDR mock server designed to simulate responses from SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel APIs. It provides realistic seed data, real API paths, and response envelopes for testing security platforms without the need for real APIs or lab licenses. The action supports SOAR playbooks, SIEM connectors, and automation scripts to point at mockdr without modification, ensuring consistent and deterministic data across all vendors.
---


Version updated for **https://github.com/mockdr/mockdr** to version **v2.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mockdr-multi-edr-mock-server) to find the latest changes.

## Action Summary

The mockdr GitHub Action is a self-contained multi-EDR mock server designed to simulate responses from SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel APIs. It provides realistic seed data, real API paths, and response envelopes for testing security platforms without the need for real APIs or lab licenses. The action supports SOAR playbooks, SIEM connectors, and automation scripts to point at mockdr without modification, ensuring consistent and deterministic data across all vendors.

## What's Changed

A correction release. Everything here fixes something 2.0.2 shipped — ten
routes that answered `200` with a claim that was not true, and one
authentication channel that was more permissive than the product it mocks.

None of it crashed. That is the point: a client cannot detect a success that
is false, so the bug surfaces later, against production. Exposing that failure
mode is what mockdr is for, and in these ten places it was manufacturing it
instead.

## Upgrading

No response shape that was correct in 2.0.2 changes. Two behaviours do, and
both were defects:

- `rules/_import` now reports what it actually did. It previously returned
  `success: true, success_count: 0` for every input, so anything reading that
  as confirmation was reading a fiction.
- HEC no longer honours `?token=` unless `MOCKDR_SPLUNK_HEC_QUERY_STRING_AUTH`
  is set. That is splunkd's own default, and the reason the old behaviour was
  wrong.

## HEC query-string auth, measured against Splunk 10.4.2

2.0.2 taught HEC to accept its token as `?token=` and accepted it
unconditionally, on an assumption I flagged at the time as unverified. It was
wrong — and wrong in the direction that matters, because mockdr was accepting
what a stock indexer rejects. A client validated here would have failed in
production.

Probing a real Splunk 10.4.2 produced two findings the documentation alone
would not have:

| | `allowQueryStringAuth` unset (default) | `allowQueryStringAuth = true` |
|---|---|---|
| no token | `401` code 2 *Token is required* | `401` code 2 |
| `?token=` invalid | `403` code 4 *Invalid token* | `403` code 4 |
| `?token=` valid | `400` code 16 *Query string authorization is not enabled* | `200` code 0 |
| header valid | `200` code 0 | `200` code 0 |

First: splunkd *does* read the parameter, but refuses it with a dedicated
error code unless the setting is on — and it is off by default.

Second, and less obvious: the token is validated *before* the channel is
checked. An invalid token sent by query string is a `403`, not the `400`;
only a valid token ever reaches code 16. Implementing this from intuition
would have put the channel check first and got it backwards.

mockdr reproduces all eight measured cases exactly.
`MOCKDR_SPLUNK_HEC_QUERY_STRING_AUTH` mirrors the `inputs.conf` setting and
defaults to off.

## Ten routes that answered 200 with something untrue

**`_import` never read the request body.** It reported
`success: true, success_count: 0` for any input, so a client could export its
rules, import them into a fresh instance, be told it had worked, and find
nothing there — the round trip a migration check exists to prove was
confirming a success it had never performed. It now parses the NDJSON (raw or
multipart, since Kibana's UI posts a file and scripted clients post the body),
creates each rule, reports a `409` per conflicting `rule_id` unless
`overwrite=true`, and skips `_export`'s trailing summary line rather than
counting it as a rule.

**Three defects in 2.0.2's own dispatch-lifecycle feature, sharing one root
cause.** State was re-derived from elapsed time on every read, so the clock
silently overwrote whatever a control action had just set:

- `finalize` and `cancel` appeared to do nothing — a finalized job went back
  to reporting `QUEUED`.
- `touch` reset the very timestamp the clock reads, sending a running job
  backwards from `RUNNING` to `QUEUED`. Real Splunk's `touch` extends the TTL
  and leaves the search alone.
- A paused job kept running and reported `isDone: 1`.

The fix is to the model, not the symptom: `published_at` is now an immutable
dispatch origin, `touched_at` owns the TTL, `paused_at` freezes the clock, and
an explicit control action wins over the derived state.

**Six more, each substituting a plausible answer for the real one:**

- `/api/detection_engine/privileges` read `username` from an auth context that
  spells it `user`, so every caller was reported as the built-in `elastic`
  superuser — including a `viewer`, whose actual privileges the same response
  then correctly reported as read-only.
- `_bulk_create` rejected `risk_score: 0` as `Invalid value "undefined"`. A
  falsiness check turned a value the client did send into one it appeared to
  have omitted.
- `/api/spaces/space/{id}` returned the default space for any id, so a typo or
  a deleted space read as success and the client wrote into the wrong space.
- `action_status` filed every pending action under `isolate`, so a pending
  `kill-process` was reported as a pending isolation.
- `action_log` documented newest-first and served repository insertion order,
  putting the stalest entry on page 1.
- `/api/exception_lists/summary` answered without a `list_id`, returning
  all-zero counts indistinguishable from a list that genuinely has no items.

## Also

Credential-bearing query parameters are now masked in the request audit log.
The `Authorization` header was already reduced to its last four characters,
but the query string was stored verbatim — so the credential that masking
exists to protect sat in the log in full, one field over. This is hardening
rather than a fix: `/_dev` is admin-gated and publishes tokens through
`/_dev/tokens` by design, so nothing was reachable here that was not already
reachable more directly.

---

2,788 backend tests, 2,183 frontend unit tests, 9 end-to-end flows. mypy
`--strict` clean across 781 files.
Full changelog: https://github.com/mockdr/mockdr/blob/main/CHANGELOG.md

