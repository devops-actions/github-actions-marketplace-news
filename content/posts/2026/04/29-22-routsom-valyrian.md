---
title: Valyrian Edge LLM Security Scan
date: 2026-04-29 22:03:14 +00:00
tags:
  - routsom
  - GitHub Actions
draft: false
repo: https://github.com/routsom/valyrian
marketplace: https://github.com/marketplace/actions/valyrian-edge-llm-security-scan
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/routsom/valyrian** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/valyrian-edge-llm-security-scan) to find the latest changes.

## Action Summary

Valyrian Edge is an open-source security platform designed for AI-powered applications, providing autonomous penetration testing for vulnerabilities specific to large language models (LLMs). It automates the detection of issues like prompt injection, data exfiltration, and insecure plugin design using 77 attack templates, 10 specialized agents, and a mutation engine for generating diverse payloads. Its comprehensive capabilities include multi-turn attack simulations, verified findings to minimize false positives, and support for multiple reporting formats, offering robust coverage of the OWASP LLM Top 10 vulnerabilities.

## What's Changed

Valyrian Edge v1.0.1 — First Release
                                                                                                 
  The open-source Burp Suite for LLMs.
                                                                                                 
  Valyrian Edge is an autonomous penetration testing platform built specifically for LLM-powered 
  applications — chatbots, RAG systems, and agentic AI. Where traditional security scanners are  
  blind to prompt injection and model abuse, Valyrian Edge was built for exactly these threats.  
                                                                                                 
  ---
  What's included
                 
  77 attack templates across all OWASP LLM Top 10 categories
  YAML-based, human-readable templates covering prompt injection, data exfiltration, insecure    
  output, tool abuse, DoS, supply chain, overreliance, model theft, and excessive agency. 248    
  payloads ready to fire.                                                                        
                                                                                                 
  Mutation engine with 8 strategies                                                              
  Every payload can be automatically mutated — base64 encoding, ROT13, case swapping, synonym
  replacement, XML/JSON wrapping, whitespace injection, multi-language translation, and          
  fragmentation. Turn one payload into dozens.
                                                                                                 
  10 specialised security agents                                                                 
  One agent per OWASP LLM Top 10 category. Each agent runs multi-turn conversation attacks,
  verifies findings against configurable matchers, and generates proof-of-concept exploits.      
   
  Programmatic SDK                                                                               
  ValyrianEdge, ScanSession, DirectRunner, and TemporalRunner — embed scans directly in your     
  code. No CLI required, no Docker required in direct mode.                                      
   
  Real-time web dashboard                                                                        
  Zero-dependency SSE dashboard. valyrian dashboard --port 3000 and watch scans live in the      
  browser.                                                                                       
   
  GitHub Action + SARIF output                                                                   
  Drop into any CI pipeline. Findings upload directly to GitHub's Security tab as Code Scanning  
  alerts. Configurable fail thresholds by severity.                                              
                                                                                                 
  Community plugin system                                                                        
  Install community attack templates with valyrian plugin install. Publish your own via a        
  valyrian-plugin.json manifest.                                                                 
   
  Four report formats                                                                            
  Markdown, HTML, JSON, and SARIF 2.1.0.                                                         
                                                                                                 
  ---                                                                                            
  Install

  npm install -g valyrian-edge
                                                                                                 
  ---
  Supported LLM providers                                                                        
                                                                                                 
  - Anthropic Claude
  - OpenAI GPT
  - Ollama (free, local)                                                                         
   
  ---                                                                                            
  Requirements                                                                                   

  - Node.js 20+
  - Docker (optional — only needed for Temporal orchestration mode)
                                                                                                 
  ---
  ▎ ⚠️  For authorised security testing only. Always obtain written permission before scanning a  
  system you do not own.
