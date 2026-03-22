---
title: AgentContract Validate
date: 2026-03-22 13:23:48 +00:00
tags:
  - agentcontract
  - GitHub Actions
draft: false
repo: https://github.com/agentcontract/agentcontract-action
marketplace: https://github.com/marketplace/actions/agentcontract-validate
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/agentcontract/agentcontract-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentcontract-validate) to find the latest changes.

## Action Summary

The **agentcontract-action** GitHub Action validates the compliance of AI agent behavior with predefined [AgentContract](https://github.com/agentcontract/spec) specifications during CI/CD workflows. It ensures that agents adhere to their behavioral contracts by verifying the contract schema and optionally auditing runtime logs for violations, automating the process of detecting and blocking non-compliant behavior. Key capabilities include schema validation, run log analysis, detailed violation reporting, and configurable fail-safe mechanisms to maintain quality and compliance in AI deployments.

## Release notes

## AgentContract Action — v1.0.0                                                                                                                            
                                                                                                                                                              
  Validate [AgentContract](https://github.com/agentcontract/spec) behavioral contracts in CI/CD.                                                              
  Fail your build when an agent violates its declared behavioral rules.                                                                                       
                                                                                                                                                              
  ### What it does                                          
                                                                                                                                                              
  - Validates `.contract.yaml` schema on every push/PR                                                                                                        
  - Optionally validates a JSONL run log against the contract (pattern, latency, cost assertions)
  - Outputs `outcome` (`pass` / `violation`) and a `violations` JSON array for downstream steps                                                               
                                                                                                                                                              
  ### Usage                                                                                                                                                   
                                                                                                                                                              
  ```yaml                                                   
  - uses: agentcontract/agentcontract-action@v1
    with:                                                                                                                                                     
      contract: contracts/my-agent.contract.yaml
      run-log: logs/agent-runs.jsonl  # optional                                                                                                              
                                                                                                                                                              
  Supported frameworks                                                                                                                                        
                                                                                                                                                              
  Copy-paste starter workflows for LangChain, OpenAI Agents SDK, and CrewAI are in the README.                                                                
                                                            
  Links                                                                                                                                                       
                                                            
  - Spec: agentcontract/spec
  - Python SDK: pip install agentcontract
  - TypeScript SDK: npm install @agentcontract/core
