---
title: mockdr — Multi-EDR Mock Server
date: 2026-08-22 22:06:30 +00:00
tags:
  - mockdr
  - GitHub Actions
draft: false
repo: https://github.com/mockdr/mockdr
marketplace: https://github.com/marketplace/actions/mockdr-multi-edr-mock-server
version: v2.0.5
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The mockdr GitHub Action is a self-contained tool designed to provide realistic mock server responses for multiple EDR (Endpoint Detection and Response) platforms including SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel. It automates the process of testing SOAR playbooks, SIEM connectors, and automation scripts against these platforms without the need to use actual vendor APIs or licenses. The action supports various authentication methods and response formats, making it versatile for different use cases such as SOAR development, SIEM integration validation, and pentesting scenarios.
---


Version updated for **https://github.com/mockdr/mockdr** to version **v2.0.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mockdr-multi-edr-mock-server) to find the latest changes.

## Action Summary

The mockdr GitHub Action is a self-contained tool designed to provide realistic mock server responses for multiple EDR (Endpoint Detection and Response) platforms including SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, Elastic Security, Cortex XDR, Splunk SIEM, and Microsoft Sentinel. It automates the process of testing SOAR playbooks, SIEM connectors, and automation scripts against these platforms without the need to use actual vendor APIs or licenses. The action supports various authentication methods and response formats, making it versatile for different use cases such as SOAR development, SIEM integration validation, and pentesting scenarios.

## What's Changed

The release the last three were building towards. 2.0.2, 2.0.3 and 2.0.4
each shipped and were each followed by a correction, because the tool that
found the defect ran *after* the tag. This time every one of those tools ran
before it:

- the full CI mirror, e2e and Docker smoke test included
- the conformance harness against a running Splunk 10.4.2, Elasticsearch
  8.15.0 and Kibana 8.15.0 — with **129 probes**, four times 2.0.4's
- hostile-body probing of all **462 routes**, 17,076 requests
- parser fuzzing, 13,738 inputs
- an adversarial review of everything since 2.0.3

## What that found, and what is left

| | before | after |
|---|---|---|
| Routes answering 500 to a malformed body | 31 | **0** |
| Parser crashes under fuzzing | 2 | **0** |
| Splunk: status/value/type disagreements with the real product | 45 | **0** |
| Elastic/Kibana: status/value/type disagreements | 30 | **0** |

Zero disagreements of the kind a client branches on. What the harness still
reports — 800 Splunk and 97 Elastic `missing_key` findings — is list
endpoints whose real entries carry thirty to sixty content keys where
mockdr's carry a dozen. A client reading one of those keys gets a
`KeyError`, not a wrong answer. That is the next kind of work, and it is
stated here rather than hidden.

"Bug-free" is not a claim anyone can make honestly. This is the claim that
can be: every discovery method that has found a bug in this project has
been run against this release and found nothing of the kind it finds.

## The correction that matters most

**Splunk's JSON types were an inference, and it was wrong.** Since 2.0.1
mockdr stringified every job value — `"1"`/`"0"` for booleans, `"5"` for
counts — reasoning from splunklib's `content["isDone"] == "1"`. That line
is correct for the Atom XML splunklib actually requests, where everything
is text. Measured on Splunk 10.4.2, `output_mode=json` carries real
booleans and integers, on the job list and the single job alike. A client
written against real Splunk's JSON and tested against mockdr's would have
compared `true` to `"1"` and failed in production. Now as measured — down
to `currentDBSizeMB`, which really is a string while its neighbours are
integers.

## Upgrading

No response that was correct in 2.0.4 changes shape. Several that were wrong
do, and every one is listed in the changelog with what the real product
sends instead. The ones a client is most likely to notice:

- Splunk job and index values are native JSON types, not strings.
- `/services` (Splunk) no longer exists; splunkd never had it.
- A wrong HTTP verb on a Splunk collection is `400`, not `405`.
- Kibana refuses a case, rule or exception list missing required fields with
  io-ts's per-field message, where mockdr used to create it.
- Elasticsearch refuses an unknown top-level search key, a negative or
  non-numeric `size`, and a result window past 10,000, each in its own
  exception type.
- 31 routes that answered `500` to `null` or `{}` now answer their vendor's
  `400`.

## Also

`POST /_count`, `/_mget` and `/_bulk` exist at the root now. HEC accepts a
top-level array as a batch, reports `invalid-event-number` as events are
parsed (so a blank event at 0 is reported before broken JSON at 1), and
uses codes 14 and 15 where it used to say 10 and 6. The Splunk parser
classifies `sort`, `tail` and `dedup` as measured, accepts `makeresults`
and `inputlookup`, and no longer splits on a pipe inside a quoted string.

Full changelog: https://github.com/mockdr/mockdr/blob/main/CHANGELOG.md

