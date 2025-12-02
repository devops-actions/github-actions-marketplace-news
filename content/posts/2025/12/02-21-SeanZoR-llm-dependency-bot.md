---
title: LLM Dependency Bot
date: 2025-12-02 21:11:47 +00:00
tags:
  - SeanZoR
  - GitHub Actions
draft: false
repo: https://github.com/SeanZoR/llm-dependency-bot
marketplace: https://github.com/marketplace/actions/llm-dependency-bot
version: v1.2.0
dependentsNumber: "1"
---


Version updated for **https://github.com/SeanZoR/llm-dependency-bot** to version **v1.2.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-dependency-bot) to find the latest changes.

## Release notes

## 🎉 Phase 2 Complete: Real Tool Functionality

This release transforms the bot from using placeholder tools to **real API integrations**! Claude can now fetch actual release notes and check real vulnerability databases.

---

## ✨ What's New

### 🔍 Real npm Registry Integration
Fetches actual package metadata from https://registry.npmjs.org

**What you get:**
- Package descriptions
- Repository URLs
- Links to GitHub for release notes

**Example:**
```
**Description:** Promise based HTTP client for the browser and node.js
**GitHub Release Notes:** [actual changelog from GitHub]
```

### 🐍 Real PyPI Integration  
Fetches Python package information from https://pypi.org

**What you get:**
- Package descriptions  
- Detailed changelogs
- Project metadata

### 🛡️ Real CVE/Vulnerability Checking
Queries **OSV (Open Source Vulnerabilities)** database at https://api.osv.dev

**What you get:**
- Real CVE IDs (CVE-2024-XXXX)
- Severity scores (CVSS ratings)
- Vulnerability summaries
- Support for npm, PyPI, Go, Rust, and more

**Example:**
```
⚠️ Found 2 vulnerabilities for lodash 4.17.20:

- **CVE-2021-23337** (CVSS 7.5): Command injection via template
- **GHSA-35jh-r3h4-6jhm** (HIGH): Prototype pollution vulnerability
```

### 📝 GitHub Releases API
Fetches actual release notes from GitHub repositories

**Features:**
- Handles both `v1.0.0` and `1.0.0` tag formats
- Extracts release body (changelog)
- Shows what changed in each version

---

## 🎯 Before & After

### Before (v1.1.0)
```
Release notes for axios 1.6.1 would be fetched from package registry 
(npm, PyPI, etc.) in production implementation.
```

### After (v1.2.0)
```
**Description:** Promise based HTTP client for the browser and node.js

**GitHub Release Notes:**
### What's Changed
* Fix: Memory leak in request interceptors
* Docs: Update TypeScript examples

**Full Changelog**: https://github.com/axios/axios/compare/v1.6.0...v1.6.1
```

---

## 📊 Evidence in PR Comments

The **Evidence & Analysis** section now shows real data:

**Tools Used:**
- ✓ Fetch Release Notes
- ✓ Check CVE Database

**Key Findings:**
- ✅ No known vulnerabilities in new version
- 📝 Release notes show bug fixes only
- ⚠️ Breaking changes detected in changelog
- 🔒 Security patches included

**Metrics:**
- **Dependency:** `axios`
- **Files Changed:** 2
- **CI Status:** success

---

## 🔧 Technical Details

### APIs Integrated

| API | Purpose | Endpoint |
|-----|---------|----------|
| npm Registry | JavaScript packages | `registry.npmjs.org` |
| PyPI JSON API | Python packages | `pypi.org/pypi` |
| GitHub Releases | Release notes | `api.github.com/repos` |
| OSV Database | Vulnerabilities | `api.osv.dev/v1/query` |

### Error Handling
- ✅ 10-second timeout on all API calls
- ✅ Graceful fallback when data unavailable
- ✅ Output length limits (800-1000 chars)
- ✅ No new dependencies required

### Security
- Uses existing GitHub token for GitHub API
- No additional API keys needed
- Proper error handling throughout
- Bandit security checks passing

---

## 📈 Impact

### Better Decisions
Claude can now make **evidence-based decisions** using:
- Actual package descriptions
- Real changelogs
- Concrete CVE data
- Severity scores

### More Trust
Users see **real evidence** that Claude used:
- "Release notes show backwards compatible changes"
- "CVE-2024-1234 fixed in this version"
- "No known vulnerabilities found"

### Wider Support
Works with multiple ecosystems:
- ✅ JavaScript (npm)
- ✅ Python (PyPI)
- ✅ Go (OSV)
- ✅ Rust (OSV)
- ✅ Any package with GitHub releases

---

## 🚀 Usage

No changes needed! Just use the latest version:

```yaml
- uses: SeanZoR/llm-dependency-bot@v1  # Always latest
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

Or pin to specific version:
```yaml
- uses: SeanZoR/llm-dependency-bot@v1.2.0
```

---

## 🧪 Testing

```bash
pytest -v
# Result: ✅ 19 passed in 1.60s
```

All existing tests pass with real tool implementations.

---

## 📝 Example Decision Flow

When analyzing `axios 1.6.0 → 1.6.1`:

1. **Fetch release notes** from npm registry
2. **Check CVE database** for vulnerabilities
3. **Get GitHub release** for detailed changelog
4. **Analyze** all evidence
5. **Decide** based on real data
6. **Show evidence** in PR comment

Result: More accurate, trustworthy decisions! 🎯

---

## 🔗 Links

- **Pull Request**: #2
- **Full Changelog**: https://github.com/SeanZoR/llm-dependency-bot/compare/v1.1.0...v1.2.0
- **npm Registry Docs**: https://github.com/npm/registry/blob/main/docs/REGISTRY-API.md
- **OSV Documentation**: https://osv.dev/docs/

---

## 🙏 Credits

Built with:
- [Claude 3.5 Sonnet](https://www.anthropic.com/claude) - AI reasoning engine
- [OSV](https://osv.dev/) - Open Source Vulnerabilities database
- [npm Registry](https://registry.npmjs.org) - JavaScript packages
- [PyPI](https://pypi.org) - Python packages

---

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>

