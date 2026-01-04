---
title: WhyDidItFail
date: 2026-01-04 13:10:12 +00:00
tags:
  - ynathaniel-source
  - GitHub Actions
draft: false
repo: https://github.com/ynathaniel-source/whydiditfail-action
marketplace: https://github.com/marketplace/actions/whydiditfail
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ynathaniel-source/whydiditfail-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/whydiditfail) to find the latest changes.

## Action Summary

The "Why Did It Fail?" GitHub Action automatically analyzes failure logs from your GitHub Actions workflows using AI to provide clear root-cause explanations, fix suggestions, and confidence scores. It helps developers save time by automating the debugging process for CI failures, such as dependency issues or configuration errors, directly within the GitHub Actions UI. The action prioritizes privacy, does not require API keys, and ensures secure handling of logs without accessing the repository's code.

## Release notes

improve file path links, rate limiting UI, and log context                                                                 
                                                                                                                                                                                                          
 - Fix GitHub file link generation with proper path extraction regex                                                                                                                                      
 - Add rate limiting UI with limit, remaining, and reset time display                                                                                                                                     
 - Add grace period support in client and summary                                                                                                                                                         
 - Add code snippets rendering support                                                                                                                                                                    
 - Increase log context window (10 lines before, 30 after errors)                                                                                                                                         
 - Return rate limit info gracefully instead of throwing errors                                                                                                                                           
 - Pass github token to log fetcher for better API access                                                                                                                                                 
 - Use context.job directly for more reliable job identification

**Full Changelog**: https://github.com/ynathaniel-source/whydiditfail-action/compare/v1.0.0...v1
