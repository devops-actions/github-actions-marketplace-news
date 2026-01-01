---
title: Inkog - AI Agent Security Scanner
date: 2026-01-01 21:11:00 +00:00
tags:
  - inkog-io
  - GitHub Actions
draft: false
repo: https://github.com/inkog-io/inkog
marketplace: https://github.com/marketplace/actions/inkog-ai-agent-security-scanner
version: v1
dependentsNumber: "0"
---


Version updated for **https://github.com/inkog-io/inkog** to version **v1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/inkog-ai-agent-security-scanner) to find the latest changes.

## Action Summary

Inkog is a static security scanner designed for AI agents, focusing on identifying vulnerabilities and ensuring compliance with security and governance standards such as OWASP LLM Top 10, EU AI Act, and AGENTS.md guidelines. It automates the detection of issues like prompt injections, insecure output handling, tool misuse, and governance violations across various AI frameworks, streamlining the process of securing AI systems. Additionally, it supports CI/CD integration and allows users to create custom detection rules for tailored security requirements.

## Release notes

## Inkog v1.0.0                                                                                                                                                                          
                                                                                                                                                                                           
  Static security scanner for AI agents.

<img width="2446" height="1316" alt="image" src="https://github.com/user-attachments/assets/d120a745-1563-4ad2-9cde-6e2256737b8c" />
                                                                                                                                                   
                                                                                                                                                                                           
  ### Features                                                                                                                                                                             
                                                                                                                                                                                           
  - **Multi-framework support** — LangChain, CrewAI, n8n, Flowise, and more                                                                                                                
  - **OWASP LLM Top 10** — Prompt injection, insecure output handling                                                                                                                      
  - **EU AI Act compliance** — Article 12, 14, 15 checks                                                                                                                                   
  - **SARIF output** — GitHub Security tab integration                                                                                                                                     
  - **Diff mode** — Only flag new findings in PRs                                                                                                                                          
                                                                                                                                                                                           
  ### Quick Start                                                                                                                                                                          
                                                                                                                                                                                           
  ```yaml                                                                                                                                                                                  
  - uses: inkog-io/inkog@v1                                                                                                                                                                
    with:                                                                                                                                                                                  
      sarif-upload: true                                                                                                                                                                   
                                                                                                                                                                                           
  Documentation                                                                                                                                                                            
                                                                                                                                                                                           
  https://docs.inkog.io 
