---
title: Flare Deploy Webhook
date: 2026-05-30 21:44:56 +00:00
tags:
  - tryflare-ai
  - GitHub Actions
draft: false
repo: https://github.com/tryflare-ai/deploy-webhook
marketplace: https://github.com/marketplace/actions/flare-deploy-webhook
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tryflare-ai/deploy-webhook** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flare-deploy-webhook) to find the latest changes.

## Action Summary

The **Flare Deploy Webhook** GitHub Action automates post-deployment security reviews by triggering Flare to analyze cloud audit logs before and after a deployment. It identifies changes such as IAM modifications, new service accounts, permission escalations, and access pattern shifts, providing detailed insights via the Flare dashboard. This action streamlines the detection of potential security risks introduced during deployments, enhancing cloud infrastructure security and compliance.

## What's Changed

## What it does                                                                                                                                                                                                                              
                                                                 
Triggers a post-deploy security review after every deployment. Flare compares your cloud audit logs from before and after the deploy to catch IAM changes, new service accounts, permission escalations, and access pattern shifts.          
                           
Requirements:                                                                                                                                                                                                                      
  - A Flare account with a connected GCP connector ([sign up](https://www.tryflare.ai/sign-up)).
  - One-step integration: add 3 lines to your deploy workflow. Automatic commit SHA and branch detection from GitHub context.
  - Optional environment label (production, staging, etc.). Clear error messages for auth failures and inactive        
  connectors. Outputs analysis timestamp and queued status for downstream steps.                                                                                                                                                    
                                                                                                                                                                                                                                               
Docs:                                                                                                                                                                                                                      
  - [Deploy Webhooks](https://docs.tryflare.ai/deploy-webhooks)
  - [Full docs](https://docs.tryflare.ai)          

## Usage                                                                                                                                                                                                                                      
                                                                 
  ```yaml                          
  name: Flare post-deploy security review
  uses: tryflare-ai/deploy-webhook@v1                                                                                                                                                                                                      
  with: token: ${{ secrets.FLARE_WEBHOOK_TOKEN }}     
