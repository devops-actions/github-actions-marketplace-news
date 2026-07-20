---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-20 07:27:52 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.8.1
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein orchestrates a crew of CLI coding agents to automate tasks deterministically, ensuring reproducible results end-to-end. It uses plain Python scheduling and record-keeping mechanisms without relying on large language models (LLMs). The action provides features such as deterministic multi-agent orchestration, per-artefact lineage tracking, always-on replay journals, and audit logs for traceability and verification.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.8.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein orchestrates a crew of CLI coding agents to automate tasks deterministically, ensuring reproducible results end-to-end. It uses plain Python scheduling and record-keeping mechanisms without relying on large language models (LLMs). The action provides features such as deterministic multi-agent orchestration, per-artefact lineage tracking, always-on replay journals, and audit logs for traceability and verification.

## What's Changed

# v3.8.1

Patch release: two operator-facing fixes to the local dashboard and a missing runtime dependency, both surfaced by an end-to-end run of the released 3.8.0 build.

## Fixed

- **`bernstein doctor` no longer crashes on a clean install (#2735).** `doctor` (and its adapter last-green, security-floor, and advisory checks) import `packaging.version` at runtime, but `packaging` was only present transitively via dev tooling and was never a declared runtime dependency, so a `uv tool install bernstein` shipped without it and `doctor` raised `ModuleNotFoundError: No module named 'packaging'`. `packaging` is now a direct runtime dependency, with a contract test that fails if any runtime module imports it while it is undeclared.
- **The local dashboard no longer locks the operator out (#2736).** Running `bernstein gui serve` on loopback with dashboard auth configured loaded the UI shell but returned 401 on every data panel, because the local serve path never handed the browser a credential and the bundled SPA wrote the onboarding token to a different localStorage key than the API layer read. The local serve path now seeds a token for the loopback browser, and the shipped SPA bundle was rebuilt so the write and read keys agree. External unauthenticated access still returns 401; the auth posture is unchanged.

## Build

- The bundled web UI could not be rebuilt: an earlier dependency bump moved it to Tailwind v4 while the stylesheet and PostCSS config stayed on the v3 form, so `npm run build` failed. Tailwind is pinned back to the version the configuration targets, and the regenerated bundle ships with this release.

