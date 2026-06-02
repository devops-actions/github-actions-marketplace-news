---
title: Flare PR Security Check
date: 2026-06-02 23:35:31 +00:00
tags:
  - tryflare-ai
  - GitHub Actions
draft: false
repo: https://github.com/tryflare-ai/pr-security-check
marketplace: https://github.com/marketplace/actions/flare-pr-security-check
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tryflare-ai/pr-security-check** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flare-pr-security-check) to find the latest changes.

## What's Changed

Catch IAM misconfigurations, overly broad permissions, and privilege escalation paths before they reach production.                                                                                                                                                                             
                           
  ## What it does                                                                                                                                                                                                 
                                                                 
Reviews Terraform, CloudFormation, and IAM policy changes on every pull request.                                                                                                                                  Posts findings as a PR comment with severity scores, plain-English explanations, and specific fix suggestions.                                                                                                                                                                                   
                                                                 
Features                                                       
                                  
* 10 security categories  - broad IAM roles, public access, privilege escalation, hardcoded secrets, network exposure, missing encryption, and more                                                              
* Configurable threshold - fail on critical, high, medium, low, or never
* Smart prioritization -  IAM files reviewed first when diffs are large                                                                                                                                          
* Updates in place - re-runs update the existing comment, no duplicates                                                                                                                                         
* No connector required - works with any GitHub repo that has IaC files    
 
Setup                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                  
  1. Create an API key at tryflare.ai/settings                                                                                                                                                                    
  2. Add it as a repo secret (FLARE_API_KEY)
  3. Add the workflow to .github/workflows/flare.yml                                                                                                                                                              
                                                                                                                                                                                                                  
  Full docs: docs.tryflare.ai/pr-security-check 

Quick start                                                                                                                                                                                                  
                                                                 
  ```yaml                         
uses: tryflare-ai/pr-security-check@v1
with: token: ${{ secrets.FLARE_API_KEY }}
