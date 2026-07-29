---
title: Hermes Action Safety Gate
date: 2026-07-29 23:10:40 +00:00
tags:
  - JesseGdotIO
  - GitHub Actions
draft: false
repo: https://github.com/JesseGdotIO/hermes-action-safety
marketplace: https://github.com/marketplace/actions/hermes-action-safety-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, Hermes Action Safety Gate, automates the process of verifying and recording decisions before executing potentially high-risk or critical CI actions such as deploys, migrations, or infrastructure changes. It helps prevent accidental execution of these actions without proper approval by providing a third-party decision record that can be verified by anyone at a public URL. The action ensures that only safe commands are executed, enhancing the security and traceability of deployments in continuous integration workflows.
---


Version updated for **https://github.com/JesseGdotIO/hermes-action-safety** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hermes-action-safety-gate) to find the latest changes.

## Action Summary

This GitHub Action, Hermes Action Safety Gate, automates the process of verifying and recording decisions before executing potentially high-risk or critical CI actions such as deploys, migrations, or infrastructure changes. It helps prevent accidental execution of these actions without proper approval by providing a third-party decision record that can be verified by anyone at a public URL. The action ensures that only safe commands are executed, enhancing the security and traceability of deployments in continuous integration workflows.

## What's Changed

Gate consequential CI actions and attach a decision record anyone can verify.

```yaml
- uses: JesseGdotIO/hermes-action-safety@v1
  with:
    api-key: ${{ secrets.HERMES_API_KEY }}
    command: wrangler deploy
    intent: ship the verified release to production
    environment: production
```

**What it is for.** A GitHub environment gives you a human approving a *job*. It does not give you evidence of *what* was approved, or an assessment from anywhere other than the team making the change. This produces a third-party decision record, hash-bound to the exact command, environment, and commit, fetchable by anyone without an account.

**Design choices**

- **No bundled `dist`.** `scripts/gate.mjs` is the entire implementation, dependency-free and short enough to read before you trust it. A security control that ships as minified output is self-defeating.
- **Fail-closed by default**, including when the gate itself cannot reach a decision — unreachable API, rejected key, exhausted quota. A gate that vanishes when it breaks is not a gate. Set `fail-closed-on-error: false` and `fail-on: never` to run it advisory for a week first.
- **`needs_review` is triage, never approval.** It is never rendered as human-approved, and a test enforces that.
- **The API key is redacted** from every error path.

**Cost.** The free tier is 250 calls/month, no wallet or card. That comfortably covers production deploys. Put the gate on the actions that would hurt — gating every push is how you burn quota on `npm test`.

**Verification.** 16 network-free tests cover risk thresholds, fail-closed and advisory modes, quota and auth failures, key redaction, and the exact request payload. CI additionally runs the composite action end to end on a runner.

Pin to a commit SHA for supply-chain safety.

