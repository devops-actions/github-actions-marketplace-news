---
title: a11yscout
date: 2026-04-23 05:55:27 +00:00
tags:
  - jpatel3
  - GitHub Actions
draft: false
repo: https://github.com/jpatel3/a11yscout
marketplace: https://github.com/marketplace/actions/a11yscout
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jpatel3/a11yscout** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/a11yscout) to find the latest changes.

## Action Summary

The `a11yscout` GitHub Action automates WCAG 2.1 A/AA accessibility audits for pull requests, focusing on preview deployments hosted on platforms like Vercel and Netlify. It scans provided URLs for accessibility violations, generates detailed reports, and optionally integrates with source code via a Vite plugin for precise file and line annotations. This tool simplifies accessibility testing for indie developers, reducing friction and ensuring compliance with modern accessibility standards.

## What's Changed

First Marketplace release of a11yscout — WCAG 2.1 A/AA accessibility audits for GitHub pull requests.                                                                                             
                                                                                                                                                                                                    
  ## What it does                                                                                                                                                                                   
                                                                                                                                                                                                    
  Scans any URL with axe-core + headless Chromium, filters to WCAG 2.1 A/AA rules, and posts a sticky PR comment summarizing violations. Outputs JSON + SARIF, so failures can be uploaded to GitHub
   Code Scanning for inline PR annotations.
                                                                                                                                                                                                    
  ## Quick start                                            

  ```yaml
  # .github/workflows/a11y.yml
  on: pull_request                                                                                                                                                                                  
  jobs:
    a11y:                                                                                                                                                                                           
      runs-on: ubuntu-latest                                
      permissions: { contents: read, pull-requests: write }                                                                                                                                         
      steps:
        - uses: jpatel3/a11yscout@v1                                                                                                                                                                
          with:                                                                                                                                                                                     
            urls: https://your-preview-url.example.com
            level: AA                                                                                                                                                                               
            fail-on: serious                                
  ```                                                                                                                                                                                               
                                                            
  ## Optional: source-mapped violations                                                                                                                                                             
   
  Install `@a11yscout/vite-plugin` in your app and PR comments point at the exact JSX file and line (`src/Button.tsx:12:4`) instead of a CSS selector. See the README for setup.                    
                                                            
  ## Inputs                                                                                                                                                                                         
                                                            
  `urls`, `level`, `fail-on`, `wait-for`, `viewport`, `screenshot`, `comment-on-pr`, `upload-artifact`, `github-token`. All have sensible defaults — only `urls` is required.                       
   
  ## Outputs                                                                                                                                                                                        
                                                            
  `report-path`, `sarif-path`, `total-violations`.                                                                                                                                                  
   
  ## Notes                                                                                                                                                                                          
                                                            
  - Runs on any `ubuntu-latest` runner. First run installs Chromium (~30s); cached on subsequent runs.                                                                                              
  - Free for all uses.
  - Source: https://github.com/jpatel3/a11yscout  
