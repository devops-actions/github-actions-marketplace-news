---
title: Repodex SARIF Solver
date: 2023-09-08 11:01:24 +00:00
tags:
  - Repodex-Organization
  - GitHub Actions
draft: false
repo: Repodex-Organization/repodex-sarif-solver
marketplace: https://github.com/marketplace/actions/repodex-sarif-solver
version: V1.01
dependentsNumber: '?'
---


Version updated for **Repodex-Organization/repodex-sarif-solver** to version **V1.01**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/repodex-sarif-solver) to find the latest changes.

## Release notes

## 🚀 Release Notes for Repodex-Sarif-Solver

### 🛡️ CodeQL Security Scan & Auto-Fix Integration

With this release, our repository now boasts an automated security scanning mechanism using CodeQL. But that's not all! After identifying vulnerabilities, the system communicates with Repodex to fetch potential solutions. 

### 🌟 Features

1. **Automated Security Scanning with CodeQL**
   - Scans the codebase for potential vulnerabilities.
   - Ensures that our code adheres to the best security practices.

2. **Integration with Repodex**
   - After scanning, the system sends identified vulnerabilities to Repodex.
   - Repodex processes the vulnerabilities and returns potential fixes.

3. **Automated Pull Requests**
   - Once solutions are fetched from Repodex, an automated pull request is created.
   - This PR contains the suggested fixes, streamlining the process of securing our codebase.

### 📋 How to Use

1. **Triggering the Scan**
   - As configured by your `workflow.yaml`
   - - see example below that triggers on push to main branch

2. **Reviewing Solutions**
   - After the scan, check the automated pull request.
   - Review the suggested fixes from Repodex.
   - Merge the PR if the solutions are satisfactory.

### 🙏 Acknowledgements

We'd like to thank the teams behind CodeQL and Repodex for their fantastic tools, making automated security checks and fixes a reality.

Example `workflow.yaml`:
```
name: "CodeQL with Repodex SARIF Solver"

on:
  push:
    branches: [ "main" ]
  schedule:
    - cron: '30 23 * * 4'

jobs:
  analyze:
    name: Analyze
    runs-on: ${{ (matrix.language == 'swift' && 'macos-latest') || 'ubuntu-latest' }}
    timeout-minutes: ${{ (matrix.language == 'swift' && 120) || 360 }}
    permissions:
      actions: read
      contents: read
      security-events: write

    strategy:
      fail-fast: false
      matrix:
        language: [ 'python' ]

    steps:
    - name: Check Commit Type
      id: check_commit
      run: |
        if [[ "${{ github.event.head_commit.message }}" == *"[AUTO]"* ]]; then
          echo "::set-output name=skip::true"
        else
          echo "::set-output name=skip::false"
        fi
    - name: Checkout repository
      if: steps.check_commit.outputs.skip == 'false'
      uses: actions/checkout@v3

    # Caching step
    - name: Cache SARIF output
      if: steps.check_commit.outputs.skip == 'false'
      id: cache-sarif
      uses: actions/cache@v2
      with:
        path: ./.github/codeql-analysis/*.sarif
        key: ${{ runner.os }}-sarif-${{ github.sha }}

    - name: Initialize CodeQL
      if: steps.check_commit.outputs.skip == 'false'
      uses: github/codeql-action/init@v2
      with:
        languages: ${{ matrix.language }}

    - name: Autobuild
      if: steps.check_commit.outputs.skip == 'false'
      uses: github/codeql-action/autobuild@v2

    # Conditional CodeQL Analysis step based on the cache
    - name: Perform CodeQL Analysis
      if: steps.cache-sarif.outputs.cache-hit != 'true'
      uses: github/codeql-action/analyze@v2
      with:
        category: "/language:${{matrix.language}}"
        output: "./.github/codeql-analysis"

    - name: List files in .github/codeql-analysis/
      if: steps.check_commit.outputs.skip == 'false'
      run: ls -la .github/codeql-analysis/

    - name: Repodex SARIF Solver
      if: steps.check_commit.outputs.skip == 'false'
      uses: Repodex-Organization/repodex-sarif-solver@main
      with:
        api-key: ${{ secrets.REPODEX_API_KEY }}
        github-token: ${{ secrets.MY_PERSONAL_ACCESS_TOKEN }}
```
