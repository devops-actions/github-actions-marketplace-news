---
title: Flare Incident Scope
date: 2026-06-04 07:07:52 +00:00
tags:
  - tryflare-ai
  - GitHub Actions
draft: false
repo: https://github.com/tryflare-ai/incident-scope
marketplace: https://github.com/marketplace/actions/flare-incident-scope
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/tryflare-ai/incident-scope** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flare-incident-scope) to find the latest changes.

## What's Changed

Trigger from any repo during an active incident to get a correlated timeline and AI-generated narrative in a GitHub Issue.   

### What it does                                                                                                                                                                                                                                                    
                                                                 
  1. Pulls cloud audit logs for a time window from your connected GCP environment                                                                                                                                                                                     
  2. Runs AI analysis focused on lateral movement, privilege escalation, and cross-service correlation
  3. Creates a GitHub Issue with a timeline table, narrative summary, and severity counts

### Usage                                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                      
  ```yaml                                                        
  name: Incident Scope            
  on:                       
    workflow_dispatch:                                                                                                                                                                                                                                                
      inputs:
        time_from:                                                                                                                                                                                                                                                    
          description: 'Start of incident window (ISO 8601)'     
          required: true                                                                                                                                                                                                                                              
        time_to:            
          description: 'End of incident window'                                                                                                                                                                                                                       
          required: false                                        
                                  
  jobs:                     
    scope:
      runs-on: ubuntu-latest
      permissions:
        issues: write
      steps:                                                                                                                                                                                                                                                          
        - uses: tryflare-ai/incident-scope@v1
          with:                                                                                                                                                                                                                                                       
            token: ${{ secrets.FLARE_API_KEY }}                  
            time-from: ${{ inputs.time_from }}                                                                                                                                                                                                                        
            time-to: ${{ inputs.time_to }}
                                                                                                                                                                                                                                                                      
  Requirements                                                   
                                  
  - Flare account with a connected GCP connector (sign up)                                                                                                                                                                                                            
  - API key from Settings > API Keys
  - issues: write permission on the workflow                                                                                                                                                                                                                          
                                                                 
  Limits                                                                                                                                                                                                                                                              
                                                                 
  - Max time window: 24 hours     
  - Max events: 5,000 (severity-prioritized truncation)
  - Daily limit: 10 analyses/day                                                                                                                                                                                                                                      
  - Latency: under 90s for windows under 4 hours 


