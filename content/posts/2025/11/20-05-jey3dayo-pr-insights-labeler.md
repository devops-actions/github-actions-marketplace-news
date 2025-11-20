---
title: PR Insights Labeler
date: 2025-11-20 05:12:57 +00:00
tags:
  - jey3dayo
  - GitHub Actions
draft: false
repo: https://github.com/jey3dayo/pr-insights-labeler
marketplace: https://github.com/marketplace/actions/pr-insights-labeler
version: v1.9.2
dependentsNumber: "?"
---


Version updated for **https://github.com/jey3dayo/pr-insights-labeler** to version **v1.9.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-insights-labeler) to find the latest changes.

## Release notes

## 🚀 What's New

### ✨ Added
- Improve Violations section with label names (#113)
  - Changed section title from "Size Summary" to "Violations" for better accuracy
  - Added label names to each violation message for clarity:
    - `auto/large-files` - Files exceed size limit
    - `auto/too-many-lines` - Files exceed line limit
    - `auto/excessive-changes` - Total additions exceed limit
    - `auto/too-many-files` - File count exceeds limit
  - Example output:
    ```markdown
    ### 📊 Violations
    - **File count exceeds limit** (`auto/too-many-files`)
    ```

### 🐛 Fixed
- Fixed line count display to show '501+' when capped at limit (#112)
  - Files with more than 501 lines now display as '501+' to indicate the count was capped
  - Example: A file with 1040 lines previously showed as '501 lines', now shows as '501+ lines'

- Fixed incorrect risk/high label on PRs with excluded test files (#114)
  - Risk evaluation now correctly uses all PR files (including excluded ones) to detect test files
  - Previously, test files excluded from analysis (e.g., by .gitattributes) were not considered, causing false `risk/high` labels
  - Example: PR with `src/core.ts` and `__tests__/core.test.ts` (test excluded from analysis) now correctly shows no risk label instead of `risk/high`

## 📊 Quality Metrics

- ✅ 797 tests passing (+1 new test for risk evaluation fix)
- ✅ 0 ESLint errors/warnings
- ✅ 0 TypeScript type errors
- ✅ Build successful

## 🔗 Full Changelog

**Full Changelog**: https://github.com/jey3dayo/pr-insights-labeler/compare/v1.9.1...v1.9.2
