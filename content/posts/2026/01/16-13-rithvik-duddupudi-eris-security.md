---
title: Eris LLM Security Scan
date: 2026-01-16 13:28:33 +00:00
tags:
  - rithvik-duddupudi
  - GitHub Actions
draft: false
repo: https://github.com/rithvik-duddupudi/eris-security
marketplace: https://github.com/marketplace/actions/eris-llm-security-scan
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/rithvik-duddupudi/eris-security** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eris-llm-security-scan) to find the latest changes.

## Action Summary

The **Eris LLM Security Scanner** GitHub Action automates security testing for LLM (Large Language Model) applications within CI/CD pipelines. It identifies vulnerabilities such as jailbreaks, prompt injections, and data leaks, assigning a vulnerability score to ensure deployments meet security thresholds. This action streamlines the detection and mitigation of LLM-related threats, enabling secure and reliable application releases.

## Release notes

<div align="center">
  <h1>Eris LLM Security Scanner</h1>
  <p><strong>Automated Red Team security testing for your CI/CD pipeline.</strong></p>
  <p>Shield your LLM applications from jailbreaks, prompt injections, and data leaks.<br/>Gate your deployments based on automated vulnerability scoring.</p>
</div>
<br />

## Usage
```yaml
- name: Eris Security Scan
  uses: rithvik-duddupudi/eris-security@v1
  with:
    eris_api_url: [https://chaosml-api.onrender.com](https://chaosml-api.onrender.com)
    eris_api_key: ${{ secrets.ERIS_API_KEY }}
    llm_provider: openai
    llm_api_key: ${{ secrets.OPENAI_API_KEY }}
    vulnerability_threshold: 30
```

## Inputs

| Input | Required | Description |
|-------|----------|-------------|
| \`eris_api_url\` | ✅ | URL of the Eris API |
| \`eris_api_key\` | ✅ | Your Eris authentication token |
| \`llm_provider\` | ✅ | \`openai\`, \`gemini\`, \`anthropic\`, or \`ollama\` |
| \`llm_api_key\` | ✅ | API key for the LLM provider |
| \`llm_model\` | ❌ | Specific model tag (e.g., \`gpt-4\`) |
| \`vulnerability_threshold\` | ❌ | Max score (0-100) before failing. Default: \`30\` |

## Outputs

| Output | Description |
|--------|-------------|
| \`vulnerability_score\` | 0-100 security score (lower is better) |
| \`risk_rating\` | Critical, High, Medium, or Low |
| \`passed\` | \`true\` if score < threshold |
| \`successful_attacks\` | Number of vulnerabilities found |

---
<div align="center">
  Powered by <a href="https://erisai.vercel.app">Eris AI</a>
</div>
