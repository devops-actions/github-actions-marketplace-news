---
title: agentverif — AI Agent Certification
date: 2026-04-16 22:11:34 +00:00
tags:
  - trusthandoff
  - GitHub Actions
draft: false
repo: https://github.com/trusthandoff/agentverif-action
marketplace: https://github.com/marketplace/actions/agentverif-ai-agent-certification
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/trusthandoff/agentverif-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentverif-ai-agent-certification) to find the latest changes.

## Action Summary

The `agentverif` GitHub Action automates the process of scanning, signing, and verifying AI agent packages in CI/CD pipelines. It ensures package integrity and security by performing an OWASP LLM Top 10 scan, refusing packages with low scores, and injecting a digital signature and license ID into valid packages. This action helps vendors certify their agents and allows buyers to verify package authenticity, preventing the use of tampered or unsigned agents in deployment workflows.

## What's Changed

🔒 Add HTTPS-level trust to your AI agents.

One poisoned agent can destroy your pipeline overnight.
agentverif catches it before execution.

- `mode: sign` → certify your agent on every push, get a license ID
- `mode: verify` → block tampered or unsigned agents in CI
- Zero config. Free indie tier. Works with Claude MCP.

agentverif.com
