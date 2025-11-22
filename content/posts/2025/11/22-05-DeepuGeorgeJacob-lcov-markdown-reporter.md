---
title: LCOV to Markdown Reporter
date: 2025-11-22 05:13:41 +00:00
tags:
  - DeepuGeorgeJacob
  - GitHub Actions
draft: false
repo: https://github.com/DeepuGeorgeJacob/lcov-markdown-reporter
marketplace: https://github.com/marketplace/actions/lcov-to-markdown-reporter
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/DeepuGeorgeJacob/lcov-markdown-reporter** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lcov-to-markdown-reporter) to find the latest changes.

## Release notes

## 🚀 **v1.0.0: Initial Stable Release - LCOV to Job Summary Reporter**

-----

## 📋 **Release Notes**

This is the first stable version of the **LCOV to Markdown Reporter**, designed to seamlessly integrate code coverage metrics directly into your GitHub Job Summaries.

### ✨ **Highlights**

  * **Seamless Integration:** Converts standard LCOV (`.info`) reports into readable Markdown tables.
  * **Job Summary Ready:** Automatically outputs the report to a file ready to be appended to `$GITHUB_STEP_SUMMARY`.


### ⚙️ **Key Features**

  * Calculates and summarizes overall **Line** and **Function** coverage percentages.
  * Provides a file-by-file breakdown of coverage metrics.
  * Uses a clean and simple `uses: owner/repo@v1` syntax.

### 💡 **How to Use**

Ensure your preceding step generates a coverage report (e.g., at `coverage/lcov.info`), then use the following steps in your workflow:

```yaml
      - name: 📝 Generate Markdown Report
        uses:  DeepuGeorgeJacob/lcov-markdown-reporter@v1  
        id: coverage
        with:
          lcov-file: coverage/lcov.info 
          output-file: coverage_summary.md 
          
      - name: 📊 Append Report to Job Summary
        # Appends the file created in the previous step to the job summary
        run: cat coverage_summary.md >> $GITHUB_STEP_SUMMARY
```

-----

**🙏 Thank you for using this action\!**
