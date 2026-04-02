---
title: Evil Merge Detector
date: 2026-04-02 06:34:23 +00:00
tags:
  - fimskiy
  - GitHub Actions
draft: false
repo: https://github.com/fimskiy/Evil-merge-detector
marketplace: https://github.com/marketplace/actions/evil-merge-detector
version: v0.1.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/fimskiy/Evil-merge-detector** to version **v0.1.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evil-merge-detector) to find the latest changes.

## Action Summary

The Evil Merge Detector GitHub Action identifies "evil merges" in Git repositories—merge commits that introduce unexpected changes not visible during code review. It automates the detection of these changes, which can bypass reviews, obscure blame tracing, or hide malicious code. Key features include branch and commit-specific scanning, severity categorization, CI integration, and GitHub App support for automated PR checks and notifications.

## What's Changed

Release notes:                                                                                                                
  Detect evil merge commits — changes smuggled into merge commits that bypass code review.                                      
                                                                                                                             
  ## Usage                                                                                                                      
          
  ```yaml                                                                                                                       
  - uses: fimskiy/Evil-merge-detector@v0.1.9                                                                                 
    with:                                                           
      fail-on: warning  # info | warning | critical                                                                             
   
  What it detects                                                                                                               
                                                                                                                             
  Merge commits where the resulting tree differs from what a real merge of the two parents would produce — unauthorized code    
  injected during the merge step, invisible to reviewers.                                                                    
                                                                                                                                
  Inputs                                                                                                                     
                                                                    
  ┌──────────────┬─────────┬───────────────────────────────────────────────┐                                                    
  │    Input     │ Default │                  Description                  │
  ├──────────────┼─────────┼───────────────────────────────────────────────┤                                                    
  │ fail-on      │ warning │ Minimum severity to fail the check            │                                                 
  ├──────────────┼─────────┼───────────────────────────────────────────────┤
  │ severity     │ info    │ Minimum severity to report                    │
  ├──────────────┼─────────┼───────────────────────────────────────────────┤
  │ upload-sarif │ false   │ Upload results to GitHub Code Scanning        │
  ├──────────────┼─────────┼───────────────────────────────────────────────┤                                                    
  │ since        │ —       │ Only scan merges after this date (YYYY-MM-DD) │
  ├──────────────┼─────────┼───────────────────────────────────────────────┤                                                    
  │ ```          │         │                                               │                                                 
  └──────────────┴─────────┴───────────────────────────────────────────────┘ 
