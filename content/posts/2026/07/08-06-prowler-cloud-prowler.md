---
title: Prowler Security Scan
date: 2026-07-08 06:31:05 +00:00
tags:
  - prowler-cloud
  - GitHub Actions
draft: false
repo: https://github.com/prowler-cloud/prowler
marketplace: https://github.com/marketplace/actions/prowler-security-scan
version: 5.33.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/prowler-cloud/prowler** to version **5.33.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowler-security-scan) to find the latest changes.

## What's Changed

# ✨ New features to highlight in this version

Enjoy them all now for free at https://cloud.prowler.com

## 🤖 Lighthouse AI — The Agentic Cloud Defender

> [!NOTE]
> This feature is available exclusively in Prowler Cloud and Prowler Enterprise with a [subscription](https://prowler.com/pricing).

Lighthouse AI is now a full agentic assistant wired to the Prowler Cloud backend. Ask it about your findings, your compliance posture, or your riskiest resources, and watch it work: the agent discovers and runs the Prowler tools it needs to answer, with every tool call visible in the new agentic view. It reads your security data through read-only tools, so it can never touch secrets or modify your tenant.

<img width="3456" height="2234" alt="lighthouse-ai-1" src="https://github.com/user-attachments/assets/27189f66-cd85-45a3-9763-ed92d5c89b9b" />

The chat experience is rebuilt around **persistent sessions**: conversations stream in real time, stay in your session history, can be archived, and a **sidebar chat mode** lets you ask questions from any page in the app without losing your place.

<img width="2500" height="1616" alt="lighthouse-ai-2" src="https://github.com/user-attachments/assets/ee6b9a6f-f6fd-42b8-8f79-44a42180d223" />

You control the brain behind it. Configure one or more LLM providers — **OpenAI**, **Amazon Bedrock**, or any **OpenAI-compatible** endpoint (OpenRouter, Ollama) — with connection testing built into the setup and per-provider model selection. Prowler Cloud defaults to **GPT-5.5**. Add a shared **business context** (your security goals, compliance needs, organizational priorities) and every session uses it to give answers that fit your environment.

<img width="3456" height="2234" alt="lighthouse-ai-3" src="https://github.com/user-attachments/assets/9377e737-21fc-4ce0-8c34-d53643eb9c57" />

Read more in our [Lighthouse AI documentation](https://docs.prowler.com/getting-started/products/prowler-cloud-lighthouse) and the [multiple LLM providers guide](https://docs.prowler.com/user-guide/tutorials/prowler-cloud-lighthouse-multi-llm).

## 📄 Compliance PDF Reports Without Credentials

Compliance PDF reports no longer require the provider's credentials to be present. Findings are now enriched from the provider metadata stored in the database, so a report still generates even after the provider secret has been deleted or its credentials have become invalid.

Read more in our [compliance documentation](https://docs.prowler.com/user-guide/cli/tutorials/compliance).

## ⏳ Scan Queueing

Overlapping scans for the same provider now queue behind the active one instead of dispatching concurrent scan workers. Launch a manual scan while a scheduled one is running and it waits its turn. No more duplicated work or racing scans.

## 🔐 Security 

The Kubernetes provider credentials now reject kubeconfigs using `exec` authentication in Prowler Cloud, at the API and in the credential form, preventing user-supplied commands from running on Cloud workers.

Read more in the [Kubernetes provider authentication documentation](https://docs.prowler.com/user-guide/providers/kubernetes/getting-started-k8s#step-2-configure-kubernetes-authentication).

## 🙌 External Contributors

Thank you to our community contributors for this release!

- @kratos0718 — Azure `postgresql_flexible_server_log_retention_days_greater_3` Flexible Server log retention fix [(#11761)](https://github.com/prowler-cloud/prowler/pull/11761)
- @Sanjays2402 — `KeyError: 'MANUAL'` crash fix in the compliance summary table, shipped early in v5.32.1 [(#11823)](https://github.com/prowler-cloud/prowler/pull/11823)

---

## UI


### 🚀 Added

- Owners can delete their last organization from the profile page [(#11864)](https://github.com/prowler-cloud/prowler/pull/11864)

### 🔄 Changed

- Organization row actions in the profile page are aligned in fixed columns and the Active indicator now sits next to the organization name [(#11864)](https://github.com/prowler-cloud/prowler/pull/11864)
- Sentry, Google Tag Manager, and PostHog now load their `UI_*` config only when the matching enable flag (`UI_SENTRY_ENABLE` / `UI_GOOGLE_TAG_MANAGER_ENABLE` / `UI_POSTHOG_ENABLE`) is `"true"` (default off); the deprecated legacy names (`NEXT_PUBLIC_*`, `POSTHOG_KEY`/`POSTHOG_HOST`) still activate without the flag [(#11682)](https://github.com/prowler-cloud/prowler/pull/11682)



## API


### 🚀 Added

- Compliance PDF reports no longer require provider credentials: findings are enriched from the provider metadata stored in the database, so reports generate even after the provider secret is deleted or its credentials become invalid [(#11845)](https://github.com/prowler-cloud/prowler/pull/11845)

### 🐞 Fixed

- Provider scans now queue behind active provider scans instead of dispatching concurrently, and resource failed-finding counters retry database conflicts with stable row locking [(#11848)](https://github.com/prowler-cloud/prowler/pull/11848)



## SDK


### 🐞 Fixed

- Azure resource group scoped scans now keep subscription entries when scoped resource listing fails, clarify helper documentation and test organization, and align the resource group documentation example with the described values [(#11796)](https://github.com/prowler-cloud/prowler/pull/11796)
- Azure `postgresql_flexible_server_log_retention_days_greater_3` check now queries the `logfiles.retention_days` configuration parameter instead of `log_retention_days` (which only exists on the retired Single Server), fixing false `FAIL` results on every Flexible Server regardless of the actual retention value [(#11761)](https://github.com/prowler-cloud/prowler/pull/11761)




