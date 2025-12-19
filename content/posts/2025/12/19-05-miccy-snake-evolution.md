---
title: Snake Evolution
date: 2025-12-19 05:31:39 +00:00
tags:
  - miccy
  - GitHub Actions
draft: false
repo: https://github.com/miccy/snake-evolution
marketplace: https://github.com/marketplace/actions/snake-evolution
version: v1.2.3
dependentsNumber: "1"
---


Version updated for **https://github.com/miccy/snake-evolution** to version **v1.2.3**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snake-evolution) to find the latest changes.

## Release notes

## ✅ What's Changed

### 📚 Documentation Enhancements
- **Reorganized structure**: Separated public docs (`docs/`) from private agent materials (`.agents/`)
- **Merged roadmap**: Combined detailed agent roadmap into public-facing `docs/ROADMAP.md`
- **Enhanced AGENTS.md**: Complete development guide for progressing from v1.2 → v3.0
  - Detailed tasks for v1.3 (GIF support), v2.0 (web platform), v3.0 (PvP mode)
  - Test/lint instructions and workflows
  - Progress tracking and versioning strategies
- **Improved CLI README**: Added common use cases and troubleshooting section
- **Enhanced LICENSE**: Clear attribution to [Platane](https://github.com/Platane/snk)

### 🔢 Version Synchronization
- All packages bumped to v1.2.3
- Fixed CLI CHANGELOG (corrected from incorrect 1.3.0)
- Updated version references across codebase (API, workflows, contributing guide)

### ✅ Testing & Quality
- Updated CLI tests to reflect standalone bundle structure (no bundledDependencies)
- Fixed PvP regex test to match actual README format
- **All 124 tests passing** ✅
- **Zero markdown linting errors** ✅

### 🔧 Workflow Fixes
- Removed empty changeset file causing parse errors
- Updated `example-snake.yml` to create PR instead of direct push (complies with branch protection)
- Disabled Changesets automatic GitHub releases to prevent package-specific tags

## 📊 Stats
- **Commits**: 20+
- **Tests**: 124 pass, 0 fail
- **Files changed**: 30+
- **Lines**: +388 insertions, -697 deletions

## 📦 Installation

### CLI (npm)
```bash
# Run directly with npx (no install needed)
npx @snake-evolution/cli@latest generate -u YOUR_USERNAME

# Or install globally
npm install -g @snake-evolution/cli@latest
```

### GitHub Action
```yaml
- uses: miccy/snake-evolution@v1.2.3
  with:
    github_user_name: ${{ github.repository_owner }}
    outputs: dist/snake.svg
```

Or use tracking tags for auto-updates:
```yaml
- uses: miccy/snake-evolution@v1     # Latest v1.x
- uses: miccy/snake-evolution@v1.2   # Latest v1.2.x
```

## 🔗 Links
- **Changelog**: [CHANGELOG.md](https://github.com/miccy/snake-evolution/blob/main/CHANGELOG.md)
- **Documentation**: [docs/ROADMAP.md](https://github.com/miccy/snake-evolution/blob/main/docs/ROADMAP.md)
- **npm Package**: [@snake-evolution/cli](https://www.npmjs.com/package/@snake-evolution/cli)
- **Full Changelog**: https://github.com/miccy/snake-evolution/compare/v1.2.2...v1.2.3

## 🚀 What's Next?

### v1.3
- GIF output format support
- Glass theme fully functional with blur effects
- Performance optimizations

### v2.0
- Interactive web playground
- Astro site with React islands
- Community gallery

### v3.0
- PvP multiplayer mode
- Real-time snake battles
- Leaderboards and challenges

---

<div align="center">
  <p>🛠 Built by <a href="https://github.com/miccy">@miccy</a> with 💙</p>
  <p>© 2025 <a href="https://github.com/enterprises/ownCTRL">ownCTRL™</a></p>
</div>

