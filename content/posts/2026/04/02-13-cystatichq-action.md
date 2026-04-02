---
title: Cystatic PR Analyzer
date: 2026-04-02 13:59:32 +00:00
tags:
  - cystatichq
  - GitHub Actions
draft: false
repo: https://github.com/cystatichq/action
marketplace: https://github.com/marketplace/actions/cystatic-pr-analyzer
version: v0.1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/cystatichq/action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cystatic-pr-analyzer) to find the latest changes.

## Action Summary

The README content you provided appears incomplete or missing key details about the GitHub Action. If you can share the complete content or provide more information, I can help craft a concise and accurate summary of its purpose, functionality, and key capabilities.

## What's Changed

## 🚀 v0.1.0 – Cystatic PR Analyzer

Initial release of the Cystatic GitHub Action for analyzing pull request changes via an external API.

---

### ✨ Overview

Cystatic PR Analyzer captures pull request diffs and forwards them to the Cystatic API for analysis.

Designed as a lightweight integration layer between GitHub workflows and Cystatic’s backend intelligence.

---

### ✅ Features

* Extracts pull request metadata and diff from GitHub events
* Sends complete PR diff to Cystatic API (`/v1/analyze-pr`)
* Minimal, stateless execution (no local processing or transformation)
* Docker-based action for consistent runtime

---

### 🔧 Inputs

* `github_token` — GitHub token used for API access
* `cystatic_api_key` — API key for authenticating with Cystatic backend

---

### ⚙️ How It Works

1. Triggered on pull request events
2. Fetches PR diff using GitHub API
3. Sends diff and metadata to Cystatic API
4. Delegates all analysis to backend service

---

### ⚠️ Limitations

* No inline PR comments or feedback yet
* No retry or failure handling
* Relies entirely on external API availability
* No filtering or preprocessing of diffs

---

### 🧪 Intended Use

* Early-stage testing with design partners
* Validating PR analysis workflows
* Backend iteration and feedback collection

Not recommended for production use.

---

### 🔄 What’s Next

* Add PR comment integration
* Improve error handling and observability
* Optimize diff processing (size, filtering)
* Introduce configurable behavior

---

### 🔐 Security

* Uses GitHub-provided token for authenticated API access
* Requires Cystatic API key for backend communication
* No data persisted within the action

---

### 💬 Feedback

Looking for feedback on:

* Integration friction
* API reliability
* Signal quality of analysis (via backend)

---

