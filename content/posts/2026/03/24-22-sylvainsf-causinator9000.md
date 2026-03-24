---
title: Causinator 9000 CI Diagnosis
date: 2026-03-24 22:03:44 +00:00
tags:
  - sylvainsf
  - GitHub Actions
draft: false
repo: https://github.com/sylvainsf/causinator9000
marketplace: https://github.com/marketplace/actions/causinator-9000-ci-diagnosis
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sylvainsf/causinator9000** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/causinator-9000-ci-diagnosis) to find the latest changes.

## Action Summary

The Causinator 9000 is a reactive causal inference engine designed to identify and rank the probable causes of infrastructure degradation by analyzing dependency graphs, deployment changes, and observed symptoms. It automates the diagnosis of system issues by tracing causal paths through a dependency DAG, applying Bayesian inference, temporal decay, and hop attenuation to compute confidence scores for potential root causes. This tool is optimized for high performance and integrates seamlessly with PostgreSQL to deliver fast, reliable, and precise root cause analysis for cloud infrastructure.

## Release notes

## Causinator 9000 v1.0.0

First Marketplace release of the C9K GitHub Action.

### GitHub Action

C9K is now available as a GitHub Action. Drop it into any repo to get Bayesian causal diagnosis of CI failures:

```yaml
- uses: sylvainsf/causinator9000@v1
```

**Trigger modes:**
- **`workflow_run`** — auto-comments on PRs when CI fails
- **`schedule`** — creates/updates a weekly digest issue

**Key inputs:** `hours`, `min-confidence`, `create-issue`, `issue-label`, `fail-on-findings`

### Other changes

- **Misdiagnosis feedback** — every report now links to a pre-filled issue template for reporting CPT inaccuracies
- **Issue template** — new "CPT / Heuristic Change Request" form for structured misdiagnosis reports
- **CI release workflow** — `workflow_dispatch` for building and publishing versioned container images
- **k8s source fix** — moved `global ENGINE` declaration before `add_argument` in `k8s_source.py`

### Container

```
docker pull ghcr.io/sylvainsf/causinator9000:1.0.0
```

