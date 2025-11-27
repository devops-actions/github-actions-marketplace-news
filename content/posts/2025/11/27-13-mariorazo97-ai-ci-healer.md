---
title: AI CI Healer
date: 2025-11-27 13:07:54 +00:00
tags:
  - mariorazo97
  - GitHub Actions
draft: false
repo: https://github.com/mariorazo97/ai-ci-healer
marketplace: https://github.com/marketplace/actions/ai-ci-healer
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/mariorazo97/ai-ci-healer** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-ci-healer) to find the latest changes.

## Release notes

# 🚀 v1.0.0: The Launch of AI CI Healer

[![Buy Me A Coffee](https://img.shields.io/badge/Support-Buy%20me%20a%20coffee-yellow?style=flat-square&logo=buymeacoffee)](https://buymeacoffee.com/quizmybrai7)

We are thrilled to announce the first official release of **AI CI Healer**! 🚑

This action turns your CI/CD pipeline into a self-healing system. When a build fails, it doesn't just stop—it analyzes the logs, finds the root cause, and writes a fix directly to your PR or commit.

> **"Stop Googling build errors. Let AI fix them for you."**

### ✨ Key Features
* **🧠 Multi-Brain Support:** Use the speed of **Groq**, the intelligence of **Gemini**, or the privacy of **Ollama** (Self-Hosted).
* **🛡️ Smart Fallback:** If one AI provider is down, it automatically retries with others to ensure you get a fix.
* **👁️ Chain of Thought:** Expand the "View AI Reasoning" dropdown to see exactly *why* the AI chose a specific fix.
* **⚡ Blazing Fast:** Analyzing logs and posting a fix takes seconds.
* **🔒 Enterprise Ready:** Support for private repos and self-hosted runners using Ollama.

### 📦 Quick Start
Add this to your workflow file immediately after your build steps:

```yaml
- name: AI CI Healer
  if: failure()
  uses: mariorazo97/ai-ci-healer@v1.0.0
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    llm-provider: "groq"
    groq-api-key: ${{ secrets.GROQ_API_KEY }}
```
### 🛠️ Configuration

| Input | Description | Default |
| :--- | :--- | :--- |
| `llm-provider` | Choose `groq`, `gemini`, or `ollama`. | `groq` |
| `model` | Specific model ID (e.g., `llama-3.3-70b-versatile`). | Auto-selected |
| `enable-comments` | Toggle PR commenting on/off. | `true` |
| `custom-context` | Inject team-specific coding rules. | `""` |

### 📸 Screenshots
---
---
![AI CI Healer Demo](https://github.com/mariorazo97/ai-ci-healer/blob/main/images/workflow01.png?raw=true)

---

![AI CI Healer Demo](https://github.com/mariorazo97/ai-ci-healer/blob/main/images/solution01.png?raw=true)

---

### ☕ Support the Project
If this tool saved your build (and your sanity), consider buying me a coffee to keep the updates coming!

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-support-yellow.svg?style=for-the-badge&logo=buymeacoffee)](https://buymeacoffee.com/quizmybrai7)
