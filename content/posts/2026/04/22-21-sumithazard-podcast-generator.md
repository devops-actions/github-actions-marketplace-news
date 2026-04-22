---
title: Podcast-Generator-sumithazard
date: 2026-04-22 21:24:33 +00:00
tags:
  - sumithazard
  - GitHub Actions
draft: false
repo: https://github.com/sumithazard/podcast-generator
marketplace: https://github.com/marketplace/actions/podcast-generator-sumithazard
version: v1.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sumithazard/podcast-generator** to version **v1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/podcast-generator-sumithazard) to find the latest changes.

## Action Summary

The **Podcast Generator GitHub Action** automates the creation and publishing of Spotify-compliant podcast RSS feeds from a simple YAML configuration. It streamlines the podcast publishing process by generating valid `podcast.xml` feeds, ensuring compliance with major podcast platforms, and enabling easy hosting via GitHub Pages or other static hosts. This action is ideal for developers and content creators seeking a lightweight, automated workflow for managing podcast feeds directly within GitHub.

## What's Changed

# 📢 Release Notes – Podcast Generator v1.0.0

Initial release of the **Podcast Generator** GitHub Action.  
This action automates the creation and publishing of a Spotify‑compliant podcast RSS feed directly from your GitHub repository.

---

## ✨ Features
- Generate `podcast.xml` feed from a simple `feed.yaml` configuration
- Automatically add required tags:
  - `<guid>` for each episode
  - `<itunes:owner>` with name and email
- Support for episode metadata:
  - Title, description, publish date, duration, file path, length
- Lightweight Dockerized workflow using Python + PyYAML
- GitHub Pages integration for hosting the feed
- Clean, optimized Dockerfile for faster builds

---

## 🛠️ Fixes & Improvements
- Added missing dependencies (`build-essential`, `libyaml-dev`) to support PyYAML installation
- Optimized image size by cleaning apt cache
- Ensured `entrypoint.sh` is executable by default
- Improved error handling during GitHub Actions workflow runs

---

## 📖 Documentation
- Added `README.md` with setup instructions and usage examples
- Provided sample `feed.yaml` configuration
- Included workflow example for easy integration

---

## 🚀 Next Steps / Roadmap
- Add automated feed validation step in CI/CD pipeline
- Support multiple podcast feeds per repository
- Optional analytics and distribution integrations

---

## 📜 Version
**v1.0.0** – Stable release for GitHub Marketplace
