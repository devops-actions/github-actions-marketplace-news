---
title: qcrypt-scan
date: 2026-04-28 06:11:41 +00:00
tags:
  - varmabudharaju
  - GitHub Actions
draft: false
repo: https://github.com/varmabudharaju/qcrypt
marketplace: https://github.com/marketplace/actions/qcrypt-scan
version: v0.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/varmabudharaju/qcrypt** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/qcrypt-scan) to find the latest changes.

## Action Summary

The `qcrypt` GitHub Action is designed to scan codebases for cryptographic vulnerabilities to quantum computing threats. It identifies at-risk cryptographic primitives, evaluates their quantum resistance, and provides actionable insights for fixing vulnerabilities before quantum computers pose a real risk. This tool automates the detection and reporting of quantum-vulnerable cryptography in CI pipelines, offering features like language support across 11 programming languages, NIST deadline tracking, and context-aware PR comments for streamlined remediation.

## What's Changed

First public release on npm and GitHub Marketplace.                                                              
                                                                                                                   
  ### Added                                                                                                      
  - One-click folder picker in the local web dashboard.                                                            
  - `--open` flag for `--serve` that auto-launches the browser.                                                    
  - Friendly error message when the requested port is already in use.                                              
                                                                                                                   
  ### Changed                                                                                                      
  - `npm install` now auto-builds both the CLI and the React dashboard via the `prepare` lifecycle hook.           
  - Dashboard advertises local-path scanning when running against the local Fastify server.                        
                                                                                                                   
  ### Fixed                                                                                                        
  - `--serve` fallback handler when `web/dist/` is missing (instead of silent 404s).                               
  - Dead darwin-arm64-only dependency removed (was breaking installs on Linux/Windows/Intel Mac).                  
                                                                                                                   
  Install paths:                                                                                                   
  - Hosted: https://qcrypt.dev                                                                                     
  - npm: `npx qcrypt-scan https://github.com/your-repo`                                                            
  - GitHub Action: `uses: varmabudharaju/qcrypt@v1` 
