---
title: brandOptics AI Neural Nexus
date: 2026-01-13 13:23:22 +00:00
tags:
  - brandOptics
  - GitHub Actions
draft: false
repo: https://github.com/brandOptics/brandOptics_ai_review_bot_action
marketplace: https://github.com/marketplace/actions/brandoptics-ai-neural-nexus
version: v3.9.7
dependentsNumber: "0"
---


Version updated for **https://github.com/brandOptics/brandOptics_ai_review_bot_action** to version **v3.9.7**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/brandoptics-ai-neural-nexus) to find the latest changes.

## Action Summary

BrandOptics Neural Nexus is an advanced GitHub Action that automates code reviews by combining static analysis with AI-driven reasoning to ensure high-quality, bug-free code. It not only detects syntax errors and security vulnerabilities but also provides senior-level refactoring suggestions, architectural analysis, and context-aware improvements. The action simulates a Senior Software Architect’s workflow, automating tasks like dependency tracing, duplication detection, and code refactoring to streamline development and enforce clean code principles.

## Release notes


### ☁️ Native Azure OpenAI Support
Neural Nexus now includes a first-class integration with **Azure OpenAI Service** (Azure Foundry). This allows Enterprise teams to leverage their secure, compliant Azure infrastructure directly.

- **Seamless Switching**: Simply setting `openai_api_type: "azure"` automatically reconfigures the internal engine to use `AzureOpenAI` headers and authentication protocols.
- **Enhanced Configuration**: Full support for `openai_api_version` ensures compatibility with the latest API previews (e.g., `2025-01-01-preview`).

### 🛡️ Critical Failure Reporting
We have improved visibility into system health.
- **Immediate Alerts**: If the AI API fails (due to Keys, Rate Limiting, or Firewall), the bot now posts a **Critical System Notice** prominently in the PR comment, ensuring developers aren't left guessing why the review is empty.
- **Debug Trace**: Console logs now output initializing connection types for easier troubleshooting in GitHub Actions logs.

### ⚙️ How to Upgrade
```yaml
- uses: brandoptics/brandOptics_ai_review_bot_action@v3.9.7
  with:
    openai_key: ${{ secrets.AZURE_API_KEY }}
    openai_base_url: "api_end_point"
    openai_model: "model_name"
    openai_api_type: "azure"    //azure or openai         
    openai_api_version: "model_version"  
```

