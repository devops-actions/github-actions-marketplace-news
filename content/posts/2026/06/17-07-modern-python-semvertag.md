---
title: semvertag
date: 2026-06-17 07:34:33 +00:00
tags:
  - modern-python
  - GitHub Actions
draft: false
repo: https://github.com/modern-python/semvertag
marketplace: https://github.com/marketplace/actions/semvertag
version: 0.7.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/modern-python/semvertag** to version **0.7.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/semvertag) to find the latest changes.

## What's Changed

# semvertag 0.7.1 — bound provider error-body reads

**Patch release. Internal hardening only — no user-facing behavior change.** Both the GitLab and GitHub HTTP clients now cap how much of a 4xx/5xx error body they will read, as a defensive bound against a hostile or malfunctioning forge endpoint. Normal operation is unchanged; you can upgrade with no action.

If you only consume `semvertag` via `uvx` or the `@v0` action and never point it at a non-standard endpoint, there's nothing you need to do — this is belt-and-suspenders.

## What landed

- **1 MiB `max_error_body_bytes` cap on both provider clients** (`semvertag/ioc.py`). httpware raises `ResponseTooLargeError` on a 4xx/5xx whose declared `Content-Length` exceeds the cap, *before* reading the body. 1 MiB is ~200× the largest plausible GitLab/GitHub JSON error body, so it never trips in normal use while still bounding a pathological multi-MB/GB body. ([PR #26](https://github.com/modern-python/semvertag/pull/26))
- **Clear translation.** `ResponseTooLargeError` (an `httpware.ClientError`, not a `StatusError`) is mapped through `_translate_transport` to a `ProviderAPIError` that names the byte counts and the cap; the message is guarded for an undeclared (`None`) content length.

## Why

Both providers read a 4xx/5xx error body to surface a message. Before this release that read was unbounded — a compromised or misconfigured endpoint (e.g. `SEMVERTAG_*__ENDPOINT` pointed at a hostile host) could return an oversized error body that bloats memory and logs. httpware 0.11.0 added an opt-in guard for exactly this; 0.7.0 deferred adopting it because choosing a cap value is a judgment call. This release makes that call (1 MiB) and wires it in.

## Breaking changes

None. The cap is far above any real error body, so behavior is byte-for-byte unchanged in normal operation. The only observable difference is on a pathological oversized error response, which previously read unbounded and now fails fast with a clear `ProviderAPIError`.

## Release procedure

`tag-major.yml` automatically updates the floating `v0` tag on release-published.

```sh
gh release create 0.7.1 \
  --title '0.7.1 — bound provider error-body reads' \
  --notes-file planning/releases/0.7.1.md
```

`publish.yml` fires on release creation and pushes 0.7.1 to PyPI (`just publish` runs `uv version 0.7.1`, builds, and uploads). `tag-major.yml` fires in parallel and force-updates `v0` to point at the 0.7.1 commit.

## See also

- Spec: `planning/changes/archive/2026-06-16.03-httpware-max-error-body-bytes/design.md`
- Implementation plan: `planning/changes/archive/2026-06-16.03-httpware-max-error-body-bytes/plan.md`
- PR: [#26](https://github.com/modern-python/semvertag/pull/26)
- Predecessor: [semvertag 0.7.0](0.7.0.md) — opt-in patch bump for non-merge commits

