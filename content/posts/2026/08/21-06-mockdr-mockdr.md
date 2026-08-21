---
title: mockdr — Multi-EDR Mock Server
date: 2026-08-21 06:46:10 +00:00
tags:
  - mockdr
  - GitHub Actions
draft: false
repo: https://github.com/mockdr/mockdr
marketplace: https://github.com/marketplace/actions/mockdr-multi-edr-mock-server
version: v2.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `mockdr` GitHub Action is a self-contained mock server that simulates multiple EDR (Endpoint Detection and Response) platforms. It provides realistic data, paths, and response envelopes to help users test their automation scripts without relying on live systems. The action supports popular security platforms like SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel, making it a valuable tool for developers and security professionals.
---


Version updated for **https://github.com/mockdr/mockdr** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mockdr-multi-edr-mock-server) to find the latest changes.

## Action Summary

The `mockdr` GitHub Action is a self-contained mock server that simulates multiple EDR (Endpoint Detection and Response) platforms. It provides realistic data, paths, and response envelopes to help users test their automation scripts without relying on live systems. The action supports popular security platforms like SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel, making it a valuable tool for developers and security professionals.

## What's Changed

Three changes since 2.0.1, all additive. A client written against 2.0.1 needs
no changes — which is what makes this a patch release rather than the minor
the endpoint count might suggest.

## 22 endpoints that had no route at all

These sit around the ones mockdr already served: a client reads the tag
vocabulary before offering it as a filter, checks privileges before showing a
create button, pulls a case's audit trail, lists the actions run against an
endpoint. Each returned 404, so the surrounding workflow could not be
exercised even though its central endpoint worked.

- **Splunk** — `/services`, `/services/apps/local`, `/services/messages` and
  `/services/search/parse`. The last is what `splunklib`'s `Service.parse()`
  uses to validate a query without dispatching it, so it now reports an
  unrunnable query as an error rather than accepting it. Plus KV Store
  `batch_find`, and HEC accepts its token as `?token=` for clients that cannot
  set headers.
- **Kibana platform** — `/api/status`, `/api/features`, `/api/spaces/space`
  and `/api/fleet/agents`, the last derived from the same endpoints the
  metadata API serves so the two inventories agree.
- **Detection engine** — tags, privileges, index, `rules/_bulk_create` (which
  reports per rule rather than failing the batch), `rules/preview`, `_export`
  and `_import`.
- **Cases** — status counts, reporters, `_bulk_get` (which separates hits from
  misses), and `{id}/user_actions`.
- **Endpoint** — `action_log/{id}`, `action_status`, `policy_response`,
  `suggestions`, and the four response actions now also at
  `/api/endpoint/{action}`, where Kibana serves them.

## A Splunk search job's dispatch states can be observed

The search runs synchronously, so a job reported `DONE` on the very first
poll. `QUEUED`, `PARSING`, `RUNNING` and `FINALIZING` were unreachable — the
`isDone` polling loop that `splunklib` documents and every SDK example writes
was never exercised against mockdr, only short-circuited. A loop that never
iterates is a loop that has never been tested.

`MOCKDR_SPLUNK_DISPATCH_SECONDS` walks a job through those states over that
many seconds. It defaults to `0`, keeping the immediate completion 2.0.1 had,
so determinism is opt-out rather than lost. Results stay readable at any
state, because the search really has already run — the window governs what the
job reports, not when it can answer. And `exec_mode=blocking` ignores the
window, because real Splunk blocks until the job is done.

## Ten dependency bumps, taken together

mypy 1.19 → 2.3 and Vite 7 → 8 are the two that could have hurt; neither did.
mypy 2.3 reports no issues across 781 files under `--strict`, and all nine
end-to-end flows pass on Vite 8. Also ESLint 10.8, vue-tsc 3.3, Playwright
1.62, uvicorn 0.52, ruff 0.16.4, pip-audit 2.10.1, pytest-asyncio 1.4 and
@vue/tsconfig 0.9.1.

## Fixed

- `_export` returned a `str`, so FastAPI serialised the NDJSON as one escaped
  JSON string that `_import` could not read.
- The endpoint metadata list took only `per_page` where Kibana sends
  `pageSize`. Both spellings are accepted now.
- The Splunk end-to-end check read `E2E_BASE_URL` — which points at the
  *frontend* — to reach the backend, so overriding it sent the request to the
  dev server, which answers every unknown path with the SPA's `index.html`.
  The check reported the Splunk API broken while it was fine. The backend now
  has its own `E2E_API_URL`.

---

2,759 backend tests, 2,183 frontend unit tests, 9 end-to-end flows.
Full changelog: https://github.com/mockdr/mockdr/blob/main/CHANGELOG.md

