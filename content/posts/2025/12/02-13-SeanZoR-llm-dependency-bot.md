---
title: LLM Dependency Bot
date: 2025-12-02 13:10:05 +00:00
tags:
  - SeanZoR
  - GitHub Actions
draft: false
repo: https://github.com/SeanZoR/llm-dependency-bot
marketplace: https://github.com/marketplace/actions/llm-dependency-bot
version: v1.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/SeanZoR/llm-dependency-bot** to version **v1.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-dependency-bot) to find the latest changes.

## Release notes

## 🎉 What's New in v1.1.0

### ✨ Structured Comment Format

The bot now posts **beautifully structured comments** with visual indicators and collapsible sections!

#### Before (verbose):
```
🤖 **LLM Dependency Bot**
**Decision**: ✅ Auto-merge approved
**Risk Level**: LOW
[Long paragraph of reasoning...]
```

#### After (clean & scannable):
```markdown
| Decision | Risk | Update |
|----------|------|--------|
| ✅ **Auto-merge** | 🟢 LOW | `1.0.0` → `1.1.0` (minor) |

<details><summary>📊 Evidence & Analysis</summary>
...structured evidence...
</details>

<details><summary>🤖 Claude's Detailed Reasoning</summary>
...detailed reasoning...
</details>
```

### 🎨 Visual Risk Indicators

Risk levels now have color-coded indicators:
- 🟢 **LOW** - Safe to merge
- 🟡 **MEDIUM** - Minor concerns
- 🟠 **HIGH** - Needs review
- 🔴 **CRITICAL** - Blocking issues

### 📊 Evidence & Metrics

Comments now include collapsible evidence section showing:
- ✓ **Tools Used** - Which tools Claude called during analysis
- **Key Findings** - Bullet points of important discoveries
- **Metrics** - Files changed, CI status, security flags

### 🔧 GitHub Action Outputs

New workflow outputs available for integration:

```yaml
- uses: SeanZoR/llm-dependency-bot@v1
  id: bot
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}

- name: Use outputs
  run: |
    echo "Decision: ${{ steps.bot.outputs.decision }}"
    echo "Risk: ${{ steps.bot.outputs.risk-level }}"
```

**Available outputs:**
- `decision` - auto_merge, require_approval, or do_not_merge
- `risk-level` - low, medium, high, or critical
- `reasoning` - Claude's full explanation (URL-encoded)

### 🚀 Production Ready

- Enhanced action.yml metadata for GitHub Marketplace
- Comprehensive MARKETPLACE.md submission guide
- Updated README with new comment examples
- All marketplace prerequisites verified

## 📦 Installation

```yaml
name: LLM Dependency Bot

on:
  pull_request:
    types: [opened, synchronize, reopened]
  workflow_run:
    workflows: ["CI"]
    types: [completed]

jobs:
  auto-merge:
    if: github.actor == 'dependabot[bot]'
    runs-on: ubuntu-latest
    
    permissions:
      contents: write
      pull-requests: write
      checks: read
    
    steps:
      - uses: SeanZoR/llm-dependency-bot@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

## 🔨 Technical Details

### Files Changed
- `src/agent.py` - Core comment formatting and evidence tracking
- `src/__init__.py` - Export DecisionResult dataclass
- `tests/test_agent.py` - Updated test signatures
- `action.yml` - Enhanced metadata
- `README.md` - New format examples
- `MARKETPLACE.md` - Complete publishing guide (new)

### Breaking Changes

⚠️ **Internal API only** (does not affect users):
- `decide_with_llm()` now returns `DecisionResult` instead of tuple
- `_fallback_decision()` signature includes `tools_called` parameter

No user-facing breaking changes.

### Quality Assurance
- ✅ All 19 unit tests passing
- ✅ Type checking (mypy) passing
- ✅ Linting (ruff, black) passing
- ✅ Security scanning (bandit) passing
- ✅ Pre-commit hooks passing

## 📚 Documentation

- **README.md** - Updated with new examples
- **MARKETPLACE.md** - Publishing guide
- **CONTRIBUTING.md** - Contribution guidelines
- **docs/ARCHITECTURE.md** - System design
- **docs/TOOL-USE-GUIDE.md** - Custom tools
- **docs/PROMPT-ENGINEERING.md** - AI customization

## 🔮 What's Next (Phase 2)

Future enhancements planned:
- Real npm/PyPI API integration for release notes
- GitHub Security Advisories API for CVE checking
- Actual evidence snippets (currently placeholder)
- Bundle size and performance impact analysis

## 🙏 Credits

Built with:
- [Claude 3.5 Sonnet](https://www.anthropic.com/claude) - The AI reasoning engine
- [Anthropic Python SDK](https://github.com/anthropics/anthropic-sdk-python) - API client
- [Claude Code](https://claude.com/claude-code) - Development assistant

---

**Full Changelog**: https://github.com/SeanZoR/llm-dependency-bot/compare/v1.0.1...v1.1.0

🤖 Generated with [Claude Code](https://claude.com/claude-code)

