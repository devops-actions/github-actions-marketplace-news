---
title: Lightning Flow Scan
date: 2026-04-05 22:00:46 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.7.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.7.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner GitHub Action is designed to analyze Salesforce Flows for potential issues, such as unsafe practices, anti-patterns (e.g., DML in loops, hardcoded IDs), and security vulnerabilities (e.g., hardcoded secrets). It automates the detection of these problems, providing actionable insights to optimize Flow performance, maintainability, and security. Key capabilities include customizable rules, exception handling, and options for excluding specific Flows from scans.

## What's Changed

### Security Patch: fast-xml-parser                                                                                                    
                                                                                                                                         
  Action: `action-v3.7.1` | Core: `core-v6.19.2` | CLI: `v6.19.2` | VSX: `v3.4.1`                                                        
                                          
  Several dependencies were updated to resolve known vulnerabilities:                                                                    
                                                                                                                                         
  - **fast-xml-parser** updated to resolve security advisories in the XML parsing layer                                                  
  - **minimatch** (Action) bumped from v9 to v10 — resolves a ReDoS vulnerability in older versions                                      
  - **lodash** (VSX) removed — functionality replaced with native alternatives
  - **rollup** (VSX) updated from v4.34 to v4.59 — build tooling security improvements                                                   
  - **Node.js** engine support extended to include v24 in the regex-scanner package
                                                                                                                                         
  ### Platform Changes                        
                                                                                                                                         
  - **Copado Plugin** — The Copado marketplace listing has been delisted by Copado. We hope to restore the integration in the future.
  - **Open VSX** — The Open VSX Registry listing has been deprecated due to maintenance overhead. You can still generate a `.vsix` directly from our repository and install it manually in any compatible editor.
