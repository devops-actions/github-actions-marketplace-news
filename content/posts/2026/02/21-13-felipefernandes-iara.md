---
title: Iara Code Reviewer
date: 2026-02-21 13:32:19 +00:00
tags:
  - felipefernandes
  - GitHub Actions
draft: false
repo: https://github.com/felipefernandes/iara
marketplace: https://github.com/marketplace/actions/iara-code-reviewer
version: v1.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/felipefernandes/iara** to version **v1.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/iara-code-reviewer) to find the latest changes.

## Action Summary

Iara is an AI-powered code review tool designed to automate and enhance the code review process in CI/CD pipelines or via CLI. It integrates with multiple LLM providers (e.g., OpenAI, Google Gemini, Anthropic) to perform static analysis, linting, and security assessments, detecting vulnerabilities, code quality issues, and performance inefficiencies. With native GitHub and GitLab support, multilingual output, and customizable rules, Iara streamlines code reviews, improving development efficiency and code reliability.

## Release notes

## 🎯 RAG & Resource Efficiency Release

This release focuses on optimizing the RAG (Retrieval-Augmented Generation) system for better memory efficiency and data accuracy.

### ✨ New Features

**🧹 Automatic Cleanup of Deleted Files (#25)**
- Detects and removes stale entries when files are deleted from the project
- Prevents orphaned chunks in the LanceDB index
- Keeps `file_hashes.json` synchronized with the current project state
- Efficient batch deletion using SQL predicates (O(1) performance)

**⚡ Memory-Optimized Indexing (#26)**
- Improved handling of large files during indexing
- Reduced memory footprint for projects with many files
- Better error handling for edge cases

### 🔧 Improvements

- Enhanced logging for deleted file cleanup operations
- Fail-safe error handling - cleanup failures don't break indexing
- SQL injection protection with proper path escaping

### 📊 Technical Details

**Deleted Files Cleanup:**
- Comparison of hash maps to detect deletions: O(n)
- Batch deletion with \`file_path IN (...)\` predicate: O(1)
- Typical impact: <50ms for projects with <1000 files

**Test Coverage:**
- 12 new comprehensive tests (7 unit + 5 integration)
- 99.37% patch coverage
- All 37 tests passing

### 📦 Installation

\`\`\`bash
pip install --upgrade iara-reviewer[rag]
\`\`\`

### 🔗 Related Issues

- Closes #25: Handle stale hash entries for deleted files
- Closes #26: Optimize memory usage for large files

---

**Full Changelog**: https://github.com/felipefernandes/iara/compare/v1.5.0...v1.6.0

🤖 Released with [Claude Code](https://claude.com/claude-code)
