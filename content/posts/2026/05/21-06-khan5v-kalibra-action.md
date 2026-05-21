---
title: Kalibra Compare
date: 2026-05-21 06:43:21 +00:00
tags:
  - khan5v
  - GitHub Actions
draft: false
repo: https://github.com/khan5v/kalibra-action
marketplace: https://github.com/marketplace/actions/kalibra-compare
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/khan5v/kalibra-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kalibra-compare) to find the latest changes.

## Action Summary

The **Kalibra Action** is a GitHub Action designed for automated statistical regression detection in AI agent trace files. It compares baseline and current JSONL trace files, evaluates them against configurable quality gates, and generates a markdown report that is posted as a pull request comment. This action helps streamline the validation of AI model performance changes, automating tasks like detecting regressions, enforcing performance thresholds, and providing detailed feedback within CI/CD workflows.

## What's Changed

First Marketplace release. Statistical regression detection for AI agent   
traces as a CI quality gate.                                                 
                                                                           
## What it does                                                              
                                                                           
- Compares two JSONL trace files (baseline vs current) using Kalibra's       
statistical tests — two-proportion z-test for rates, percentile bootstrap for
 cost/duration/tokens.                 
- Fails the run when a configured threshold is violated
(`success_rate_delta`, `cost_delta_pct`, `duration_delta_pct`, etc.).
- Posts a sticky markdown report as a PR comment — updates in place across   
pushes.                                
- Exposes `direction`, `passed`, and `report` outputs for downstream steps.  
                                                                           
## Usage                                                                     
                                       
```yaml                                                                      
- uses: khan5v/kalibra-action@v1                                           
  with:                                                                      
    baseline: baselines/production.jsonl
    current: current.jsonl                                                   
    require: |                                                             
      success_rate_delta >= -5                                               
      cost_delta_pct <= 20  
```                                               
                                                                             
Or with a config file:                                                     

```yaml                                  
- uses: khan5v/kalibra-action@v1              
  with:                             
    baseline: baselines/production.jsonl                                     
    current: current.jsonl            
    config: kalibra.yml                                                      
```
                                                                           
Tested with                                                                  
                                  
- Kalibra 0.2.3 (installs latest from PyPI by default)                       
- Python 3.12 (configurable via python-version)                            
- pull_request and push triggers       
                                              
Compatibility                       
                                                                             
- Reads Phoenix / OpenInference, OTel GenAI, and flat JSONL trace formats —
auto-detected.                                                               
- Two-dependency install (click, pyyaml) — runner setup is fast.           
                                                                             
See the [Kalibra docs](https://github.com/khan5v/kalibra) for trace format and threshold expression reference.
