---
title: Flowlyt Security Analyzer
date: 2025-12-27 21:06:54 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.0.5
dependentsNumber: "0"
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.0.5**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed to enhance the security of CI/CD pipelines in GitHub Actions and GitLab workflows. It automates the detection of vulnerabilities, misconfigurations, and supply chain threats using advanced Abstract Syntax Tree (AST) analysis combined with AI for false positive reduction, context-aware insights, and real-time verification. By supporting multiple AI providers and offering customizable rules and integration with GitHub's Security tab, Flowlyt improves scan efficiency and accuracy while minimizing noise, enabling secure and reliable CI/CD operations.

## Release notes

# Changelog - Version 1.0.5

**Release Date:** December 27, 2025

## 🎉 What's New

Version 1.0.5 introduces intelligent terminal output with xterm detection, enhanced CLI formatting, and improved report generation.

## ✨ Features

### Intelligent Terminal Output Package
- **Terminal Detection**: Auto-detect TTY, terminal width, height, and color capabilities
- **Color Level Support**: None/Basic/256/TrueColor with automatic RGB-to-ANSI conversion
- **Progress Indicators**: 
  - ProgressBar with ETA calculation and customizable styles
  - Spinner with multiple animation styles (dots, line, arrows, etc.)
  - MultiSpinner for tracking concurrent operations
- **Advanced Formatting**:
  - Tables with responsive width and multiple styles
  - Lists with bullet points and numbering
  - Banners, sections, and dividers
  - Box drawing with Unicode characters
- **Hyperlink Support**: OSC 8 escape sequences for clickable terminal links with graceful fallback
- **Enhanced CLI Output**: 
  - Modern code snippet formatting with syntax highlighting
  - Data flow visualization for sensitive data tracking
  - Improved finding display with severity badges and context

### Report Generation Improvements
- **Clean File Paths**: Remove temporary directory prefixes from all output formats (CLI, JSON, Markdown, SARIF)
- **Verbose Flag Plumbing**: Properly pass verbose flag to all report generators
- **Remote Repository Display**: Show repository URL instead of temp paths in scan information
- **Markdown Label Cleaning**: Display repo-relative paths in link labels while preserving clickable URLs
- **GitHub/GitLab Links**: Maintain direct file links with cleaned display text

### CI/CD Integration
- **Optimized Docker Workflow**: Only trigger on tag releases and published releases (no longer on every push)

## 🐛 Bug Fixes

- Fixed scope errors in report generation (undefined `repoURL` and `c` identifiers)
- Resolved terminal spinner conflicts (SpinnerLine type vs variable naming)
- Fixed code snippet alignment ("Potential Issue Here" arrow now properly positioned)
- Corrected verbose evidence display in CLI and report outputs

## 📦 Dependencies

- Added `golang.org/x/term` for terminal capabilities detection
- Updated `go.mod` and `go.sum` with terminal package dependencies

## 🔧 Technical Changes

- New package: `pkg/terminal` with comprehensive terminal handling
- Enhanced `pkg/report/enhanced_formatter.go` with `cleanFilePath()` helper
- Updated `pkg/report/report.go` to sanitize file paths in JSON output
- Modified `cmd/flowlyt/main.go` to properly propagate verbose and repository URL

## 📝 Documentation

- Updated README.md with v1.0.5 installation instructions
- Updated README-ACTION.md with v1.0.5 usage examples
- Added COMMANDS.md updates reflecting new terminal features

## 🔄 Migration Guide

No breaking changes. Upgrade by installing the latest version:

```bash
go install github.com/harekrishnarai/flowlyt/cmd/flowlyt@v1.0.5
```

For GitHub Actions:
```yaml
- uses: harekrishnarai/flowlyt@v1.0.5
```

## ✅ Verification

- ✅ Build succeeds on all platforms
- ✅ Terminal detection works correctly
- ✅ File paths cleaned in CLI, JSON, Markdown, and SARIF outputs
- ✅ Remote scans display repository URLs
- ✅ Verbose evidence visible when requested
- ✅ Clickable GitHub/GitLab links preserved

## 🙏 Credits

Thanks to all contributors and users providing feedback on the intelligent terminal output implementation!

---

**Full Changelog**: v1.0.4...v1.0.5

