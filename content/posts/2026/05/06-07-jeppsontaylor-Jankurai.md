---
title: Jankurai
date: 2026-05-06 07:29:33 +00:00
tags:
  - jeppsontaylor
  - GitHub Actions
draft: false
repo: https://github.com/jeppsontaylor/Jankurai
marketplace: https://github.com/marketplace/actions/jankurai
version: v0.8.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jeppsontaylor/Jankurai** to version **v0.8.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jankurai) to find the latest changes.

## Action Summary

Jankurai is a repository control plane and CLI tool designed to audit and enforce AI-assisted merge standards by identifying and addressing issues like security gaps, tooling failures, and generated code drift. It automates tasks such as creating auditable reports, proof artifacts, and repository-local evidence while enabling teams to adopt best practices and CI gates incrementally. Its key capabilities include generating human- and agent-readable files, scoring repository health, and supporting reproducible merge decisions through structured, local evidence.

## What's Changed

Jankurai `v0.8.0` publishes the first Marketplace-ready CI action for running the Jankurai repository audit in GitHub Actions.

<img width="1536" height="1024" alt="jankurai_header" src="https://raw.githubusercontent.com/jeppsontaylor/Jankurai/main/assets/jankurai_github_header_transparent.png" />

  Jankurai helps teams make AI-assisted merges reviewable by turning ownership maps, proof lanes, generated-zone policy, security
boundaries, score history, merge witnesses, and repair queues into local evidence files.

  ### What this action does

  - Installs the Jankurai CLI on the runner.
  - Runs `jankurai audit` in `advisory`, `observe`, or `ratchet` mode.
  - Writes JSON and Markdown audit reports.
  - Writes SARIF, GitHub step summary output, and a repair queue JSONL artifact.
  - Supports baseline-backed ratchet mode with `agent/repo-score.json`.

  ### Example

  ```yaml
  name: Jankurai Audit

  on: [pull_request, push]

  jobs:
    audit:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v6
        - uses: jeppsontaylor/Jankurai@v0.8.0
          with:
            mode: advisory

  ### Inputs

  - mode: observe, advisory, or ratchet. Defaults to advisory.
  - baseline: baseline score JSON path for ratchet mode. Defaults to agent/repo-score.json.

  ### Notes

  - Jankurai is a local audit CLI and repository standard, not a hosted AI service.
  - The action does not require secrets.
  - The project does not send repository contents to a hosted Jankurai service.
  - Jankurai is pre-1.0, so public CLI behavior and report schemas may still evolve with compatibility notes.

  ### Release identity

  - Standard version: 0.8.0
  - Auditor version: 0.8.0
  - Report schema: 1.5.0
  - Paper edition: 2026.05-ed8
  - License: MIT


  ## Validation Before Clicking Publish

  Run and keep receipts for:

  ```bash
  cargo test -p jankurai --test action_metadata_smoke
  cargo run -p jankurai -- versions
  just fast
  just score

  Then test the action from a separate throwaway repository using jeppsontaylor/Jankurai@v0.8.0 or the candidate SHA. Stop if the
  action cannot install Jankurai from the action repository, if Marketplace rejects the repo because of workflow files, or if GitHub
  reports the action name Jankurai is unavailable.

