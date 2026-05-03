---
title: Nyx Security Scanner
date: 2026-05-03 06:40:50 +00:00
tags:
  - elicpeter
  - GitHub Actions
draft: false
repo: https://github.com/elicpeter/nyx
marketplace: https://github.com/marketplace/actions/nyx-security-scanner
version: v0.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/elicpeter/nyx** to version **v0.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nyx-security-scanner) to find the latest changes.

## Action Summary

Nyx is a local-first security scanner that performs cross-language taint analysis on repositories and provides an interactive browser-based UI for reviewing findings. It enables teams to identify and triage security vulnerabilities with detailed dataflow visualizations, severity ratings, and collaborative triage states stored within the repository. Nyx automates security scanning tasks, supports CI pipelines with SARIF output, and ensures privacy by running entirely on the user's machine without requiring cloud integration or account setup.

## What's Changed

Three themes: new data-exfiltration rule, FP reduction tuned against real OSS repos, and recall improvements driven by 9 new real-CVE fixtures.                                                                                                       
                                      
  ## New: data-exfiltration rule                                                                                                                                                                                                                        
  - Separate from SSRF. Fires when sensitive sources (cookie, header, env, file, db, caught exception) reach outbound HTTP body / headers / json across all 10 languages.
  - Plain user-input echoed upstream is suppressed at emission.                                                                                                                                                                                         
  - Sinks: fetch, XHR.send, requests.post, HttpClient.send, OkHttp, RestTemplate, WebClient, http.Post, reqwest/ureq/surf/hyper, Net::HTTP.post, RestClient, libcurl POSTFIELDS.                                                                        
  - Three suppression knobs: sanitizer convention, trusted-destination allowlist, detector toggle.                                                                                                                                                      
                                                                                                                                                                                                                                                        
  ## False-positive reductions (validated against real OSS repos)                                                                                                                                                                                       
  - C++ reinterpret_cast: suppress on byte-pointer / void* / uintptr_t / sockaddr targets. ~70% over-fire reduction on serialization, IPC, socket code.                                                                                                 
  - PHP md5/sha1: suppress in non-crypto contexts (cache keys, ETags, dedup IDs). Tuned against phpmyadmin and nextcloud.                                                                                                                               
  - Path traversal: canonicalize-and-rooted shapes (File.expand_path + start_with?, os.path.realpath + startswith, path.resolve + startsWith) clear FILE_IO. Branch-narrowing flips lock under negation.                                                
  - Go field-LHS resource acquires (b.cpuprof = os.Create(...)) treated as ownership transfer to enclosing struct. Production trigger: prometheus tsdb profiler.                                                                                        
  - Rust missing_ownership_check: caller-scope-entity exemption for organization/project/team/workspace/tenant; non-web Rust crates gated by Cargo.toml + per-file framework import probe; Flask test-decorator denylist (mock.patch). Reduced FP flood 
  across Sentry / Saleor / Discourse / Mastodon / zed-shaped repos.                                                                                                                                                                                     
  - JS/TS empty-string fallback secret no longer fires on `process.env.X || ""`.                                                                                                                                                                        
                                                                                                                                                                                                                                                        
  ## Recall (9 new real-CVE fixtures, 21 → 29 total)                                                                                                                                                                                                    
  - CVE-2023-22621 (Strapi / lodash _.template SSTI → RCE)                                                                                                                                                                                              
  - CVE-2026-25544 (Payload CMS Drizzle SQLi via helper-validator)                                                                                                                                                                                      
  - CVE-2021-21288 (CarrierWave SSRF via OpenURI.open_uri)                                                                                                                                                                                              
  - CVE-2023-38337 (rswag path traversal)                                                                                                                                                                                                               
  - CVE-2022-1471 (SnakeYAML deserialization)                                                                                                                                                                                                           
  - CVE-2022-42889 (Apache Commons Text RCE)                                                                                                                                                                                                            
  - and 3 more.                                                                                                                                                                                                                                           
  - Cross-function helper-validation propagation (validated_params_to_return) recognizes regex-allowlist guards on params reaching return value.                                                                                                        
  - Ruby OpenURI.open_uri + chained-call wrapper classification.                                                                                                                                                                                        
  - Lodash _.template gated CODE_EXEC sink.                                                                                                                                                                                                             
                                                                                                                                                                                                                                                        
  ## Other                                                                                                                                                                                                                                              
  - Action download warning bumped to v0.6.0.                                                                                                                                                                                                           
                                                                                                                                                                                                                                                        
  Full changelog: CHANGELOG.md   
