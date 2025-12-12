---
title: SentinelCI
date: 2025-12-12 21:17:47 +00:00
tags:
  - joao-pedro-rdo
  - GitHub Actions
draft: false
repo: https://github.com/joao-pedro-rdo/SentinelCI
marketplace: https://github.com/marketplace/actions/sentinelci
version: v0.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/joao-pedro-rdo/SentinelCI** to version **v0.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinelci) to find the latest changes.

## Release notes

## 🚀 What's New

This is the **first functional release** of Scan Dockerfile Action - an AI-powered GitHub Action that analyzes Dockerfiles and provides intelligent refactoring suggestions.

### ✨ **Key Features**

- **🤖 AI-Powered Analysis**: Integration with LangChain + Gemini for intelligent refactoring suggestions
- **🔍 Comprehensive Scanning**: Automatic detection of Dockerfile issues across your repository
- **📝 Detailed Reporting**: Creates GitHub issues with actionable feedback and explanations
- **⚡ GitHub Actions Integration**: Seamless CI/CD pipeline integration

### 🛠️ **Implemented Linter Rules**

- **LR_001**: Missing `.dockerignore` file detection
- **LR_002**: WORKDIR usage for nested file operations
- **LR_003**: Avoid unnecessary pip upgrades
- **LR_004**: Proper PORT declaration checks
- **LR_006**: JOIN consecutive RUN commands optimization (🤖 **AI-Enhanced**)

### 🔧 **Technical Highlights**

- Built with **TypeScript** and **Node.js 20**
- Powered by **dockerfile-ast** for precise parsing
- **LangChain** integration for AI suggestions
- **Apache 2.0** licensed
- Comprehensive **CI/CD pipeline** with automated testing

## 🚀 **Quick Start**

```yaml
- uses: joao-pedro-rdo/scan-dockerfile@v0.1.0
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    API_TOKEN: ${{ secrets.API_KEY }}  
```

## 📋 **Requirements**

- Node.js 20+ runtime environment
- GitHub token with `contents:read`, `issues:write` permissions
- Groq API key for AI functionality (free tier available)

## ⚠️ **Known Limitations**

- Limited to 5 basic linter rules (more coming soon)
- Requires external API key for AI features
- PR comment integration not yet implemented
- Custom rule configuration not available

## 🐛 **Bug Reports & Feature Requests**

Found an issue or have a suggestion? Please [create an issue](https://github.com/joao-pedro-rdo/scan-dockerfile/issues/new) - we're actively improving based on community feedback!

## 🙏 **Acknowledgments**

Special thanks to:
- [Remy Suen](https://github.com/rcjsuen) for the excellent **dockerfile-ast** library
- The **LangChain** team for the AI integration framework
---

**⭐ If you find this action useful, please consider giving it a star!**

**📚 Full documentation and examples available in the [README](https://github.com/joao-pedro-rdo/scan-dockerfile#readme)**



<img width="1284" height="969" alt="Captura de tela 2025-09-17 135352" src="https://github.com/user-attachments/assets/1a90b018-61ec-448d-8443-2381ca406352" />
<img width="804" height="371" alt="Captura de tela 2025-09-17 135333" src="https://github.com/user-attachments/assets/53d4f71c-5bba-48ce-b8fc-5a0036c408ec" />
