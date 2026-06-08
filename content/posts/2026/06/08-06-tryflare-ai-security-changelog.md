---
title: Flare Security Changelog
date: 2026-06-08 06:54:09 +00:00
tags:
  - tryflare-ai
  - GitHub Actions
draft: false
repo: https://github.com/tryflare-ai/security-changelog
marketplace: https://github.com/marketplace/actions/flare-security-changelog
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tryflare-ai/security-changelog** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flare-security-changelog) to find the latest changes.

## What's Changed

Weekly AI-synthesized cloud security summary delivered as a GitHub Issue and committed Markdown.                                                                                                                                              
                                                                                                                                                                                                                                                
  ## What's included                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                
  - **Risk-scored weekly changelog** -- AI analyzes 7 days of cloud audit logs and assigns a 0-10 risk score                                                                                                                                    
  - **Week-over-week comparison** -- automatic trend detection (up/down/flat) across identity, permissions, access, and resource categories                                                                                                     
  - **Dual output** -- human-readable Markdown committed to your repo + structured JSON for automation                                                                                                                                          
  - **GitHub Issue delivery** -- each week's summary posted as an Issue with risk label (LOW RISK / ELEVATED / HIGH RISK)                                                                                                                       
  - **Git-versioned security history** -- `git log SECURITY-CHANGELOG.md` becomes a narrative timeline of your cloud security posture                                                                                                           
                                                                                                                                                                                                                                                
  ## Usage                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                
  ```yaml                                                        
  name: Security Changelog               
                                         
  on:                                    
    schedule:
      - cron: '0 9 * * 1'
    workflow_dispatch:                                                                                                                                                                                                                          
   
  permissions:                                                                                                                                                                                                                                  
    contents: write                                              
    issues: write                  
                          
  jobs:                                  
    changelog:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v4
        - uses: tryflare-ai/security-changelog@v1                                                                                                                                                                                               
          with:
            token: ${{ secrets.FLARE_WEBHOOK_TOKEN }}                                                                                                                                                                                           
                                                                                                                                                                                                                                                
  Requirements                     
                                                                                                                                                                                                                                                
  - Flare account with a connected GCP connector and active scheduled analysis (sign up)                                                                                                                                                        
  - Webhook token from the Connectors page, stored as a repo secret
