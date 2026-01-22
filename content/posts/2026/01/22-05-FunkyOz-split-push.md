---
title: Split and Push Monorepo
date: 2026-01-22 05:57:19 +00:00
tags:
  - FunkyOz
  - GitHub Actions
draft: false
repo: https://github.com/FunkyOz/split-push
marketplace: https://github.com/marketplace/actions/split-and-push-monorepo
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/FunkyOz/split-push** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/split-and-push-monorepo) to find the latest changes.

## Action Summary

This GitHub Action and CLI tool automates the process of extracting and syncing specific folders from a monorepo to dedicated repositories using `git subtree split`, preserving the full git history. It detects changes in designated folders and only pushes updates when necessary, streamlining workflows for independent versioning, deployment, or distribution of monorepo packages. Key features include smart change detection, history preservation, support for multiple authentication methods, and compatibility with both GitHub Actions and standalone usage.

## Release notes

## [1.0.0] - 2025-01-21

### Added

#### Core Features
- **Git subtree split** functionality to extract folder history from monorepo
- **Intelligent change detection** - only pushes when changes are detected in target folder
  - Push event detection (compares HEAD with HEAD^)
  - Pull request detection (compares HEAD with base branch)
  - First commit detection (checks if folder has files)
  - Tag push detection (checks if folder exists at tag)
- **Multiple authentication methods**
  - HTTPS with token (`https://x-access-token:TOKEN@github.com/org/repo.git`)
  - SSH keys (`git@github.com:org/repo.git`)
  - Local repositories (filesystem paths)
  - Git credential helpers (when no token provided)

#### CLI Tool
- **Standalone bash script** (`scripts/push.sh`) with comprehensive help system
- **Flexible argument parsing**
  - Positional arguments: `LOCAL` (folder path), `REMOTE` (repository URL)
  - Optional flags: `--branch/-b`, `--token/-t`, `--author/-a`, `--help/-h`
- **Branch auto-detection** from GitHub environment variables
  - `GITHUB_HEAD_REF` (PR head branch)
  - `GITHUB_REF` (push/tag events)
  - Falls back to remote default branch query
- **Comprehensive help message** with usage examples and workflow explanation

#### GitHub Action
- **Composite action** compatible with GitHub Actions workflow syntax
- **Inputs**: `local`, `remote`, `branch` (optional), `token` (optional), `author` (optional)
- **Outputs**: `pushed` (boolean), `skipped` (boolean)
- **GitHub Actions integration** with proper output formatting

#### Library Architecture
- **Modular design** with three main components:
  - `scripts/lib/logging.sh` - Colored console output functions
  - `scripts/lib/detect-changes.sh` - Change detection and branch resolution
  - `scripts/push.sh` - Main orchestration script
- **Include guards** to prevent multiple sourcing
- **Dependency auto-loading** with proper source chains

#### Testing
- **63 comprehensive tests** (54 unit + 9 integration)
  - Unit tests for all core functions
  - Integration tests for end-to-end workflows
  - Edge case coverage (spaces in paths, special characters, etc.)
- **BATS testing framework** with helper libraries
- **100% pass rate** with test runner script (`tests/run-tests.sh`)
- **CI/CD integration** with GitHub Actions workflow

#### Quality Assurance
- **Shellcheck compliance** - all scripts pass shellcheck with `-x` flag
- **Bash strict mode** - `set -euo pipefail` for robust error handling
- **Proper cleanup** - removes temporary branches and remotes after execution
- **Safe git operations** - uses `--force-with-lease` to prevent accidental overwrites

#### Documentation
- **Comprehensive README** (1,287 lines) with:
  - Quick start guide
  - Usage examples for multiple scenarios
  - Extensive troubleshooting section
  - Comparison with alternative tools
  - Performance benchmarks
  - Security best practices
- **Developer documentation** (CLAUDE.md) for codebase contributors
- **Inline help** via `--help` flag with concise usage information
- **.gitignore** covering test artifacts, IDE files, OS files, secrets

### Features

#### Change Detection Logic
- Compares git diffs for push events
- Compares feature branch with base for pull requests
- Checks file existence for first commits and tags
- Gracefully handles missing branches with fallbacks

#### URL Parsing
- Automatically formats repository URLs based on type
- Injects authentication tokens into HTTPS URLs when provided
- Preserves SSH URLs as-is
- Handles local filesystem paths
- Supports shorthand formats (`org/repo`)

#### Author Configuration
- Parses multiple author formats: `"Name <email>"`, `"Name email"`
- Falls back to git config (`user.name`, `user.email`)
- Uses sensible defaults (`GitHub Action <action@github.com>`)

#### Error Handling
- Validates all required parameters before execution
- Checks folder existence
- Verifies git operations success
- Provides detailed error messages with context
- Sets appropriate exit codes (0 = success, 1 = failure)

#### Output Management
- Supports both modern (`GITHUB_OUTPUT` file) and legacy output formats
- Redirects all logging to stderr to avoid polluting function returns
- Color-coded console output (blue=info, green=success, yellow=warning, red=error)

### Technical Details

#### Requirements
- Git 2.0+ with full history (`fetch-depth: 0` for GitHub Actions)
- Bash 4.0+
- Write permissions to target repository
- Optional: GitHub token for HTTPS authentication

#### Performance
- Efficient change detection (only analyzes relevant commits)
- Minimal network operations (fetch only when needed)
- Fast subtree split operation
- Cleanup of temporary resources

#### Security
- Token injection via environment variables or parameters
- No token logging or exposure in output
- Safe parameter expansion with proper quoting
- No arbitrary command execution vulnerabilities

### Repository Structure
```
.
├── .github/
│   └── workflows/
│       └── test.yml           # CI/CD pipeline
├── scripts/
│   ├── lib/
│   │   ├── detect-changes.sh  # Change detection library
│   │   └── logging.sh         # Logging library
│   └── push.sh                # Main CLI script
├── tests/
│   ├── integration/
│   │   └── test-repository.bats
│   ├── unit/
│   │   ├── detect-changes.bats
│   │   ├── git-operations.bats
│   │   ├── parse-functions.bats
│   │   └── test_helper.bash
│   └── run-tests.sh           # Test runner
├── action.yml                 # GitHub Action definition
├── CHANGELOG.md               # Version history
├── CLAUDE.md                  # Developer documentation
├── README.md                  # User documentation
└── .gitignore                 # Git ignore rules
```

### Exit Codes
- `0` - Success (pushed or skipped due to no changes)
- `1` - Failure (validation error, git error, or push failure)

### Compatibility
- Tested on Linux, macOS, and Windows (Git Bash)
- Compatible with GitHub Actions, GitLab CI, and standalone usage
- Works with GitHub, GitLab, Bitbucket, and self-hosted git servers
