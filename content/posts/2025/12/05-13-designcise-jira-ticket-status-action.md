---
title: Jira Ticket Status Check
date: 2025-12-05 13:12:49 +00:00
tags:
  - designcise
  - GitHub Actions
draft: false
repo: https://github.com/designcise/jira-ticket-status-action
marketplace: https://github.com/marketplace/actions/jira-ticket-status-check
version: v2.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/designcise/jira-ticket-status-action** to version **v2.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jira-ticket-status-check) to find the latest changes.

## Release notes

## 🎉 What's New

Version 2.1 adds automatic ticket detection in PR titles and case-insensitive matching - making the action even more flexible and user-friendly!

### ✨ New Features

**1. PR Title Scanning**
The action now extracts tickets from both your PR title AND commit messages:
```yaml
# PR Title: "PROJ-2400: Add payment feature"
# Commits: "PROJ-2056: Update API"
# 
# Result: Checks both PROJ-2400 and PROJ-2056 ✅
```

**2. Case-Insensitive Matching**
Tickets are now matched regardless of case:
- `PROJ-123` ✅
- `proj-123` ✅
- `Proj-123` ✅
- All normalized to `PROJ-123`

### 💡 Use Cases

This is especially useful when:
- Creating PRs with ticket references in the title (common practice)
- Team members use different casing conventions
- Testing specific tickets without creating commits

### 📝 Example

**Before v2.1:**
```
PR Title: "PROJ-2400: Test blocked ticket"
Result: ❌ Ticket not found (only checked commits)
```

**After v2.1:**
```
PR Title: "PROJ-2400: Test blocked ticket"
Result: ✅ Found PROJ-2400, checks Jira status
```

### 🔄 Migration

**This is NOT a breaking change!** Simply update to v2.1:
```yaml
- uses: designcise/jira-ticket-status-action@v2  # or @v2.1
```

All existing workflows continue to work - with added PR title scanning!

### 🐛 Bug Fixes

- Improved ticket extraction reliability
- Better handling of mixed-case ticket references

### 📚 Documentation

- Added PR title format examples
- New troubleshooting section for PR title detection
- Updated FAQ with case-sensitivity information
- Added real-world scenario examples

---

**Full Changelog**: v2.0.0...v2.1.0
