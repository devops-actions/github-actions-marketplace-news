---
title: npm-security-score
date: 2025-11-30 05:25:37 +00:00
tags:
  - 01tek
  - GitHub Actions
draft: false
repo: https://github.com/01tek/npm-security-score
marketplace: https://github.com/marketplace/actions/npm-security-score
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/01tek/npm-security-score** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/npm-security-score) to find the latest changes.

## Release notes

# 🔒 npm-security-score v0.1.0 - Foundation Release

## The Wild West Ends Today

This is the initial release of **npm-security-score** - a world-class security scoring system for npm packages. We're done pretending npm's security nightmare is acceptable.

## 🎯 What This Release Does

This foundation release establishes the core infrastructure for comprehensive npm package security analysis:

### ✅ Core Features
- **Comprehensive Security Scoring** - 0-100 point system based on real threat detection
- **Lifecycle Script Analysis** - Detects suspicious preinstall/postinstall scripts (-30 points)
- **Network Call Detection** - Identifies external network calls during install (-20 points)
- **Maintainer Security Checks** - Verifies 2FA and security practices (-15 points)
- **Code Obfuscation Detection** - Flags suspicious minified/obfuscated code (-10 points)
- **Advisory History** - Tracks CVEs and past security incidents (-15 points)
- **CLI Tool** - Simple command-line interface for immediate use
- **JSON Output** - Machine-readable format for CI/CD integration

### 🚀 Quick Start
```bash
# Install globally
npm install -g npm-security-score

# Score any package
npm-security-score express

# CI/CD mode (exit code 1 if below threshold)
npm-security-score lodash --fail-below 70

# JSON output for automation
npm-security-score react --json
```

### 📊 Security Score Bands

- **90-100**: ✅ Safe - Deploy with confidence
- **70-89**: ⚠️ Review Recommended - Check before using
- **50-69**: ❌ High Risk - Manual review required
- **<50**: 🚨 Block - Do not use in production

## 🎪 Why This Exists

**We're building AI and robots, yet npm packages still install malware unchecked.**

- Shai-Hulud happened. Twice. In 2024-2025.
- Millions of downloads. Trivial backdoors. Zero detection.
- npm serves packages with arbitrary code execution. No questions asked.
- It's embarrassing. It's shameful. **It stops now.**

This project aims to establish the security standard npm should have had from day one.

## 🛠️ What's Next

This is Phase 1 of an 8-phase roadmap. See [plan.md](https://github.com/01tek/npm-security-score/blob/main/__plan.md) for the complete vision:

**Upcoming (Phase 2-4):**
- GitHub Actions integration
- Advanced malware detection patterns
- Real-time scanning API
- Web dashboard
- Automated PR checks

**Future (Phase 5-8):**
- Machine learning threat detection
- Community security signals
- npm registry integration proposal
- Industry-wide adoption

## 🤝 We Need You

This is a **community project**. We need:

- Security researchers to improve detection algorithms
- DevOps engineers to build CI/CD integrations
- Frontend developers for the web dashboard
- Documentation writers
- Package maintainers to adopt the standard

**Pick any task from [plan.md](https://github.com/01tek/npm-security-score/blob/main/__plan.md) and start contributing.**

## 📣 Spread the Word

The only way this becomes the standard is if the community demands it.

- ⭐ Star this repo
- 🔗 Share on social media: #NPMSecurity #SupplyChainSecurity
- 📝 Write about it: [Read the manifesto](https://01tek.medium.com/npm-wild-wild-west-its-time-to-stop-the-madness-3fd22c444dc4)
- 🗣️ Talk to your team about enforcing security scores

## ⚠️ Important Notes

- **Early Release**: This is v0.1.0 - expect rapid iteration
- **Breaking Changes**: API may change before v1.0.0
- **Community Driven**: Your feedback shapes this project
- **Not Perfect**: We're building in public, help us improve

## 🙏 Thank You

To everyone who's tired of npm's security nightmare and ready to do something about it - thank you for being here.

**Let's build the security standard npm deserves.**

---

**Full Documentation**: https://github.com/01tek/npm-security-score  
**The Manifesto**: https://01tek.medium.com/npm-wild-wild-west-its-time-to-stop-the-madness-3fd22c444dc4  
**Report Issues**: https://github.com/01tek/npm-security-score/issues  

The Wild West ends today. Let's be the sheriffs. 🔒
