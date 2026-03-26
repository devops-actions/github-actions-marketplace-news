---
title: Truss Push
date: 2026-03-26 06:14:35 +00:00
tags:
  - basetenlabs
  - GitHub Actions
draft: false
repo: https://github.com/basetenlabs/action-truss-push
marketplace: https://github.com/marketplace/actions/truss-push
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/basetenlabs/action-truss-push** to version **v0.1.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/truss-push) to find the latest changes.

## Action Summary

The **Truss Push Action** automates the deployment of machine learning models or chains to Baseten, simplifying the deployment pipeline by handling tasks such as detecting models or chains, activating deployments, and optionally validating them via predict requests. It solves the problem of manual deployment and validation by streamlining the process through GitHub Actions, enabling integration with CI/CD workflows. Key capabilities include automatic detection of deployment types, support for environment-specific deployments, validation with custom payloads, and optional cleanup post-validation.

## Release notes

## What’s New

## Chain deployment support
The action now supports deploying Baseten Chains in addition to Truss models. The action auto-detects which type to deploy based on the input path:

## Directory → model (existing behavior, unchanged)
.py file → chain

```
- uses: basetenlabs/action-truss-push@v0.1
  with:
    truss-directory: "./my_chain.py"
    baseten-api-key: ${{ secrets.BASETEN_API_KEY }}
    predict-payload: '{"query": "Hello"}'
```
Chain deployments get the same lifecycle as models: deploy, wait for all chainlets to be ready, optionally run a predict request, and clean up.

## New input:

model-name now also sets the chain name for chain deployments

## New output:

chain-id — the Baseten chain ID (empty for model deploys)
