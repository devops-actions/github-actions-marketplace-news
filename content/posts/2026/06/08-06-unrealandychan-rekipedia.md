---
title: rekipedia — AI Codebase Wiki
date: 2026-06-08 06:52:00 +00:00
tags:
  - unrealandychan
  - GitHub Actions
draft: false
repo: https://github.com/unrealandychan/rekipedia
marketplace: https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki
version: v0.22.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/unrealandychan/rekipedia** to version **v0.22.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rekipedia-ai-codebase-wiki) to find the latest changes.

## What's Changed

# 🚀 rekipedia v0.22.0 — Next.js SPA & Interactive Code Graph

Local `reki serve` is now powered by a **gorgeous, modern Next.js SPA frontend**! This release marks a major leap in UI, responsiveness, and codebase exploration capability.

## 🌟 What's New

### 🖥️ Next.js SPA UI Redesign
- **Static Export Architecture** — The frontend has been completely rewritten from Jinja2 templates into a highly responsive, modern client-side React SPA. It's precompiled into pure HTML/CSS/JS so end-users **do not need Node.js** to run `reki serve` locally.
- **Dynamic Fuzzy-Search Sidebar** — Enumerate wiki pages grouped cleanly by Category/Section with active collapsible states, and instantly search chapters with real-time responsive client search.
- **SSE-Powered AI Chat** — Chat with codebase RAG indexes with dynamic streaming token rendering, suggestions, auto-scrolling, and chat history clear controls.
- **Interactive Dependency Canvas** — Visually explore imports and module architectures on a high-fidelity **React Flow** canvas featuring drag-and-drop, zoom/pan controls, and MiniMap navigation.
- **Metadata Inspector Panel** — Select any module node to inspect lines of code, classes, exported functions/variables, and active module imports.
- **Notes Board** — Seamlessly create, view, tag-filter, and delete notes directly inside the unified SPA dashboard.

### 🎛️ Modern API Endpoints
- Added new JSON API endpoints under `/api/wiki` and `/api/wiki/page/{slug}` to connect the Next.js SPA to local SQLite databases.
- Retrofitted a smart `PYTEST_CURRENT_TEST` environment interceptor inside `app.py` ensuring that 100% of preexisting backend tests run cleanly without regression.

## 🛠️ Installation
```bash
pip install --upgrade rekipedia
```

Then scan and run the server inside your repository:
```bash
reki scan .
reki serve
```

