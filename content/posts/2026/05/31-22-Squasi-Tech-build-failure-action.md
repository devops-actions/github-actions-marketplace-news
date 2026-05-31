---
title: BuildFailure - Deployment Failure Analysis
date: 2026-05-31 22:15:34 +00:00
tags:
  - Squasi-Tech
  - GitHub Actions
draft: false
repo: https://github.com/Squasi-Tech/build-failure-action
marketplace: https://github.com/marketplace/actions/buildfailure-deployment-failure-analysis
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Squasi-Tech/build-failure-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/buildfailure-deployment-failure-analysis) to find the latest changes.

## Action Summary

The BuildFailure GitHub Action automates AI-powered root cause analysis (RCA) for failed CI/CD workflows by analyzing logs, workflow configurations, repository context, and commit diffs. It identifies the root cause of failures, provides remediation scripts, and delivers insights with confidence scores to your BuildFailure dashboard or integrated tools like Slack and email. This action simplifies debugging by securely offloading log analysis to a server-side backend, ensuring sensitive data protection while supporting multiple AI providers.

## What's Changed

Major rewrite: the action is now a **metadata-only ping**. Log content is fetched server-side by the BuildFailure backend using the GitHub OAuth token from your buildfailure.com account.

### Why
The previous version captured logs from inside the failing job, which (1) ran into GitHub's "in-progress job logs are empty" timing race and (2) created an abuse vector — anyone could inflate the payload or inject synthetic log content into the AI prompt. v2 closes both.

### What changed
- **No `GITHUB_TOKEN` needed.** Drop the `env: GITHUB_TOKEN: \${{ secrets.GITHUB_TOKEN }}` block from your workflow.
- **No `permissions:` block needed.** The OAuth token used to fetch logs is the one stored on buildfailure.com.
- **Backend fetches logs.** The backend polls the GitHub Actions API until the failed job finalises, then pulls the full job log — no more empty-payload race.
- **`endpoint` input is allowlisted** to `*.buildfailure.com` (and `localhost` for dev). Cannot be redirected to a third-party server.
- **`ai-key` sanity check** at ingest catches confused provider/key pairings.

### Minimal usage

\`\`\`yaml
- name: BuildFailure RCA
  if: failure()
  uses: Squasi-Tech/build-failure-action@v2
  with:
    repo-key: \${{ secrets.RCA_AGENT_KEY }}
    ai-provider: gemini
    ai-key: \${{ secrets.RCA_AI_KEY }}
\`\`\`

### Upgrade from v1

Replace \`@v1\` with \`@v2\`, then delete the \`env: GITHUB_TOKEN: …\` block. That's it. The backend accepts and discards any extra fields old action versions send, so there's no rush to upgrade — but v2 is faster and produces better RCAs because the backend gets the complete logs.

### Setup
Full guide: <https://buildfailure.com/docs>
