---
title: JWTShield CI
date: 2026-05-02 21:31:41 +00:00
tags:
  - redbullhorns
  - GitHub Actions
draft: false
repo: https://github.com/redbullhorns/jwtshield-ci
marketplace: https://github.com/marketplace/actions/jwtshield-ci
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/redbullhorns/jwtshield-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jwtshield-ci) to find the latest changes.

## Action Summary

The `jwtshield-ci` GitHub Action automates authentication regression testing and detects issues with JSON Web Token (JWT) configurations, such as JWKS rotation drift, incorrect token claims, and insecure algorithm policies. It helps identify and prevent silent JWT-related bugs before they reach production by running pre-configured tests during CI workflows, providing detailed findings, and failing builds on high-severity issues. This ensures robust authentication policies and minimizes the risk of security vulnerabilities.

## What's Changed

## v1.0.0 — first public release                                                                       
                                                        
  `jwtshield-ci@v1` ships JWT/OIDC validation as a 5-line GitHub Actions step.                           
   
  ```yaml                                                                                                
  - uses: redbullhorns/jwtshield-ci@v1                  
    with:                                                                                                
      issuer: https://login.example.com
      audience: api://backend                                                                            
      fail-on-severity: high                            
      api-key: ${{ secrets.JWTSHIELD_API_KEY }}                                                          
                                                                                                         
  What it catches                                                                                        
                                                                                                         
  - JWKS rotation drift — keys rotated without overlap; verifiers go dark                                
  - Wrong audience claims — tokens accepted by the wrong service
  - OIDC config drift — stale issuer / JWKS URI / algorithm policy                                       
  - alg=none and confused-deputy attacks — explicit allowlist enforcement                                
                                                                                                         
  Modes                                                                                                  
                                                                                                         
  - Lint mode (no token input): runs /v1/lint/oidc-config against your issuer.                           
  - Regression mode (with token input): runs /v1/test/auth-regression with your policy.
                                                                                                         
  Outputs                                                                                                
                                                                                                         
  status · findings-count · evidence-url                                                                 
                                                        
  Trust posture                                                                                          
                                                        
  Synthetic tokens only. Zero token retention. Audit trail at https://jwtshield.com/runs/<id>.           
   
  Pricing                                                                                                
                                                        
  Starter $0 (200 verifies/mo) → Developer $49 → Startup $99 → Team $199 → Enterprise custom.            
                                                        
  Versioning                                                                                             
                                                        
  Pin @v1.0.0 for exact, or @v1 for the floating major.                                                  
   
  Full README: https://github.com/redbullhorns/jwtshield-ci#readme                                       
  Docs: https://jwtshield.com/docs
