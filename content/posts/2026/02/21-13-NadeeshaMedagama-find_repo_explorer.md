---
title: FindRepo — GitHub Repository Explorer
date: 2026-02-21 13:32:07 +00:00
tags:
  - NadeeshaMedagama
  - GitHub Actions
draft: false
repo: https://github.com/NadeeshaMedagama/find_repo_explorer
marketplace: https://github.com/marketplace/actions/findrepo-github-repository-explorer
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/NadeeshaMedagama/find_repo_explorer** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/findrepo-github-repository-explorer) to find the latest changes.

## Action Summary

FindRepo is a client-side web application that enables users to explore and filter repositories within any GitHub organization using the GitHub REST API. It automates the process of searching, sorting, and retrieving detailed repository information, allowing users to securely authenticate with GitHub and efficiently browse repositories based on keywords, types, or metadata. The application provides a responsive, modern interface with rich visual features, offering capabilities like filtering, sorting, pagination, and detailed repository insights without requiring server-side dependencies.

## Release notes

## 🔍 FindRepo v1.0.2

**GitHub Repository Explorer** — Search, explore, and discover repositories within any GitHub organization.

### 📦 What's Included

| File | Description |
|------|-------------|
| `index.html` | Main application page |
| `style.css` | Complete dark-themed styling |
| `app.js` | Application logic & GitHub API integration |

### 🐳 Docker

```bash
# Pull from Docker Hub
docker pull NadeeshaMedagama/findrepo:1.0.2

# Pull from GitHub Packages
docker pull ghcr.io/NadeeshaMedagama/find_repo_explorer/findrepo:1.0.2

# Run locally
docker run -d -p 8080:80 NadeeshaMedagama/findrepo:1.0.2
```

### 🌐 Quick Start (No Docker)

```bash
# Download the release assets and open in browser
open index.html

# Or use any local server
python3 -m http.server 8000
npx serve .
```

### 🔒 Security
- Your GitHub token is never stored or persisted
- All API calls go directly to `api.github.com`
- No analytics, tracking, or third-party scripts


## What's Changed
* ci(deps): bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/5
* ci(deps): bump actions/github-script from 7 to 8 by @dependabot[bot] in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/3
* ci(deps): bump github/codeql-action from 3 to 4 by @dependabot[bot] in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/2
* docker(deps): bump nginx from 1.27-alpine to 1.29-alpine by @dependabot[bot] in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/1
* ci(deps): bump actions/setup-node from 4 to 6 by @dependabot[bot] in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/4

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/NadeeshaMedagama/find_repo_explorer/pull/5

**Full Changelog**: https://github.com/NadeeshaMedagama/find_repo_explorer/compare/v0.0.1...v1.0.2
